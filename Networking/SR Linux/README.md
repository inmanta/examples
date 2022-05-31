# SR Linux Module

The provided examples in the `*.cf` files can be applied on `SR Linux` devices either on:

* A device that you already have and by changing the IP address, port, etc... in the examples files
* Or using [containerlab](https://containerlab.srlinux.dev/) with the provided [topology file](containerlab/topology.yml).

In case of choosing the `containerlab` option, it is worthwhile to mention that you need to have a `SR Linux` Docker image present on the host machine running `containerlab` and having it **tagged** similar to the topology file; in this case: `ghcr.io/nokia/srlinux`.

The `SR Linux` docker image can be pulled using:

```bash
sudo docker pull ghcr.io/nokia/srlinux
```

Furthermore, if the `SR Linux` docker image is missing on your machine, it will be pulled by the `Containerlab` automatically.

## Using The Open-source Inmanta Service Orchestrator

Inmanta [Service Orchestrator](https://inmanta.com/service-orchestrator/) is another containerized piece that can supply a GUI, providing many useful information such as deployment process, agents status and so much more. This container is not a necessity to try out these examples but it is nice to have and it can be pulled by:

```bash
sudo docker pull ghcr.io/inmanta/orchestrator:dev
```

## Starting The Containers

In order to deploy the provided topology file with `containerlab` go to the containerlab folder where the topology file is present and run:

```bash
cd containerlab
sudo clab deploy -t topology.yml
```

This command will spin-up three `SR Linux` containers, an `Inmanta server` and a `PostgreSQL` container.

> **Note:** It will take a few seconds up to minutes to fully boot-up the containers depending on your system horsepower.

## Connecting to the Inmanta Container

Open up a browser and connect to the Inmanta container using this URL <http://172.30.0.3:8888>.

### Create a New Environment

After connecting to the Inmanta container, you can create a new environment by clicking on the `Create new environment` button. Then you need to copy the environment ID either:

* from the URL, e.g. `ec05d6d9-25a4-4141-a92f-38e24a12b721` from the `http://172.30.0.3:8888/console/desiredstate?env=ec05d6d9-25a4-4141-a92f-38e24a12b721`.
* or by clicking on the gear icon on the top right of the Web Console, then click on `Environment`, scroll down all the way to the bottom of the page and copy the environment ID.

> Additionally, you can prepare a [development environment](#applying-the-examples) and achieve the same goal through `inmanta-cli` by referring to the last section of [additional commands](#additional-commands)

## Connecting to the SR Linux Containers

You can connect to the containers in two ways:

1. Using Docker:

   ```bash
   docker exec -it clab-srlinux-spine sr_cli
   # or
   docker exec -it clab-srlinux-leaf1 sr_cli
   # or
   docker exec -it clab-srlinux-leaf2 sr_cli
   ```

2. Using SSH:

   ```bash
   ssh admin@clab-srlinux-spine
   ssh admin@clab-srlinux-leaf1
   ssh admin@clab-srlinux-leaf2
   ```

Then enter the configuration mode by typing:

```bash
enter candidate
```

The output should look something like this:

```txt
Welcome to the srlinux CLI.
Type 'help' (and press <ENTER>) if you need any help using this.


--{ running }--[  ]--
A:spine#
```

## Applying the examples

In order to run the provided examples, you need to prepare a development environment by creating a `Python virtual environment` and installing the required packages:

```bash
Python3 -m venv ~/.virtualenvs/srlinux
source ~/.virtualenvs/srlinux/bin/activate
pip install inmanta-core
```

And then, export the model to the server:

```bash
inmanta -vvv export -f main.cf -e <environment_id> --server_address 172.30.0.3
```

## Additional Commands

Deploy the LAB:

```sh
sudo clab deploy -t topology.yml
```

View the current LAB state:

```sh
sudo clab inspect -t topology.yml
```

Delete the deployed LAB:

```sh
sudo clab destroy -t topology.yml
```

Export the model to Inmanta server:

```sh
inmanta -vvv export -f main.cf -e <environment_id> --server_address <server_ip_address>
```

Create a project and an environment (`test` and `SR_Linux` respectively):

```bash
inmanta-cli --host <orchestrator_ip> project create -n test
inmanta-cli --host <orchestrator_ip> environment create -p test -n SR_Linux --save
```
