"""
    Copyright 2023 Inmanta

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

    Contact: code@inmanta.com
"""
import ipaddress
import re

import inmanta_plugins.std
import yaml

import inmanta.plugins


@inmanta.plugins.plugin()
def dict_keys(data: "dict") -> "string[]":  # type: ignore
    """
    Create a list with all the keys of a dict.  This allows us to easily
    iterate over all the items in a dict, which the Inmanta DSL doesn't provide
    any native mechanism for. (at least not yet)

    :param data: The dict to get all the keys of.
    """
    return list(data.keys())


@inmanta.plugins.plugin()
def get_srlinux_interfaces(ctx: inmanta.plugins.Context, topology_file: "string") -> "dict[]":  # type: ignore
    """
    Read a clab topology file at a given path and extract all the links that each srlinux
    router has with any device.  For each link, assign a /30 network, and pick one ip for
    this router and one for the device on the other side.

    :param topology_file: Path to the topology file that should be loaded.
    """
    content = inmanta_plugins.std.source(ctx, topology_file)
    parsed_content = yaml.safe_load(content)

    # Get all routers names
    routers = [
        name
        for name, dev in parsed_content["topology"]["nodes"].items()
        if dev["kind"] == "srl"
    ]

    # Iterable of all networks we can use for the links defined in the topology
    links_network = ipaddress.IPv4Network("10.0.0.0/16").subnets(new_prefix=30)

    # List of all router interfaces we want to configure with our model
    interfaces: list[dict] = list()

    for link in parsed_content["topology"]["links"]:
        net = next(links_network)

        for ep, addr in zip(link["endpoints"], net.hosts(), strict=True):
            dev, intf = ep.split(":")
            intf_addr = str(addr) + "/" + str(net.prefixlen)

            if dev in routers:
                # This is a router, add to the list of interfaces the
                # config that needs to be pushed to the device
                interfaces.append(
                    {
                        "router": dev,
                        "name": re.sub(
                            r"e(\d+)-(\d+)",
                            lambda match: f"ethernet-{match.group(1)}/{match.group(2)}",
                            intf,
                        ),
                        "ipv4_address": intf_addr,
                    }
                )
            else:
                # This is not a router, the ip should be configured manually
                # Let's print the command here
                print(
                    f"docker exec -ti clab-{parsed_content['name']}-{dev} ip link add {intf_addr} dev {intf}"
                )

    return interfaces
