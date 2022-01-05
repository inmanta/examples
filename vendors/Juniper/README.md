# Juniper Module

The provided examples in the `*.cf` files can be applied on a `Juniper JunOS MX` router using [containerlab](https://containerlab.srlinux.dev/) with the provided [topology file](containerlab/topology.yml) and the `startup config` files for [juniper-router-a](containerlab/startup_juniper_router_a.xr) and [juniper-router-b](containerlab/startup_juniper_router_b.xr). It is needless to mention that you need to have a `Juniper JunOS MX` container image present on the host machine running `containerlab` and having it tagged similar to the topology file; in this case: `vrnetlab/vr-vmx:18.3R1.9`.

In order to deploy the provided topology file with `containerlab` go to the `containerlab` directory where the topology file is present and run:

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

> Please make sure to copy and paste the `startup config` files onto your respective Juniper routers before using the examples.
