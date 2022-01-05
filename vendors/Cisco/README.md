# Cisco Module

The provided examples in the `*.cf` files can be applied on a Cisco IOS-XR router using [containerlab](https://containerlab.srlinux.dev/) with the provided [topology file](containerlab/topology.yml) and the `startup config` files for [cisco-router-a](containerlab/startup_cisco_router_a.xr) and [cisco-router-b](containerlab/startup_cisco_router_b.xr). It is needless to mention that you need to have a `Cisco IOS-XR` container image present on the host machine running `containerlab` and having it tagged similar to the topology file; in this case: `containerlab/vr-xrv:6.3.1`.

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

> Please make sure to copy and paste the `startup config` files onto your respective Cisco routers before using the examples.
