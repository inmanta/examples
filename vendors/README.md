# Vendor Configuration Examples

This repository illustrates how to configure services on different vendors using the [Inmanta language](https://docs.inmanta.com/community/dev/language.html).

## Prerequisites

* The `OS` of choice for demonstrating these examples is `Ubuntu` but any Linux version should be fine.
* Install the Inmanta software [using this guide](https://docs.inmanta.com/community/latest/install/1-install-server.html#install-the-software).
* Make sure to setup a project using [this guide](https://docs.inmanta.com/community/latest/model_developers/configurationmodel.html) before running the examples.
* You need to have an `access token` in order to pull down the modules that are provided in the examples.

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

2) Deploy the configuration:

  ```bash
    inmanta -vvv deploy -f main.cf
  ```

* `inmanta` will be the name of the executable after successful installation.
* `-vvv` determines the verbosity level.
* `deploy` is the intended action. You can use `compile` to sanity check your configuration without applying anything on the device.
* `-f main.cf` specifies the location of the main configuration file.

When the deployment is successfully done, you can SSH to the device and verify its configuration.

## Supported Platforms

* [Cisco](Cisco/README.md)
* [Juniper](Juniper/README.md)
* [Nokia](Nokia/README.md)

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
* [ ] Interface VRF
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
* [] Routing instances
* [] EVPN

### Nokia

* [] TACACS configuration
  * [] configure an authorization server with a key
  * [] configure accounting
  * [] set servers timeout
* [] BGP configuration
  * [] Set a bgp group with families
  * [] Set import policy for a group
  * [] Set a neighbor with a group
  * [] Change description for a neighbor
  * [] Set backup path
  * [] Set rapid update
* [] Ethernet segment
  * [] set single-active ethernet-segment
  * [] set all-active ethernet-segment
* [] Service EPIPE
  * [] set epipe
  * [] set epipe and eth-cfm
  * [] set epipe and bgp
* [] eth-cfm
  * [] set eth-cfm
* [] Policy option
  * [] Set policy options with community
  * [] Set policy option with allow/deny statement
* [] Service VPRN
  * [] set service VPRN
  * [] set service VPRN with VRRP
  * [] set service VPRN with static router
