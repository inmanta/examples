# VyOS Module

The provided examples in the `*.cf` files can be applied on `VyOS` devices either on:

* A router that you already have and by changing the IP address, port, etc... in the examples files
* Or using [containerlab](https://containerlab.srlinux.dev/) with the provided [topology file](containerlab/topology.yml) and the `startup config` files for [vyos1](containerlab/vyos1.cfg) and [vyos2](containerlab/vyos2.cfg).

In case of choosing the `containerlab` option, it is worthwhile to mention that you need to have a `VyOS` Docker image present on the host machine running `containerlab` and having it **tagged** similar to the topology file; in this case: `vyos/vyos:1.2.8`.

Inmanta [Service Orchestrator](https://inmanta.com/service-orchestrator/) is another containerized piece that can supply a GUI, providing many useful information such as deployment process, agents status and so much more. This container is not a necessity to try out these examples but it is nice to have. We can provide access to it if you contact us.

In order to deploy the provided topology file with `containerlab` go to the containerlab folder where the topology file is present and:

Verify that the required `Docker` images are present:

```sh
docker images
```

The output should be similar to:

```txt
vyos/vyos                         1.2.8     9efd07d6e230   5 months ago   606MB
```

If you do not have the container, pull the VyOS image from Docker Hub:

```bash
sudo docker pull vyos/image:1.2.8
```

> **Note:** You can use other versions, just replace `1.2.8` with the version you want and also update the [topology](containerlab/topology.yml) file to use your image name.

## Running The Container

Head to the `containerlab` folder and then run:

```bash
sudo clab deploy -t topology.yml
```

> **Note:** It will take a few minutes to fully bootup the containers depending on your system horsepower.

## Applying The First Time Configuration

Apply the first time configuration files inside the `containerlab` folder to VyOS containers by first connecting to the routers:

```bash
docker exec -it clab-vyosclab-vyos1 su vyos
```

Then enter the configuration mode by typing:

```bash
configure
```

Copy and paste the contents of the [vyos1](containerlab/vyos1.cfg) startup config file into its terminal.

Next, repeat the same steps for the second router by connecting to it:

```bash
docker exec -it clab-vyosclab-vyos2 su vyos
```

And then paste the [vyos2](containerlab/vyos2.cfg) startup config in it.

At this point you should be able to SSH to the VyOS containers with `vyos` as both the username and password:

```bash
ssh vyos@clab-vyosclab-vyos1
ssh vyos@clab-vyosclab-vyos2
```

The output should look something like this:

```txt
Welcome to VyOS
vyos@clab-vyosclab-vyos1's' password:

The programs included with the Debian GNU/Linux system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Debian GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
permitted by applicable law.
```

## Additional Containerlab Commands

View the current LAB state:

```sh
sudo clab inspect -t topology.yml
```

Delete the deployed LAB:

```sh
sudo clab destroy -t topology.yml
```