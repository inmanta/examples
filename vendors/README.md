# Vendor Configuration Examples

This repository illustrates how to configure services on different vendors using the `Inmanta` language.

## Prerequisites

The OS of choice for demonstrating these examples is `Ubuntu`. Make sure to setup a project using [this guide](https://docs.inmanta.com/community/latest/quickstart.html) before running the examples.
You need to have an access token in order to pull down the modules that are shown here.
All these examples should be placed into `main.cf` file at the root of your project directory.

### Install `Inmanta`

Please refer to [this guide](https://docs.inmanta.com/community/latest/install/1-install-server.html#install-the-software) in order to install the `Inmanta` software.

## Supported Platforms

* [Cisco](Cisco/README.md)
* [Juniper](Juniper/README.md)
* [Nokia](Nokia/README.md)

## Supported Features

TODO: List supported features for each vendor here...

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
  * ...
* Juniper
  * ...
* Nokia
  * ...

## Notes

In the vendor examples, there are two forms of configuration snippets; coupled and decoupled, providing the same result.