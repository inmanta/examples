# Vendor Configuration Examples

This repository illustrates how to configure services on different vendors using the [Inmanta language](https://docs.inmanta.com/community/dev/language.html).

## Prerequisites

* The `OS` of choice for demonstrating these examples is `Ubuntu` but any Linux version should be fine.
* Install the Inmanta software [using this guide](https://docs.inmanta.com/community/latest/install/1-install-server.html#install-the-software).
* Make sure to setup a project using [this guide](https://docs.inmanta.com/community/latest/quickstart.html) before running the examples.
* You need to have an `access token` in order to pull down the modules that are provided.
* All these examples should be placed into `main.cf` file at the root of your project directory.

## Notes

* In the vendor examples, usually there are two forms of configuration snippets; `coupled` and `de-coupled`, leading to the same result on devices.
* Not all the modules that are shown in the examples are free. Those modules require an access token to get downloaded. This access token, alongside the `GIT` repository will have to be added to the `project.yml` file under each project. For instance:

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

> Notice how we added the `Cisco IOS-XR` module under the repo section.

## Examples

Having `Inmanta` installed, a project set up, and adding the required module repository to the `project.yml` file, you can use any of the available examples under each vendor's specific directory.

For instance, let's see how we can shutdown an interface on a `Cisco IOS-XR` device.

1) Head to the directory in which you have created your project, open the `main.cf` file and add the following lines:

  ```txt
  import ciscoxr

  router = ciscoxr::Device(
      name="router101",
      mgmt_ip="10.10.10.1",
      port=830,
      username=USERNAME,
      password=PASSWORD,
  )

  ciscoxr::Interface(
      device=router,
      interface_name="GigabitEthernet0/0/0/2",
      shutdown=true,
  )
  ```

2) Deploy the configuration:

  ```bash
    inmanta -vvv deploy -f main.cf
  ```

## Supported Platforms

* [Cisco](Cisco/README.md)
* [Juniper](Juniper/README.md)
* [Nokia](Nokia/README.md)

## Supported Features

* Cisco
  * Change operational state of an interface
  * Set a primary and secondary IP address
  * Set a description for interface
  * Change interface bandwidth
  * Change interface MTU
  * Set a timezone
  * Set a ntp peer
  * Set a hostname
  * Set a dot1q sub-interface
  * Set a VRF
  * Set a VFR with address-families
  * Set a policy for an interface
  * Set a statitc route
  * Set a VRF statitc route
  * L2VPN
  * L2VPN-EVPN
  * VRF
  * Policy map
  * ...
* Juniper
  * ...
* Nokia
  * ...
