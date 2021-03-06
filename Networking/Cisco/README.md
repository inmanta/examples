# Cisco Module

The provided examples in the `*.cf` files can be applied on `Cisco IOS-XR` devices either on:

* On a router that you already have and by changing the IP address, port, etc... in the examples
* Using [containerlab](https://containerlab.srlinux.dev/) with the provided [topology file](containerlab/topology.yml) and the `startup config` files for [cisco-router-a](containerlab/startup_cisco_router_a.xr) and [cisco-router-b](containerlab/startup_cisco_router_b.xr).

In case of choosing the `containerlab` option, it is worthwhile to mention that you need to have a `Cisco IOS-XR` image or Docker image present on the host machine running `containerlab` and having it **tagged** similar to the topology file; in this case: `containerlab/vr-xrv:6.3.1`. In order to convert your image to a Docker image, please check [this guide](https://containerlab.srlinux.dev/manual/vrnetlab/).

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
code.inmanta.com:/vr-xrv                                      6.3.1      985d8e15cd0a   4 months ago   911MB
containerlab/vr-xrv                                           6.3.1      985d8e15cd0a   4 months ago   911MB
inmanta                                                       dev        7e787600e8b1   2 weeks ago    881MB
postgres                                                      13        7e787600e8a1   2 weeks ago    205MB
```

If you do not see an output as depicted, it means you do not have those docker images present and need to acquire them from the vendor.

> Note: `inmanta`  and `postgres` Docker images are optional and only required if you want to use the `Service Orchestrator`. The license files should be placed under `inmanta/server` directory.

Deploy the topology:

```sh
sudo clab deploy -t topology.yml
```

After the successful deployment, from the machine running the `containerlab` you can SSH to each router using the default credentials `admin:admin`:

```sh
ssh admin@clab-CBCI-cisco-router-a
ssh admin@clab-CBCI-cisco-router-b
```

> Please make sure to copy and paste the provided `startup config` files onto your respective routers before using the examples.

View the current state:

```sh
sudo clab inspect -t topology.yml
```

Delete the deployed LAB:

```sh
sudo clab destroy -t topology.yml
```
