# Juniper Module

The provided examples in the `*.cf` files can be applied on a router using [containerlab](https://containerlab.srlinux.dev/) using the provided [topology file](containerlab/topology.yml). It is needless to say that you need to have `Cisco XR`, `Nokia SROS` and `Juniper MX` container images present on the host machine running `containerlab` and having them tagged similar to the topology file.

In order to deploy the provided topology file with `containerlab` run:

```sh
sudo clab deploy -t topology.yml
```

View the current state:

```sh
sudo clab inspect -t topology.yml
```

Delete the deployed LAB:

```sh
sudo clab destroy -t topology.yml
```
