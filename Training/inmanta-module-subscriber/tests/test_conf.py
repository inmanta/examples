from utils import *


def test_api():
    # GET
    intfs = get_current_interfaces()
    used_names = [intf["if_name"] for intf in intfs]

    # Gen new intf name
    if_name = gen_unused_name(used_names)
    assert not if_name in used_names

    # POST
    create_interface(if_name)
    intfs = get_current_interfaces()
    assert if_name in [intf["if_name"] for intf in intfs]

    # PATCH
    new_mtu = 1542
    modify_interface_mtu(if_name, new_mtu)
    intfs = get_current_interfaces()
    if_setup = get_if(intfs, if_name)
    assert not if_setup is None
    assert if_setup["mtu"] == new_mtu

    # DELETE
    delete_interface(if_name)
    intfs = get_current_interfaces()
    assert not if_name in used_names
