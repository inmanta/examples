"""
:copyright: 2024 Inmanta
:contact: code@inmanta.com
:license: Inmanta EULA
"""

import inmanta_plugins.lsm.allocation_helpers  # type: ignore

import inmanta.plugins


# For more details about allocation v3, refer to the documentation
# https://docs.inmanta.com/inmanta-service-orchestrator/latest/lsm/allocation/allocation_v3.html#allocation-v3
@inmanta_plugins.lsm.allocation_helpers.allocator()
def resolve_customer_info(
    service: "lsm::ServiceEntity",  # type: ignore
    attribute_path: "string",  # type: ignore
    *,
    customer_reference: "string",  # type: ignore
) -> "dict":
    """
    Resolve the customer information.  This information would typically
    be fetched from an inventory, which we don't have here.  So we just
    pretend we got additional information and always return the same dict.

    :param customer_reference: The reference we can use to fetch the
        customer information.
    """
    return {
        "ref": customer_reference,
        "address": "somewhere",
        "contact": "someone",
    }


@inmanta.plugins.plugin()
def removed_items(service_instance: "dict") -> "dict[]":  # type: ignore
    """
    Get all the removed items.  The removed items are items which used to be part
    of the desired state of our service, but were dropped during an update.
    If we are in such updating state, we check if any item was dropped this way
    and returned the list of all such items.

    :param service_instance: The service instance dict, as returned by the lsm::all
        plugin.
    """
    # Get the current state for our instance
    current_state = service_instance["state"]
    if current_state not in ["update_start", "update_rejected", "update_inprogress"]:
        # We will only have "disappearing" items from our service when
        # we are doing an update
        return []

    # The previous attributes dict depends on the state we are in
    previous_attributes = (
        service_instance["rollback_attributes"]
        if current_state == "update_inprogress"
        else service_instance["active_attributes"]
    )

    # Get the names of all the items currently in the service attributes
    current_items_names = {
        item["name"] for item in service_instance["attributes"]["items"]
    }

    # For all items in the previous attributes, if we can't find them
    # in the current attributes, they are removed
    return [
        item
        for item in previous_attributes["items"]
        if item["name"] not in current_items_names
    ]
