# From Inventory

This simple project illustrates how to model a service where all attributes are loaded from the inventory.

This API for this services has only one attribute, that contains a reference to the inventory.
The actual attributes are all loaded from the inventory during the allocation phase.

This model offers an API where all the attributes loaded from the inventory are in a single dictionary.
For the same service, but with improved typing, look at from_inventory_b.

This model doesn't actually deploy anything and can be easily deployed on any LSM enabled orchestrator.
