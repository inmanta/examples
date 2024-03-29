# Examples

This repo contains example models for the [Inmanta Service Orchestrator](https://inmanta.com/resources/docs/)


## Networking examples

Self contained examples for managing various types of network equipment:

| Vendor | Folder | License required? | Containerlab File |
|--------|--------|--------------------|-------------------|
| [SR Linux](https://www.nokia.com/networks/data-center/service-router-linux-NOS/) | [Networking/SR Linux](Networking/SR%20Linux/README.md) | No | [Yes](Networking/SR%20Linux/containerlab/topology.yml) |
| [Vyos](https://vyos.io/) | [Networking/Vyos](Networking/Vyos/README.md) | No | [Yes](Networking/Vyos/containerlab/topology.yml) |
| Nokia SR | [Networking/Nokia](Networking/Nokia/README.md) | Yes | [Yes](Networking/Nokia/containerlab/topology.yml)|
| Juniper JunOS MX | [Networking/Juniper](Networking/Juniper/README.md) | Yes | [Yes](Networking/Juniper/containerlab/topology.yml)|
| Cisco IOS-XR | [Networking/Cisco](Networking/Cisco/README.md) | Yes | [Yes](Networking/Cisco/containerlab/topology.yml)|



## Training lab

The training lab is a sandbox to learn the Inmanta modeling language.

In this repo, we provide a lab environment based on SRLinux in which you can easily deploy config manually and with the orchestrator.

[For more information continue here.](Training/README.md)


## LSM related examples

LSM means `Lifecycle and Service Management`, which is not part of the opensource orchestrator.

To learn LSM, the first thing to look at is the documentation: [here](https://docs.inmanta.com/inmanta-service-orchestrator/4/moduleguides/lsm/index.html#). For LSM with allocation: [here](https://docs.inmanta.com/inmanta-service-orchestrator/4/moduleguides/lsm/allocation/allocation.html)

This repo has the following additional examples.

1. [Network configuration examples](Networking/README.md): Collection of examples on how to configure different services on vendor devices
2. [lsm-external-allocation](lsm-external-allocation/README.md): example on how to allocate and de-allocate attributes from an external inventory
3. [lsm-from-inventory-a](lsm-from-inventory-a/README.md): example on how to load all attributes of a service from an external inventory
4. [lsm-from-inventory-b](lsm-from-inventory-b/README.md): another example on how to load all attributes of a service from an external inventory
5. [lsm-partial-allocation](lsm-partial-allocation/README.md): shows a use case of the AllocatorWrapper from the lsm module.  This example is relevant for services which need multiple allocations that might fail, and the service needs to know the succeeded allocated values for the de-allocation.  Without the AllocatorWrapper, the successfully allocated values would be lost if a failure in an upcoming allocation on the same service is raised.

### LSM, external inventory, which example is suitable for which inventory?

If you want to fetch the entire service definition from the inventory take a look at [external-allocation](external-allocation/README.md).

If proper de-allocation is important and you use an external inventory, there are some additional things to keep in mind:

* de-allocation when the service is decommissioned
* de-allocation after a failed allocation (we already allocated some attributes, but not all of them)
* resume allocation after a hard failure (e.g. the machine with the orchestrator on it died while allocation was ongoing)

How to handle these depends on the inventory

|                                                                                                   | de-allocation on decommissioning | de-allocation on failed allocation | hard failure                       | example                                                                                                                                             |
| ------------------------------------------------------------------------------------------------- | -------------------------------- | ---------------------------------- | ---------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- |
| the inventory is transactional (i.e. we either allocate everything or nothing)                    |                                  | not required                       | not required                       |                                                                                                                                                     |
| the inventory allows us to put an ID or tag on what we allocate (so we can find 'our' stuff back) | on service ID                    | on service ID                      | on service ID                      | [example](https://docs.inmanta.com/inmanta-service-orchestrator/4/moduleguides/lsm/allocation/allocation.html#external-inventory-with-deallocation) |
| we can de-allocate based on the value we allocated                                                | on allocated value               | on allocated value                 | (can leak in case of hard failure) | [example](external-allocation/README.md)                                                                                                            |
| we can only de-allocate using an ID generated by the inventory during allocation                  | on inventory ID                  | on inventory ID                    | (can leak in case of hard failure) | [example](external-allocation/README.md)                                                                                                            |
