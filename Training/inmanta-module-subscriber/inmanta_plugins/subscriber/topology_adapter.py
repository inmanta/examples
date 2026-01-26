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


def is_router(device: str) -> bool:
    """Return if the device is a router"""
    return device.startswith("router")


def is_subscriber(device: str) -> bool:
    """Return if the device is a subscriber"""
    return device.startswith("subscriber")


def format_interface(interface):
    """
    Formats the name of the interface
    @interface [str] : ther interface name e.g. : "ex-x"
    """
    if interface.startswith("e"):
        first, second = interface.lstrip("e").split("-")
        return f"ethernet-{first}/{second}"


def get_subscribers(topo: dict) -> list:
    """
    Returns the list of routers a list of dicts from the config file
    @topo [dict] : the config file as a dict
    {
        "name" : name of the router
        "mgmt-ip" : ipv4 address
    }
    """
    return [
        {"name": name, "mgmt-ip": info["mgmt-ipv4"]}
        for name, info in topo["topology"]["nodes"].items()
        if is_subscriber(name)
    ]


def get_routers(topo: dict) -> list:
    """
    Returns the list of routers a list of dicts from the config file
    @topo [dict] : the config file as a dict
    {
        "name" : name of the router
        "mgmt-ip" : ipv4 address
    }
    """
    return [
        {"name": name, "mgmt-ip": info["mgmt-ipv4"]}
        for name, info in topo["topology"]["nodes"].items()
        if is_router(name)
    ]


def get_r2r_route(router_a: str, router_b: str, idx: int) -> list:
    """
    Returns the routes for router to router relations
    @router_a/b [str] : the complet router name (with the interface)
    @idx [int] : the index of this route
    """
    router_name_a, interface_a = router_a.split(":")
    router_name_b, interface_b = router_b.split(":")
    return {
        "router_name_a": router_name_a,
        "router_name_b": router_name_b,
        "interface_a": format_interface(interface_a),
        "interface_b": format_interface(interface_b),
        "ip_a": f"10.0.{idx}.1/30",
        "ip_b": f"10.0.{idx}.2/30",
    }


def get_r2s_route(router: str, idx: int, subscriber) -> list:
    """
    Returns the routes for router to subscriber relations
    @router [str] : the complet router name (with the interface)
    @idx [int] : the index of this route
    """
    r_name, r_itf = router.split(":")
    sub_name, sub_itf = subscriber.split(":")
    r_ip = f"10.1.{idx}.2"
    return {
        "router_name": r_name,
        "router_interface": format_interface(r_itf),
        "router_address": f"{r_ip}/30",
        "subscriber_name": sub_name,
        "subscriber_address": f"10.1.{idx}.1/30",
        "subscriber_gateway": r_ip,
        "subscriber_interface": sub_itf,
    }


def get_routes(topo: dict) -> dict:
    """
    Returns the routes (r2r and r2s)
    @topo [dict] : the config file as a dict
    """
    routes = {
        "r2r": [],
        "r2s": [],
    }
    for route in topo["topology"]["links"]:
        a, b = route["endpoints"]
        if is_router(a) and is_router(b):  # router to router
            routes["r2r"].append(get_r2r_route(a, b, len(routes["r2r"])))
        else:  # router to subscriber
            router = a if is_router(a) else b
            subscriber = b if is_router(a) else b

            routes["r2s"].append(get_r2s_route(router, len(routes["r2s"]), subscriber))
    return routes


def get_routers_interfaces(routes: dict) -> list:
    """
    Returns the router that have a route and the interfaces used
    @routes [dict] : the routes formated as the get_routes function produce
    """
    routers_interfaces = {}

    def add_interface(router, interface):
        if router not in routers_interfaces:
            routers_interfaces[router] = []
        routers_interfaces[router].append(interface)

    for route in routes["r2r"]:
        add_interface(route["router_name_a"], route["interface_a"])
        add_interface(route["router_name_b"], route["interface_b"])

    for route in routes["r2s"]:
        add_interface(route["router_name"], route["router_interface"])

    return [
        {"router": router, "interfaces": interfaces}
        for router, interfaces in routers_interfaces.items()
    ]
