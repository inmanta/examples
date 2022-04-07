# Containerlab - VyOS

Pull the VyOS image from Docker Hub:

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

Copy and paste the contents of the [vyos1](containerlab/vyos1.cfg) and then [vyos2](containerlab/vyos2.cfg) startup config file into their respective terminal.

At this point you should be able to SSH to the VyOS containers with `vyos` as both username and password:

```bash
ssh vyos@clab-vyosclab-vyos1
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
