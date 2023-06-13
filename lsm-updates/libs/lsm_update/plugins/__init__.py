"""
    :copyright: 2023 Inmanta
    :contact: code@inmanta.com
    :license: Inmanta EULA
"""
from inmanta.plugins import plugin, Context
from itertools import chain
import os
from inmanta_lsm import const as lsm_const
import inmanta_lsm.model
import logging
import json

LOGGER = logging.getLogger(__file__)

def _validating_entity(entity_id: "string") -> "bool":
    """Returns True if the provided entity is being validated"""
    instance_id = os.environ.get(lsm_const.ENV_INSTANCE_ID, None)
    model_state = os.environ.get(lsm_const.ENV_MODEL_STATE, inmanta_lsm.model.ModelState.active)

    return entity_id == instance_id and model_state == inmanta_lsm.model.ModelState.candidate

class NoUpdateException(Exception):
    """
    Raised when there is no update detected for attributes.
    """

def _diff_attributes_based_on_assignment_state(
    assignment: "dict",
    diff_func,
):
    """
    Calls a diff_func on the proper set of attributes:
        - the first argument is always the 'previous' attributes
        during the update
        - the second argument is always the 'new' attributes during
        the update

    !! This is highly dependant on the lifecycle !!
    """
    id = assignment["id"]
    state = assignment["state"]

    active_attributes = assignment.get("active_attributes", None)
    candidate_attributes = assignment.get("candidate_attributes", None)
    rollback_attributes = assignment.get("rollback_attributes", None)

    if state in ["update_start", "update_start_failed"] and _validating_entity(id):
        # we are staging an update, original_attributes are still active, new_attributes are in candidate
        return diff_func(active_attributes, candidate_attributes)

    if state == "update_inprogress":
        # we are updating, original_attributes are in rollback, new_attributes are active
        return diff_func(rollback_attributes, active_attributes)

    if state ==  "rollback":
        # we are rolling back, original_attributes are in candidate, new_attributes are active
        # includes rollback_[12] and rollback_deallocating and rollback_deallocating_failed
        return diff_func(candidate_attributes, active_attributes)

    # !! Update deallocating* is not considered an updating state as it is AFTER the update

    # No update or rollback ongoing, we don't have an active difference
    raise NoUpdateException()


@plugin
def previous_lsm_attributes(
    context: Context,
    assignment: "dict",
    attributes: "string[]",
) -> "dict":
    """
    Return 'previous' attributes when applying the update if any
    of the attributes changed.
    """
    try:
        return _diff_attributes_based_on_assignment_state(
            assignment, _previous_attributes(attributes)
        )
    except NoUpdateException:
        return {}


def _previous_attributes(attributes):
    """
    Wrapper that parametrizes the inner function with the
    attribute list.
    """

    def _previous_attributes_in_case_of_change(
        original_attributes: "dict", new_attributes: "dict"
    ) -> "dict":
        """
        Indicates which attributes where changed from the list, and returns
        old attributes in case of some of them were changed.
        """
        old_attributes = {}
        there_were_changes = False
        for attribute in attributes:
            original = (
                original_attributes.get(attribute, None)
                if original_attributes is not None
                else None
            )
            new = (
                new_attributes.get(attribute, None)
                if new_attributes is not None
                else None
            )
            old_attributes[attribute] = original
            if original != new:
                there_were_changes = True
            
        if there_were_changes:
            LOGGER.info(f"Updated attributes:\n{old_attributes}")
            return old_attributes
        raise NoUpdateException()

    return _previous_attributes_in_case_of_change


@plugin
def embedded_entities_paired(
    parent_assignment: "dict", relation_name: "string", key: "string"
) -> "list":
    """
    For each embedded entity, reachable via the relation `relation_name` and identified by the `key` attribute

    return the current attributes and the old attribute if different. 
    either old or current can be null
    """
    def map_by_key(attributes):
        embedded_attributes = attributes[relation_name]
        return (
            {attr[key]: attr for attr in embedded_attributes}
            if embedded_attributes is not None
            else {}
        )

    try:
        old, new = _diff_attributes_based_on_assignment_state(
            parent_assignment,
            lambda x,y:(x,y)
        )
        old_by_key = map_by_key(old)
        new_by_key = map_by_key(new)

        all_embedded_entity_keys = set(
            chain(
                new_by_key.keys(),
                old_by_key.keys(),
            )
        )

        def process_item(key, old, new):
            if old == new:
                LOGGER.info("Item %s in %s not updated", key, parent_assignment["id"])
                return {"old":None, "new":new} # no update, old state is not relevant
            LOGGER.info("Item %s in %s updated from %s to %s", key, parent_assignment["id"], str(old), str(new))
            return {"old":old, "new":new}

        return [process_item(entity, old_by_key.get(entity, None), new_by_key.get(entity, None)) for entity in all_embedded_entity_keys]
        
    except NoUpdateException:
        LOGGER.info("No update in %s", parent_assignment["id"])
        # no update, use active value
        return [{"old":None, "new":v} for v in parent_assignment["attributes"][relation_name]]