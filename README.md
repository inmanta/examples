# examples
Example modelling code


# LSM related examples

LSM means `Lifecycle and Service Management`, which is not part of the opensource orchestrator.

To learn LSM, the first thing to look at is the documentation: [here](https://docs.inmanta.com/inmanta-service-orchestrator/4/moduleguides/lsm/index.html#). For LSM with allocation: [here](https://docs.inmanta.com/inmanta-service-orchestrator/4/moduleguides/lsm/allocation/allocation.html)

This repo has the following additional examples.

1. [lsm-external-allocation](lsm-external-allocation/README.md): example on how to allocate and de-allocate attributes from an external inventory
2. [lsm-from-inventory-a](lsm-from-inventory-a/README.md): example on how to load all attributes of a service from an external inventory
3. [lsm-from-inventory-b](lsm-from-inventory-b/README.md): another example on how to load all attributes of a service from an external inventory

## LSM, external inventory, which example is suitable for which inventory?


If you want to fetch the entire service definition from the inventory take a look at [external-allocation](external-allocation/README.md).


If proper de-allocation is important and you use an external inventory, there are some additional things to keep in mind:
* de-allocation when the service is decommissioned
* de-allocation after a failed allocation (we already allocated some attributes, but not all of them)
* resume allocation after a hard failure (e.g. the machine with the orchestrator on it died while allocation was ongoing)

How to handle these depends on the inventory

|  | de-allocation on decommissioning | de-allocation on failed allocation | hard failure | example |
|-|-|-|-|-|
| the inventory is transactional (i.e. we either allocate everything or nothing) |  | not required | not required |   |
| the inventory allows us to put an ID or tag on what we allocate (so we can find 'our' stuff back) | on service ID | on service ID | on service ID | [example](https://docs.inmanta.com/inmanta-service-orchestrator/4/moduleguides/lsm/allocation/allocation.html#external-inventory-with-deallocation)  |
| we can de-allocate based on the value we allocated | on allocated value | on allocated value | (can leak in case of hard failure) | [example](external-allocation/README.md) |
| we can only de-allocate using an ID generated by the inventory during allocation | on inventory ID | on inventory ID | (can leak in case of hard failure) |  [example](external-allocation/README.md) |
