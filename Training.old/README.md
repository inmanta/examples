# Content Overview

> :warning: This is old training material.  Unless you are specifically looking for it, you probably want to rather look at the [newer training material](../Training/README.md).

This folder contains examples that are part of the inmanta training program. 

It contains
-  all resources required to set up a lab, consisting of 4 routers in a full mesh topology. This lab and all associated resources exists for both vyos and sros routers. 

![](topology.svg)

- an inmanta project to configure
   - the loopback ip on each router
   - all interfaces on the router
   - OSPF on all routers
- different variations of this same model, that become increasingly sophisticated. Each subsequent version has less code and more power. This approach is similar to the one taken in this series of videos (https://youtu.be/l_ClsJG-BNQ)

| main version | Description |
| --- | --- |
| `main_step1.cf` | First version of the model, everything is hardcoded in the model at this point. |
| `main_step2.cf` | In this version, the model is filled with a yaml file. |
| `main_step3.cf` | The first entity based model, with a router and a port entity and their relation. |
| `main_step4.cf` | In this version, the view of the model is changed to remove redundancy and plugins are used. |
| `main_step5.cf` | In this version, this model adds the indexes and the typedef. |

# Prerequisites

Docker and containerlab should be installed on your machine
- docker : https://docs.docker.com/engine/install/
- containerlab : https://containerlab.dev/install/

# Quickly setup the training lab

> :warning: For now, we only found this to be working on Ubuntu 20.04 hosts.  On more recent linux versions, the routers don't start, probably because of an incompatibility with the kernel of the host.

## 1. Bring the lab up
```console
guillaume@latitude-5411:~/Documents/examples/Training$ sudo clab deploy --topo topology.clab.yml 
INFO[0000] Containerlab v0.31.1 started                 
INFO[0000] Parsing & checking topology file: topology.clab.yml 
INFO[0007] Creating lab directory: /home/guillaume/Documents/examples/Training/clab-training 
INFO[0007] Creating docker network: Name="inmanta_mgmt", IPv4Subnet="10.0.0.0/24", IPv6Subnet="", MTU="1500" 
INFO[0007] Creating container: "R1"                     
INFO[0007] Creating container: "C3"                     
INFO[0007] Creating container: "pgmaster"               
INFO[0007] Creating container: "R4"                     
INFO[0007] Creating container: "R3"                     
INFO[0007] Creating container: "R2"                     
INFO[0007] Creating container: "C1"                     
INFO[0007] Creating container: "C2"                     
INFO[0007] Creating container: "orchestrator"           
INFO[0007] Creating container: "C4"                     
INFO[0008] Creating virtual wire: R2:eth3 <--> R4:eth2  
INFO[0009] Creating virtual wire: C2:eth1 <--> R2:eth4  
INFO[0009] Creating virtual wire: R2:eth2 <--> R3:eth2  
INFO[0009] Creating virtual wire: R3:eth3 <--> R4:eth3  
INFO[0009] Creating virtual wire: C3:eth1 <--> R3:eth4  
INFO[0011] Creating virtual wire: R1:eth1 <--> R2:eth1  
INFO[0011] Creating virtual wire: R1:eth3 <--> R4:eth1  
INFO[0011] Creating virtual wire: C1:eth1 <--> R1:eth4  
INFO[0011] Creating virtual wire: R1:eth2 <--> R3:eth1  
INFO[0013] Creating virtual wire: C4:eth1 <--> R4:eth4  
INFO[0014] Adding containerlab host entries to /etc/hosts file 
+----+----------------------------+--------------+-------------------------------------+-------+---------+---------------+--------------+
| #  |            Name            | Container ID |                Image                | Kind  |  State  | IPv4 Address  | IPv6 Address |
+----+----------------------------+--------------+-------------------------------------+-------+---------+---------------+--------------+
|  1 | clab-training-C1           | 2a589133d343 | praqma/network-multitool:latest     | linux | running | 10.0.0.205/24 | N/A          |
|  2 | clab-training-C2           | aba379fae403 | praqma/network-multitool:latest     | linux | running | 10.0.0.206/24 | N/A          |
|  3 | clab-training-C3           | 8f1da860b049 | praqma/network-multitool:latest     | linux | running | 10.0.0.207/24 | N/A          |
|  4 | clab-training-C4           | e16a47af546f | praqma/network-multitool:latest     | linux | running | 10.0.0.208/24 | N/A          |
|  5 | clab-training-R1           | e16cd0d3ee06 | vyos/vyos:1.2.8                     | linux | running | 10.0.0.5/24   | N/A          |
|  6 | clab-training-R2           | b85a4a0b030e | vyos/vyos:1.2.8                     | linux | running | 10.0.0.6/24   | N/A          |
|  7 | clab-training-R3           | 87721f12f509 | vyos/vyos:1.2.8                     | linux | running | 10.0.0.7/24   | N/A          |
|  8 | clab-training-R4           | 22224d4ba50e | vyos/vyos:1.2.8                     | linux | running | 10.0.0.8/24   | N/A          |
|  9 | clab-training-orchestrator | 5584edf1dd02 | ghcr.io/inmanta/orchestrator:latest | linux | running | 10.0.0.102/24 | N/A          |
| 10 | clab-training-pgmaster     | cb137332d33c | postgres:14                         | linux | running | 10.0.0.100/24 | N/A          |
+----+----------------------------+--------------+-------------------------------------+-------+---------+---------------+--------------+
```

## 2. Access the orchestrator
Go to [http://10.0.0.102:8888](http://10.0.0.102:8888)

## 3. Access the routers
The routers are started with a basic config, which enables ssh and setup the credentials for the `vyos` user.  The configured password is then `vyos`.

```console
guillaume@latitude-5411:~$ ssh vyos@clab-training-R1
Warning: Permanently added 'clab-training-r1,10.0.0.5' (ED25519) to the list of known hosts.
Welcome to VyOS
vyos@clab-training-r1's password: vyos

The programs included with the Debian GNU/Linux system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Debian GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
permitted by applicable law.
vyos@R1:~$ 
```

## 4. Tear down the lab
```console
guillaume@latitude-5411:~/Documents/examples/Training$ sudo clab destroy --topo topology.clab.yml 
INFO[0000] Parsing & checking topology file: topology.clab.yml 
INFO[0000] Destroying lab: training                     
INFO[0000] Removed container: clab-training-orchestrator 
INFO[0000] Removed container: clab-training-pgmaster    
INFO[0001] Removed container: clab-training-C4          
INFO[0001] Removed container: clab-training-C3          
INFO[0001] Removed container: clab-training-C2          
INFO[0001] Removed container: clab-training-C1          
INFO[0001] Removed container: clab-training-R1          
INFO[0001] Removed container: clab-training-R4          
INFO[0001] Removed container: clab-training-R3          
INFO[0001] Removed container: clab-training-R2          
INFO[0001] Removing containerlab host entries from /etc/hosts file
```

## 5. Setup the clients
To setup the clients interfaces and routing table once containerlab is running, use the script setup_Clients with the command "bash setup_Clients". 
This will run the script config_ip in resources/Clients/ for each client container.

## 6. Two different topologies
There are 2 different topologies in the folder, one working with `vyos` containers and the other with `srlinux` containers and each of them has its own project in respectively project/vylab and project/srlab.
