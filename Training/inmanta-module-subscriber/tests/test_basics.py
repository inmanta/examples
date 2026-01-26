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

from pytest_inmanta.plugin import Project


def test_basics(project: Project) -> None:
    project.compile("""
import subscriber
subscriber = subscriber::Subscriber(
    name="east",
    mgmt_ip="42.42.42.42/30"
)
intf = subscriber::Interface(
    name="eth0",
    mtu=42,
    subscriber=subscriber,
)
ip = subscriber::InterfaceIp(
    ip="10.0.0.1/30",
    interface=intf
)
gateway = subscriber::Gateway(
    ip = "10.0.0.0/30",
    interface=intf
)
    """)
