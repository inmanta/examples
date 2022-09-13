# Quickly setup the training lab

> :warning: This works on Ubuntu 20.04.

![](topology.svg)

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
