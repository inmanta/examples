# Vendor Configuration Examples

This repository illustrates how to configure services on different vendors using the [Inmanta language](https://docs.inmanta.com/community/dev/language.html).

## Prerequisites

* The `OS` of choice for demonstrating these examples is `Ubuntu` but any Linux version should be fine.
* Install the Inmanta software [using this guide](https://docs.inmanta.com/community/latest/install/1-install-server.html#install-the-software).
* Make sure to setup a project using [this guide](https://docs.inmanta.com/community/latest/model_developers/configurationmodel.html) before running the examples.
* You need to have an `access token` in order to pull down the modules that are provided in the examples. If you already have a license to these modules, you should have received this token. Otherwise, contact sales.

## Notes

* All these examples should be placed into `main.cf` file at the root of your project directory.

* Not all the modules that are shown in the examples are free. Those modules require an `access token` to get downloaded. This `access token`, alongside the `GIT` repository URL will have to be added to the `project.yml` file under each project to successfully get the modules. For instance:

  ```yaml
  name: Cisco Examples
  description: Provides examples for the Cisco module
  author: Inmanta
  author_email: code@inmanta.com
  license: ASL 2.0
  copyright: 2022 Inmanta
  modulepath: libs
  downloadpath: libs
  repo:
      - https://github.com/inmanta/
      - https://USERNAME:ACCESS_TOKEN@inmanta.repo/ciscoxr/{}.git
  install_mode: release
  requires:

  ```

> Notice how we added the `username`, `access token` and `Cisco IOS-XR` module under the repo section.

## Examples

Having `Inmanta` installed, a project set up, and adding the required module repositories to the `project.yml` file, you can use any of the available examples under each vendor's specific directory.

For instance, let's see how we can shutdown an interface and set an IP address for a `Cisco IOS-XR` device.

1) Head to the directory in which you have created your project, open the `main.cf` file and add the following lines which are taken from [Cisco XR interface example](Cisco/interface.cf):

   ```txt
   import ciscoxr

   router=ciscoxr::Device(
      name="router101",
      mgmt_ip="10.10.10.1",
      port=830,
      username=USERNAME,
      password=PASSWORD,
   )

   ge2=ciscoxr::Interface(
      device=router,
      interface_name="GigabitEthernet0/0/0/2",
      shutdown=true,
   )

   c::Primary(
      interface=ge2,
      address="172.16.10.50",
      netmask="255.255.255.0"
   )
   ```

   > Note: Modules will get downloaded when you save the file. If not, please make sure your `project.yml` file is correctly configured.

2) Deploy the configuration:

    Configuration deployment is possible via `deploy` and `export` switches. The main difference is, `export` option will send your configuration model to the `Service Orchestrator` from where, you can view the deployment steps in the GUI. If you have followed the [installation guide](https://docs.inmanta.com/community/latest/install/1-install-server.html) the dashboard should be at your disposal. Additionally, we also provide a Docker container for `Service Orchestrator` which is publicly available but it needs a license to function which you can contact us to that end.

    Let's deploy this example using the `deploy` switch:

    ```bash
      inmanta -vvv deploy -f main.cf
    ```

   * `inmanta` will be the name of the executable after successful installation.
   * `-vvv` determines the verbosity level.
   * `deploy` is the intended action. You can use `compile` to sanity check your configuration without applying any configuration on the device.
   * `-f main.cf` specifies the location of the main configuration file.

    In case of deployment using the `export` switch, the model does not *need* to be named `main.cf`:

    ```bash
      inmanta -vvv export -e d3b2e897-0121-4124-863e-47b6c78ebc35 -f ip_address.cf
    ```

    * `export` pushes the model to the `Service Orchestrator`.
    * `-e` provides the `environment` ID. This can be derived from the `Service Orchestrator` Web Console.

When the deployment is successfully done, you can `SSH` to the device and verify its configuration.

## Supported Platforms

* [Cisco](Cisco/README.md)
* [Juniper](Juniper/README.md)
* [Nokia](Nokia/README.md)
* [VyOS](VyOS/README.md)
* [SR Linux](SR&#32;Linux/README.md)

## Supported Features

### Cisco

* [x] Hostname
* [x] Interface
  * [x] Set primary address
  * [x] Set secondary address
  * [x] MTU
  * [x] Bandwidth
  * [x] Admin state
  * [x] Description
* [x] Sub-interface
* [x] Interface VRF
* [x] Timezone/clock
* [x] NTP
* [x] VRF
  * [x] Static route
* [x] Static route
* [x] L2VPN-EVPN
* [x] BGP
  * [x] Neighbor
  * [x] Address families
  * [x] VRF

### Cisco Services

* [x] L2VPN
* [x] Policy-map
* [x] VRF

### Juniper

* [x] Interface
  * [x] Set primary address
  * [x] Set primary address
  * [x] MTU
  * [x] Bandwidth

* [x] VLAN
* [x] VXLAN
* [x] Link aggregation
  * [x] LACP
* [x] Ethernet switching
* [x] IRB
* [x] Interface RPF policies
* [x] Policer
* [x] Policy options/statements

### Juniper services

* [x] Bridge domains
* [x] Firewall
* [x] L2 Circuit
* [x] Protocols EVPN
* [x] Routing instances
* [x] EVPN
* [x] VPWS

### Nokia

* [x] TACACS configuration
  * [x] configure an authorization server with a key
  * [x] configure accounting
  * [x] set servers timeout
* [x] SNMP configuration
  * [x] configure snmp group, comminity, view
* [x] BGP configuration
  * [x] Set a bgp group with families
  * [x] Set a neighbor with a group
  * [x] Change description for a neighbor
  * [x] Set backup path
  * [x] Set rapid update
* [x] Client configuration
  * [x] Set a name and an id of a client
* [x] Ethernet segment
  * [x] set single-active ethernet-segment
  * [x] set all-active ethernet-segment
* [x] Service EPIPE
  * [x] set epipe
  * [x] set epipe and eth-cfm
  * [x] set epipe and bgp
* [x] eth-cfm
  * [x] set eth-cfm
* [x] Policy option
  * [x] Set policy options with community
  * [x] Set policy option with allow/deny statement
* [x] Service VPRN
  * [x] set service VPRN
  * [x] set service VPRN with VRRP
  * [x] set service VPRN with static router

### SR Linux

* [x] All the aforementioned features in [Nokia](#nokia) and more

### VyOS

* [x] Hostname
* [x] Interface
  * [x] Set primary address
  * [x] Set secondary address
  * [x] MTU
  * [x] Bandwidth
  * [x] Admin state
  * [x] Description
* [x] Sub-interface
* [x] Interface VRF
* [x] Timezone/clock
* [x] NTP
* [x] VRF
  * [x] Static route
* [x] Static route
* [x] Bridge domains
* [x] Policy options/statements
* [x] Firewall
