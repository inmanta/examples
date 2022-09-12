# Quickly setup the training lab

## Bring the lab up
```console
guillaume@latitude-5411:~/Documents/examples/Training$ sudo clab deploy --topo topology.clab.yml 
INFO[0000] Containerlab v0.31.1 started                 
INFO[0000] Parsing & checking topology file: topology.clab.yml 
INFO[0000] Creating lab directory: /home/guillaume/Documents/examples/Training/clab-training 
INFO[0000] Creating docker network: Name="inmanta_mgmt", IPv4Subnet="10.0.0.0/24", IPv6Subnet="", MTU="1500" 
INFO[0000] Creating container: "R2"                     
INFO[0000] Creating container: "R1"                     
INFO[0000] Creating container: "R4"                     
INFO[0000] Creating container: "pgmaster"               
INFO[0000] Creating container: "R3"                     
INFO[0000] Creating container: "orchestrator"           
INFO[0000] Creating virtual wire: R2:eth3 <--> R4:eth2  
INFO[0001] Creating virtual wire: R1:eth3 <--> R4:eth1  
INFO[0001] Creating virtual wire: R1:eth1 <--> R2:eth1  
INFO[0001] Creating virtual wire: R3:eth3 <--> R4:eth3  
INFO[0001] Creating virtual wire: R1:eth2 <--> R3:eth1  
INFO[0001] Creating virtual wire: R2:eth2 <--> R3:eth2  
INFO[0004] Adding containerlab host entries to /etc/hosts file 
+---+----------------------------+--------------+-------------------------------------+-------+---------+---------------+--------------+
| # |            Name            | Container ID |                Image                | Kind  |  State  | IPv4 Address  | IPv6 Address |
+---+----------------------------+--------------+-------------------------------------+-------+---------+---------------+--------------+
| 1 | clab-training-R1           | 9863a09262c2 | vyos/vyos:1.2.8                     | linux | running | 10.0.0.5/24   | N/A          |
| 2 | clab-training-R2           | 3b78b82a4a16 | vyos/vyos:1.2.8                     | linux | running | 10.0.0.6/24   | N/A          |
| 3 | clab-training-R3           | a0b7b2fddb11 | vyos/vyos:1.2.8                     | linux | running | 10.0.0.7/24   | N/A          |
| 4 | clab-training-R4           | 40721b02036a | vyos/vyos:1.2.8                     | linux | running | 10.0.0.8/24   | N/A          |
| 5 | clab-training-orchestrator | fe550d646106 | ghcr.io/inmanta/orchestrator:latest | linux | running | 10.0.0.102/24 | N/A          |
| 6 | clab-training-pgmaster     | 94f207f02b64 | postgres:14                         | linux | running | 10.0.0.100/24 | N/A          |
+---+----------------------------+--------------+-------------------------------------+-------+---------+---------------+--------------+
```

## Access the orchestrator
Go to [http://10.0.0.102:8888](http://10.0.0.102:8888)

## Access the routers
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
