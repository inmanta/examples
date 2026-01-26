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

from typing import Dict, Optional

import requests
import yaml

import inmanta.execute
import inmanta.export
from inmanta.agent.handler import CRUDHandler, HandlerContext, ResourcePurged, provider
from inmanta.resources import PurgeableResource, resource
from inmanta_plugins.subscriber.topology_adapter import (
    get_routers,
    get_routers_interfaces,
    get_routes,
    get_subscribers,
)


@inmanta.plugins.plugin
def topo_from_yml(filename: "string") -> "dict":
    with open(filename) as file:
        topo = yaml.safe_load(file)

    routers = get_routers(topo)
    routes = get_routes(topo)
    routers_interfaces = get_routers_interfaces(routes)
    subscribers = get_subscribers(topo)

    return {
        "routers": routers,
        "routes": routes,
        "routers_interfaces": routers_interfaces,
        "subscribers": subscribers,
    }


HEADERS = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}


# https://docs.inmanta.com/community/latest/reference/api.html#resources
@resource("subscriber::Interface", agent="subscriber.name", id_attribute="name")
class Interface(PurgeableResource):
    fields = ("name", "mtu", "subscriber_ip")

    # https://docs.inmanta.com/community/latest/model_developers/handlers.html#resource
    @staticmethod
    def get_subscriber_ip(
        _: inmanta.export.Exporter, entity: inmanta.execute.proxy.DynamicProxy
    ) -> str:
        return entity.subscriber.mgmt_ip


# https://docs.inmanta.com/community/latest/reference/api.html#inmanta.agent.handler.provider
@provider("subscriber::Interface", name="handler")
class InterfaceHandler(CRUDHandler):
    # https://docs.inmanta.com/community/latest/reference/api.html#inmanta.agent.handler.CRUDHandler

    # You can find the execution process here:
    # https://github.com/inmanta/inmanta-core/blob/6e809c19e0cc6adf01d2d90a786b49a482dfb173/src/inmanta/agent/handler.py#L904

    def find_instance(self, resource: Interface) -> Optional[Dict]:
        response = requests.get(
            f"http://{resource.subscriber_ip}:8080/api/v2/interfaces/{resource.name}"
        )

        if response.status_code == 404:
            return None

        return response.json()

    def read_resource(self, ctx: HandlerContext, resource: Interface) -> None:
        instance = self.find_instance(resource)
        if instance is None:
            # Ressource doesn't exists
            raise ResourcePurged()
        # Update resource value from learned
        resource.mtu = instance["mtu"]

    def create_resource(self, ctx: HandlerContext, resource: Interface) -> None:
        response = requests.post(
            url=f"http://{resource.subscriber_ip}:8080/api/v2/interfaces",
            headers=HEADERS,
            json={
                "name": resource.name,
                "mtu": resource.mtu,
                "type": "veth",
            },
        )
        response.raise_for_status()

    def update_resource(
        self, ctx: HandlerContext, changes: dict, resource: Interface
    ) -> None:
        response = requests.patch(
            url=f"http://{resource.subscriber_ip}:8080/api/v2/interfaces/{resource.name}",
            headers=HEADERS,
            json={"mtu": changes["mtu"]["desired"]},
        )
        response.raise_for_status()

    def delete_resource(self, ctx: HandlerContext, resource: Interface) -> None:
        response = requests.delete(
            url=f"http://{resource.subscriber_ip}:8080/api/v2/interfaces/{resource.name}"
        )
        response.raise_for_status()


@resource("subscriber::Gateway", agent="interface.subscriber.name", id_attribute="ip")
class Gateway(PurgeableResource):
    fields = ("ip", "interface_name", "mgmt_ip")

    @staticmethod
    def get_mgmt_ip(
        _: inmanta.export.Exporter, entity: inmanta.execute.proxy.DynamicProxy
    ) -> str:
        return entity.interface.subscriber.mgmt_ip

    @staticmethod
    def get_interface_name(
        _: inmanta.export.Exporter, entity: inmanta.execute.proxy.DynamicProxy
    ) -> str:
        return entity.interface.name


