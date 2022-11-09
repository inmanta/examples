from pygnmi.client import gNMIclient
import logging
import time

logging.basicConfig(level=logging.DEBUG)

HOST = ("172.30.0.100", "57400")

INTERFACE_PATH = "srl_nokia-interfaces:interface"
NS_INSTANCE_PATH = "srl_nokia-network-instance:network-instance"
OSPF_PATH = "srl_nokia-ospf:ospf"

def fetch_config(gc):
    result = gc.get(path=["interface", "network-instance"], encoding="json_ietf")

    notifications = result["notification"]

    interface_result = None
    ospf_result = None
    for response in notifications:
        if list(response["update"][0]["val"].keys())[0] == INTERFACE_PATH:
            interface_result = response["update"][0]["val"][INTERFACE_PATH][0]
        if list(response["update"][0]["val"].keys())[0] == NS_INSTANCE_PATH:
            ospf_result = response["update"][0]["val"][NS_INSTANCE_PATH][0]

    return interface_result, ospf_result


def main() -> None:
    with gNMIclient(
        target=HOST, username="admin", password="admin", insecure=False, skip_verify=True,
    ) as gc:
        interface_result, ospf_result = fetch_config(gc)

        assert interface_result is not None
        assert ospf_result is not None

        router_id = ospf_result["protocols"][OSPF_PATH]["instance"][0]["router-id"]
        assert router_id == "10.20.30.100"

        sub_int_ip_address = interface_result["subinterface"][0]["ipv4"]["address"][0][
            "ip-prefix"
        ]
        assert sub_int_ip_address == "10.10.11.1/30"

        # Check if we see the two neighbours
        neigbours = ["10.20.30.210", "10.20.30.220"]
        count = 0
        while neigbours and count < 60:
            for interface in ospf_result["protocols"][OSPF_PATH]["instance"][0]["area"][0]["interface"]:
                if "neighbor" not in interface or len(interface["neighbor"]) == 0:
                    count += 1
                    break

                print(interface["neighbor"][0]["router-id"])
                neigbours.remove(interface["neighbor"][0]["router-id"])

            if not neigbours:
                break

            interface_result, ospf_result = fetch_config(gc)
            time.sleep(1)


    print("[+] Deployment was successful!")


if __name__ == "__main__":
    print("Run validation script")
    main()
