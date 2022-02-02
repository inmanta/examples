# Juniper Module

The provided examples in the `*.cf` files can be applied on a `Juniper JunOS MX` router using [containerlab](https://containerlab.srlinux.dev/) with the provided [topology file](containerlab/topology.yml) and the `startup config` files for [juniper-router-a](containerlab/startup_juniper_router_a.xr) and [juniper-router-b](containerlab/startup_juniper_router_b.xr). It is needless to mention that you need to have a `Juniper JunOS MX` container image present on the host machine running `containerlab` and having it tagged similar to the topology file; in this case: `vrnetlab/vr-vmx:18.3R1.9`.

Inmanta [Service Orchestrator](https://inmanta.com/service-orchestrator/) is another containerized piece that can supply a GUI, providing many useful information such as deployment process, agents status and so much more. This container is not a necessity to try out these examples but it is nice to have. We can provide access to it if you contact us.

In order to deploy the provided topology file with `containerlab` go to the `containerlab` directory where the topology file is present and:

Verify that the required `Docker` images are present:

```sh
docker images
```

The output should be similar to:

```sh
ubuntu@lab~$ sudo docker images
REPOSITORY                                                    TAG        IMAGE ID       CREATED        SIZE
inmanta.com/vr-vmx                                            18.3R1.9   91e0035e6f3b   7 months ago   4.75GB
vrnetlab/vr-vmx                                               18.3R1.9   91e0035e6f3b   7 months ago   4.75GB
inmanta                                                       dev        7e787600e8b1   2 weeks ago    881MB
postgres                                                      13        7e787600e8a1   2 weeks ago    205MB
```

> Note: `inmanta`  and `postgres` Docker images are optional and only required if you want to use the `Service Orchestrator`. The license files should be placed under `inmanta/server` directory.

Deploy the topology:

```sh
sudo clab deploy -t topology.yml
```

After the successful deployment, from the machine running the `containerlab` you can SSH to each router using the default credentials `admin:admin@123`:

```sh
ssh admin@clab-CBCI-juniper-router-a
ssh admin@clab-CBCI-juniper-router-b
```

> Please make sure to copy and paste the provided `startup config` files onto your respective routers before using the examples. For more information, check [this guide](https://kb.juniper.net/InfoCenter/index?page=content&id=KB10817).

View the current state:

```sh
sudo clab inspect -t topology.yml
```

Delete the deployed LAB:

```sh
sudo clab destroy -t topology.yml
```
