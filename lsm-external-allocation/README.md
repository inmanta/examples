# External allocation

This simple project illustrates a specific usage of allocation with two important characteristics:
 1. The allocation comes from an external source, just like an inventory.
 2. The de-allocation has to be done by providing a key that we received during the allocation.

In order to handle the de-allocation, we need to save the key we receive during the allocation somewhere.  We will store it in another attribute of the service using the allocation.  This way, when doing the de-allocation, we can simply use the value from the attributes of the service.

This project contains a single module: `test_module`.  This module contains:
  - One service, `VlanService` which needs allocation to populate two of its attributes, `north_vlan_id` and `south_vlan_id`.
    ```
    entity VlanService extends lsm::ServiceEntity:
        string name

        int? north_vlan_id = null
        std::uuid? north_vlan_allocation_key = null

        int? south_vlan_id = null
        std::uuid? south_vlan_allocation_key = null
    end
    ```
    Each of those attributes also have an `allocation_key` attribute related to it, which will contain the previously mentioned allocation key.
  - One resource, `VlanDeallocation` which we will only instantiate whenever we are deleting a service, during the `deallocating` state of the service.  This entity will always we instantiated with its `purged` attribute set to true, meaning that we will only need to implement the `read` and `delete` operation of its handler.
    ```
    entity VlanDeallocation extends std::PurgeableResource:
        std::uuid allocation_key
    end
    ```
    We only care about one attribute in this resource: `allocation_key`.  This is where we pass the key holding the allocated vlan we which to cleanup.
  - A mock of an external vlan inventory, `VlanPool` (python class), which will allow us to reserve and free vlans easily.  This is used by the allocator **and** the resource handler.
  - A vlan allocator, `ExternalVlanAllocator` (python class), which will handle the allocation of vlans.  It takes two parameters in its constructor: the name of the attribute where to store the vlan, and the name of the attribute where to store the allocation key.
  - A resource handler, `VlanDeallocation` (python class), which will handles the deallocation.

:warning: Both the allocator and the handler needs to access the same vlan pool, as this pool is simply saved in a file, the resource agent needs to run on the same machine as the allocation.  This is why we use the internal agent for this resource.  The path to the file containing the vlan pool has to be specified via an environment variable: `VLAN_POOL_FILE`.  This file must already exist, and should preferably contain a range, conforming to the following format:
```json
{
    "range": {
        "from": 100,
        "to": 200
    }
}
```
If no range is supplied, the range defaults to `[0: 0[`.  No vlan can then be allocated.