@provider("subscriber::Gateway", name="route_handler")
class GatewayHandler(CRUDHandler):
    def find_default_gateway(self, resource: Interface) -> Optional[Dict]:
        response = requests.get(f"http://{resource.mgmt_ip}:8080/api/v2/routes")
        response.raise_for_status()

        for route in response.json():
            if route["dst"] == "default":
                return route

        return None

    def change_ip(self, ip: str):
        response = requests.patch(
            url=f"http://{resource.mgmt_ip}:8080/api/v2/interfaces/{resource.interface_name}",
            headers=HEADERS,
            json={"address": [ip]},
        )
        response.raise_for_status()

    def read_resource(self, ctx: HandlerContext, resource: Gateway) -> None:
        default_gateway = self.find_default_gateway(resource)
        if default_gateway is None:
            raise ResourcePurged()

        resource.ip = default_gateway["gateway"]

    def create_resource(self, ctx: HandlerContext, resource: Gateway) -> None:
        response = requests.post(
            url=f"http://{resource.mgmt_ip}:8080/api/v2/routes",
            headers=HEADERS,
            json={
                "dst": "default",
                "gateway": resource.ip,
                "dev": resource.interface_name,
            },
        )
        response.raise_for_status()

    def update_resource(
        self, ctx: HandlerContext, changes: dict, resource: Gateway
    ) -> None:
        response = requests.patch(
            url=f"http://{resource.mgmt_ip}:8080/api/v2/routes/default",
            headers=HEADERS,
            json={
                "gateway": changes["ip"]["desired"],
                "dev": resource.interface_name,
            },
        )
        response.raise_for_status()

    def delete_resource(self, ctx: HandlerContext, resource: Gateway) -> None:
        response = requests.delete(
            url=f"http://{resource.mgmt_ip}:8080/api/v2/routes/default",
        )
        response.raise_for_status()


@resource(
    "subscriber::InterfaceIp",
    agent="interface.subscriber.name",
    id_attribute="ip",
)
class InterfaceIp(PurgeableResource):
    fields = ("ip", "interface_name", "mgmt_ip")

    @staticmethod
    def get_mgmt_ip(
        _: inmanta.export.Exporter, entity: inmanta.execute.proxy.DynamicProxy
    ) -> str:
        return entity.interface.subscriber.mgmt_ip

    @staticmethod
    def get_interface_name(
        _: inmanta.export.Exporter, entity: inmanta.execute.proxy.DynamicProxy
    ) -> str:
        return entity.interface.name


@provider("subscriber::InterfaceIp", name="route_handler")
class InterfaceIpHandler(CRUDHandler):
    def find_instance(self, resource: InterfaceIp) -> Optional[Dict]:
        response = requests.get(
            url=f"http://{resource.mgmt_ip}:8080/api/v2/interfaces/{resource.interface_name}"
        )
        response.raise_for_status()
        ip, p_len = resource.ip.split("/")

        for addr in response.json()["addr_info"]:
            if ip == addr["local"] and p_len == addr["prefix_len"]:
                return addr

        return None

    def read_resource(self, ctx: HandlerContext, resource: InterfaceIp) -> None:
        instance = self.find_instance(resource)

        if instance is None:
            raise ResourcePurged()

    def create_resource(self, ctx: HandlerContext, resource: InterfaceIp) -> None:
        response = requests.patch(
            url=f"http://{resource.mgmt_ip}:8080/api/v2/interfaces/{resource.interface_name}",
            headers=HEADERS,
            json={"addresses": [resource.ip]},
        )
        response.raise_for_status()

    def update_resource(
        self, ctx: HandlerContext, changes: dict, resource: InterfaceIp
    ) -> None:
        raise NotImplementedError("No ip modification possible")

    def delete_resource(self, ctx: HandlerContext, resource: InterfaceIp) -> None:
        response = requests.patch(
            url=f"http://{resource.mgmt_ip}:8080/api/v2/interfaces/{resource.interface_name}",
            headers=HEADERS,
            json={"addresses": []},
        )
        response.raise_for_status()
