def main() -> None:
    from pygnmi.client import gNMIclient

    HOST = ("172.30.0.100", "57400")

    INTERFACE_PATH = "srl_nokia-interfaces:interface"
    NS_INSTANCE_PATH = "srl_nokia-network-instance:network-instance"
    OSPF_PATH = "srl_nokia-ospf:ospf"

    with gNMIclient(
        target=HOST, username="admin", password="admin", insecure=False
    ) as gc:
        result = gc.get(path=["interface", "network-instance"], encoding="json_ietf")

    notifications = result["notification"]

    for response in notifications:
        if list(response["update"][0]["val"].keys())[0] == INTERFACE_PATH:
            interface_result = response["update"][0]["val"][INTERFACE_PATH][0]
        if list(response["update"][0]["val"].keys())[0] == NS_INSTANCE_PATH:
            ospf_result = response["update"][0]["val"][NS_INSTANCE_PATH][0]

    assert interface_result is not None
    assert ospf_result is not None

    router_id = ospf_result["protocols"][OSPF_PATH]["instance"][0]["router-id"]
    assert router_id == "10.20.30.210"

    sub_int_ip_address = interface_result["subinterface"][0]["ipv4"]["address"][0][
        "ip-prefix"
    ]

    assert sub_int_ip_address == "10.10.11.2/30"
    print("[+] Deployment was successful!")


if __name__ == "__main__":
    print("Run validation script")
    main()
