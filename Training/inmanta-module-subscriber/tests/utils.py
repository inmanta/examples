import random
import string

import requests

URL = "http://172.30.0.6:8080/api/v2/"
HEADERS = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}


def gen_random_name(size=5):
    return "".join(random.choice(string.ascii_letters) for _ in range(size))


def gen_unused_name(if_names, size=5):
    r = gen_random_name(size)
    if r in if_names:
        return gen_unused_name(if_names, size)
    return r


def get_if(ifs, if_name):
    for itf in ifs:
        if itf["if_name"] == if_name:
            return itf


def get_current_interfaces():
    resp = requests.get(f"{URL}/interfaces")
    assert resp.status_code == 200
    return resp.json()


def create_interface(name, mtu=1500):
    resp = requests.post(
        url=f"{URL}/interfaces",
        headers=HEADERS,
        json={
            "name": name,
            "mtu": mtu,
            "type": "veth",
        },
    )
    assert resp.status_code == 201


def modify_interface_mtu(name, new_mtu=2000):
    resp = requests.patch(
        url=f"{URL}/interfaces/{name}", headers=HEADERS, json={"mtu": new_mtu}
    )
    assert resp.status_code == 200


def delete_interface(name):
    resp = requests.delete(url=f"{URL}/interfaces/{name}")
    assert resp.status_code == 200
