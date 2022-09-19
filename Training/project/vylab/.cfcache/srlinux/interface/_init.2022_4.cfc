��      �inmanta.parser.cache��CacheEnvelope���)��}�(�	timestamp�GA����ƌ
statements�]�(�inmanta.ast��LocatableString���)��}�(�value��m
    :copyright: 2022 Inmanta
    :contact: code@inmanta.com
    :author: Inmanta
    :license: Inmanta EULA
��location�h�Range���)��N}�(�
start_char�K�end_lnr�K�end_char�K�file��o/home/dariush/.virtualenvs/srlinux/lib/python3.9/site-packages/inmanta_plugins/srlinux/model/interface/_init.cf��lnr�Ku��bhK�elnr�K�end�K�start�K�lexpos�Ks�	namespace��	Namespace��srlinux::interface���Qub�inmanta.ast.statements.define��DefineImport���)��}�(�name��srlinux��toname�h)u}�(hh �srlinux::interface���Q�anchors�]�hKt�	_location�h�Location���)��N}�(hhhKu��bu��bh%)��}�(h(�srlinux::types�h*h9u}�(hh �srlinux::interface���Qh.]�hK�h0h2)��N}�(hhhKu��bu��bh%)��}�(h(� srlinux::types::srl_nokia_common�h*hDu}�(hh �srlinux::interface���Qh.]�hK�h0h2)��N}�(hhhK	u��bu��bh%)��}�(h(�(srlinux::types::srl_nokia_interfaces_lag�h*hOu}�(hh �srlinux::interface���Qh.]�hK�h0h2)��N}�(hhhK
u��bu��bh%)��}�(h(�yang�h*hZu}�(hh �srlinux::interface���Qh.]�hK�h0h2)��N}�(hhhKu��bu��bh#�DefineTypeConstraint���)��}�(h(�breakout_mode_channel_speed_t��fullName��1srlinux::interface::breakout_mode_channel_speed_t��type��inmanta.ast.type��ConstraintType���)��}�(�basetype�N�_constraint�Nh(hghh �srlinux::interface���Q�comment�N�
expression�Nu}�h0h)��N}�(hK	hKhK&hhhKu��bs��bhtX  
The speed of each channel (breakout port).
Source type expression:

    srl_nokia-interfaces.yang:
    L196:    type enumeration {
    L197:      enum 10G {
    L198:        if-feature "srl_nokia-feat:platform-7220-d3";
    L199:      }
    L200:      enum 25G;
    L201:    }

�hph
)��}�(h�string�hh)��N}�(hK*hKhK0hhhKu��bhKhKhK0hK*hM-hh �srlinux::interface���Qub�!_DefineTypeConstraint__expression��!inmanta.ast.constraint.expression��In���)��N}�(�_Operator__number_arguments�K�
_arguments�]�(�inmanta.ast.variables��	Reference���)��N}�(�locatable_name�h
)��}�(h�self�hh)��N}�(hK:hKhK>hhhKu��bhKhKhK>hK:hM;hh �srlinux::interface���Qubh(h��	full_name�h��_own_eager_promises�]�hh �srlinux::interface���Qh.]�hNh0h�u��b�inmanta.ast.statements.assign��
CreateList���)��N}�(�items�]�(�inmanta.ast.statements��Literal���)��N}�(h�10G�h�]�hh �srlinux::interface���Qh.]�hM@h0h2)��N}�(hhhKu��bu��bh�)��N}�(h�25G�h�]�hh �srlinux::interface���Qh.]�hMGh0h2)��N}�(hhhKu��bu��be�children�h�h�]�hh �srlinux::interface���Qh.]�hM?h0h2)��N}�(hhhKu��bu��be�_Operator__name��in�h�h�h�]�hh �srlinux::interface���Qh.]�hM<h0h2)��N}�(hhhKu��bu��bu}�(hh �srlinux::interface���Qh.]�h�TypeReferenceAnchor���)��}�(�range�hhh �srlinux::interface���Qhjh|ubahMh0h2)��N}�(hhhKu��bu��bhd)��}�(h(�breakout_mode_num_channels_t�hh�0srlinux::interface::breakout_mode_num_channels_t�hjhm)��}�(hpNhqNh(h�hh �srlinux::interface���QhtNhuNu}�h0h)��N}�(hK	hKhK%hhhKu��bs��bht��
The number of channels (breakout ports) supported by this connector.
Source type expression:

    srl_nokia-interfaces.yang:
    L188:    type enumeration {
    L189:      enum 4;
    L190:    }

�hph
)��}�(h�string�hh)��N}�(hK)hKhK/hhhKu��bhKhKhK/hK)hM�hh �srlinux::interface���Qubh�h��Equals���)��N}�(�_Operator__number_arguments�Kh�]�(h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hK9hKhK=hhhKu��bhKhKhK=hK9hM�hh �srlinux::interface���Qubh(j  h�j  h�]�hh �srlinux::interface���Qh.]�hNh0j  u��bh�)��N}�(h�4�h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhKu��bu��be�_Operator__name��equality�h�h�h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhKu��bu��bu}�(hh �srlinux::interface���Qh.]�h�)��}�(h�h�hh �srlinux::interface���Qhjh�ubahMwh0h2)��N}�(hhhKu��bu��bhd)��}�(h(�ethernet_duplex_mode_t�hh�*srlinux::interface::ethernet_duplex_mode_t�hjhm)��}�(hpNhqNh(j2  hh �srlinux::interface���QhtNhuNu}�h0h)��N}�(hK	hK(hKhhhK(u��bs��bhtXQ  
When auto-negotiate is true, this sets the duplex mode that will be advertised to the peer.  When auto-negotiate is false, this directly sets the duplex mode of the interface.
Source type expression:

    srl_nokia-interfaces.yang:
    L1201:    type enumeration {
    L1202:      enum full;
    L1203:      enum half;
    L1204:    }

�hph
)��}�(h�string�hh)��N}�(hK#hK(hK)hhhK(u��bhK(hK(hK)hK#hM�hh �srlinux::interface���Qubh�h�)��N}�(h�Kh�]�(h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hK3hK(hK7hhhK(u��bhK(hK(hK7hK3hM�hh �srlinux::interface���Qubh(jM  h�jM  h�]�hh �srlinux::interface���Qh.]�hNh0jN  u��bh�)��N}�(h�]�(h�)��N}�(h�full�h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhK(u��bu��bh�)��N}�(h�half�h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhK(u��bu��beh�jZ  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhK(u��bu��beh�h�h�jH  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhK(u��bu��bu}�(hh �srlinux::interface���Qh.]�h�)��}�(h�jA  hh �srlinux::interface���Qhjj>  ubahM�h0h2)��N}�(hhhK(u��bu��bhd)��}�(h(�ethernet_port_speed_t�hh�)srlinux::interface::ethernet_port_speed_t�hjhm)��}�(hpNhqNh(j�  hh �srlinux::interface���QhtNhuNu}�h0h)��N}�(hK	hK5hKhhhK5u��bs��bhtX�  
The speed of the port or channel

The default speed of a port (when there is no configured value and auto-negotiation is disabled or unsupported) depends on the platform and port/connector number as follows:

mgmt0 and mgmt0-standby ports: 1G
J2 IMM ports 1-32:  100G
J2 IMM ports 33-36: 100G
7220-D1 ports 1-48: 1G
7220-D1 ports 49-52: 10G
7220-D2/D2L ports 1-48: 25G
7220-D2/D2L ports 49-56: 100G
7220-D2L ports 57-58: 10G
7220-D3 ports 1-2: 10G
7220-D3 ethernet-1/[3-34]: 100G
7220-D3 ethernet-1/[3-33]/n: 25G
7220-D3L ethernet-1/[1-32]: 100G
7220-D3L ethernet-1/[1-31]/n: 25G
7220-D3L ports 33-34: 10G
7220-D5 ports 1-32: 400G
7220-D5 ports 33-38: 10G
7220-H2 ports 1-128: 100G
7220-H3 ports 1-2: 10G
7220-H3 ports 3-34: 400G

Supported speeds:
mgmt0 and mgmt0-standby ports: 1G
J2 IMM ports 1-32: 40G, 100G [note1]
J2 IMM ports 33-36: 40G, 100G, 400G
7220-D1 ports 1-48: 10M, 100M, 1G
7220-D1 ports 49-52: 10G
7220-D2/D2L ports 1-48: 1G, 10G, 25G [note2]
7220-D2/D2L ports 49-56: 40G, 100G
7220-D2L ports 57-58: 10G
7220-D3 ports 1-2: 10G
7220-D3 ethernet-1/[3-34]: 40G, 100G
7220-D3 ethernet-1/[3-33]/n: 10G, 25G
7220-D3L ethernet-1/[1-32]: 40G, 100G
7220-D3L ethernet-1/[1-31]/n: 10G, 25G
7220-D3L ports 33-34: 10G
7220-D5 ports 1-32: 40G, 100G, 400G
7220-D5 ports 33-38: 10G
7220-H2 ports 1-128: 100G
7220-H3 ports 1-2: 10G
7220-H3 ports 3-34: 40G, 100G, 400G

[note1] Ports 9-12 cannot operate at different port speeds (some at 40G and others at 100G). The required speed of ports 9-12 is based on the port-speed of the lowest-numbered configured port in this block; if any higher-numbered port in the block is configured with a different port speed that port will not come up.

[note2]
 On 7220-D2: if one port in each consecutive group of 4 ports (1-4, 5-8, .. , 45-48) is 25G the other 3 ports must also be 25G; if one port in each consecutive group of 4 ports (1-4, 5-8, .. , 45-48) is 1G or 10G the other 3 ports must also be 1G or 10G.
 On 7220-D2L: if one port in each consecutive group of 12 ports (1-12, 13-24, 25-36, 37-48) is 25G the other 11 ports must also be 25G; if one port in each consecutive group of 12 ports (1-12, 13-24, 25-36, 37-48) is 1G or 10G the other 11 ports must also be 1G or 10G.

7250 IXR details:
If the interface corresponds to a connector that has no installed transceiver then the value is accepted without any checking or restriction, and info from state will display the configured value.  Otherwise if the configured port-speed is NOT supported by the installed transceiver the port is forced operationally down.
Source type expression:

    srl_nokia-interfaces.yang:
    L1257:    type enumeration {
    L1258:      enum 10M {
    L1259:        if-feature "srl_nokia-feat:platform-7220-d1";
    L1260:      }
    L1261:      enum 100M {
    L1262:        if-feature "srl_nokia-feat:platform-7220-d1 or srl_nokia-feat:platform-7210-sas12 or srl_nokia-feat:platform-7210-sas24 or srl_nokia-feat:platform-7210-sas24g";
    L1263:      }
    L1264:      enum 1G;
    L1265:      enum 10G {
    L1266:        if-feature "srl_nokia-feat:platform-7250-j2 or srl_nokia-feat:platform-7220-d1 or srl_nokia-feat:platform-7220-d2 or srl_nokia-feat:platform-7220-d3 or srl_nokia-feat:platform-7220-d5 or srl_nokia-feat:platform-7220-h3 or srl_nokia-feat:platform-vsrl or srl_nokia-feat:platform-7220-bcmsvk or srl_nokia-feat:platform-7210-sas12 or srl_nokia-feat:platform-7210-sas24 or srl_nokia-feat:platform-7210-sas24g";
    L1267:      }
    L1268:      enum 25G {
    L1269:        if-feature "srl_nokia-feat:platform-7220-d2 or (srl_nokia-feat:port-breakout and srl_nokia-feat:platform-7220-d3) or srl_nokia-feat:platform-vsrl or srl_nokia-feat:platform-7210-sas12 or srl_nokia-feat:platform-7210-sas24 or srl_nokia-feat:platform-7210-sas24g";
    L1270:      }
    L1271:      enum 40G {
    L1272:        if-feature "srl_nokia-feat:platform-7250-ixr or srl_nokia-feat:platform-7220-d2 or srl_nokia-feat:platform-7220-d3 or srl_nokia-feat:platform-7220-d5 or srl_nokia-feat:platform-7220-h3 or srl_nokia-feat:platform-crimson or srl_nokia-feat:platform-vsrl";
    L1273:      }
    L1274:      enum 50G {
    L1275:        if-feature "srl_nokia-feat:disabled";
    L1276:      }
    L1277:      enum 100G {
    L1278:        if-feature "srl_nokia-feat:platform-7250-ixr or srl_nokia-feat:platform-7250-ixr-e or srl_nokia-feat:platform-7220-d2 or srl_nokia-feat:platform-7220-d3 or srl_nokia-feat:platform-7220-d5 or srl_nokia-feat:platform-7220-h2 or srl_nokia-feat:platform-7220-h3 or srl_nokia-feat:platform-crimson or srl_nokia-feat:platform-vsrl or srl_nokia-feat:platform-7220-bcmsvk or srl_nokia-feat:platform-7210-sas12 or srl_nokia-feat:platform-7210-sas24 or srl_nokia-feat:platform-7210-sas24g";
    L1279:      }
    L1280:      enum 200G {
    L1281:        if-feature "srl_nokia-feat:disabled";
    L1282:      }
    L1283:      enum 400G {
    L1284:        if-feature "srl_nokia-feat:platform-7250-ixr or srl_nokia-feat:platform-7250-ixr-e or srl_nokia-feat:platform-7250-j2 or srl_nokia-feat:platform-7220-d5 or srl_nokia-feat:platform-7220-h3 or srl_nokia-feat:platform-crimson";
    L1285:      }
    L1286:      enum 1T {
    L1287:        if-feature "srl_nokia-feat:disabled";
    L1288:      }
    L1289:    }

�hph
)��}�(h�string�hh)��N}�(hK"hK5hK(hhhK5u��bhK5hK5hK(hK"hMKhh �srlinux::interface���Qubh�h�)��N}�(h�Kh�]�(h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hK2hK5hK6hhhK5u��bhK5hK5hK6hK2hMYhh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hNh0j�  u��bh�)��N}�(h�]�(h�)��N}�(h�10M�h�]�hh �srlinux::interface���Qh.]�hMch0h2)��N}�(hhhK6u��bu��bh�)��N}�(h�100M�h�]�hh �srlinux::interface���Qh.]�hMnh0h2)��N}�(hhhK7u��bu��bh�)��N}�(h�1G�h�]�hh �srlinux::interface���Qh.]�hMzh0h2)��N}�(hhhK8u��bu��bh�)��N}�(h�10G�h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhK9u��bu��bh�)��N}�(h�25G�h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhK:u��bu��bh�)��N}�(h�40G�h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhK;u��bu��bh�)��N}�(h�50G�h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhK<u��bu��bh�)��N}�(h�100G�h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhK=u��bu��bh�)��N}�(h�200G�h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhK>u��bu��bh�)��N}�(h�400G�h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhK?u��bu��bh�)��N}�(h�1T�h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhK@u��bu��beh�j�  h�]�hh �srlinux::interface���Qh.]�hM]h0h2)��N}�(hhhK5u��bu��beh�h�h�j�  h�]�hh �srlinux::interface���Qh.]�hMZh0h2)��N}�(hhhK5u��bu��bu}�(hh �srlinux::interface���Qh.]�h�)��}�(h�j�  hh �srlinux::interface���Qhjj�  ubahM,h0h2)��N}�(hhhK5u��bu��bhd)��}�(h(�ethernet_reload_delay_t�hh�+srlinux::interface::ethernet_reload_delay_t�hjhm)��}�(hpNhqNh(jO  hh �srlinux::interface���QhtNhuNu}�h0h)��N}�(hK	hK�hK hhhK�u��bs��bhtX�  
Configure reload-delay timer for Ethernet interfaces.

The reload-delay timer starts when the associated XDP interface state is learned. While the timer is
running, the interface transceiver laser is disabled to avoid attracting traffic from the connected
device at the other end of the interface. The reload-delay timer should be used in multi-homing
interfaces and be set to a value long enough to allow the system to recover all the network protocols
upon reboot, before start attracting traffic from the multi-homed device.
Source type expression:

    srl_nokia-interfaces.yang:
    L1390:    type uint32 {
    L1391:      range "1..86400";
    L1392:    }

�hph
)��}�(h�srlinux::types::uint32�hh)��N}�(hK$hK�hK:hhhK�u��bhK�hK�hK:hK$hM�hh �srlinux::interface���Qubh�h��And���)��N}�(�_Operator__number_arguments�Kh�]�(h��GreaterThanOrEqual���)��N}�(�_Operator__number_arguments�Kh�]�(h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKDhK�hKHhhhK�u��bhK�hK�hKHhKDhM�hh �srlinux::interface���Qubh(js  h�js  h�]�hh �srlinux::interface���Qh.]�hNh0jt  u��bh�)��N}�(hKh�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��be�_Operator__name��greater than or equal�h�jn  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��bh��LessThanOrEqual���)��N}�(�_Operator__number_arguments�Kh�]�(h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKRhK�hKVhhhK�u��bhK�hK�hKVhKRhM�hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hNh0j�  u��bh�)��N}�(hJ�Q h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��be�_Operator__name��less than or equal�h�j�  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��be�_Operator__name��and�h�jh  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��bu}�(hh �srlinux::interface���Qh.]�h�)��}�(h�j^  hh �srlinux::interface���Qhjj[  ubahM�h0h2)��N}�(hhhK�u��bu��bhd)��}�(h(�ethernet_standby_signaling_t�hh�0srlinux::interface::ethernet_standby_signaling_t�hjhm)��}�(hpNhqNh(j�  hh �srlinux::interface���QhtNhuNu}�h0h)��N}�(hK	hK�hK%hhhK�u��bs��bhtX{  
Indicates the standby-signaling used in the interface.

An application using a port-based redundancy mechanism will trigger the standby signaling on the ethernet
interface if the interface is selected as standby.
Source type expression:

    srl_nokia-interfaces.yang:
    L1369:    type enumeration {
    L1370:      enum power-off;
    L1371:      enum lacp;
    L1372:    }

�hph
)��}�(h�string�hh)��N}�(hK)hK�hK/hhhK�u��bhK�hK�hK/hK)hM�hh �srlinux::interface���Qubh�h�)��N}�(h�Kh�]�(h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hK9hK�hK=hhhK�u��bhK�hK�hK=hK9hM�hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hNh0j�  u��bh�)��N}�(h�]�(h�)��N}�(h�	power-off�h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��bh�)��N}�(h�lacp�h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��beh�j�  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��beh�h�h�j�  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��bu}�(hh �srlinux::interface���Qh.]�h�)��}�(h�j�  hh �srlinux::interface���Qhjj�  ubahM�h0h2)��N}�(hhhK�u��bu��bhd)��}�(h(�lag_lacp_fallback_timeout_t�hh�/srlinux::interface::lag_lacp_fallback_timeout_t�hjhm)��}�(hpNhqNh(j0  hh �srlinux::interface���QhtNhuNu}�h0h)��N}�(hK	hK�hK$hhhK�u��bs��bht��
Specifies the LACP-fallback timeout interval in seconds
Source type expression:

    srl_nokia-interfaces-lag.yang:
    L204:    type uint16 {
    L205:      range "4..3600";
    L206:    }

�hph
)��}�(h�srlinux::types::uint16�hh)��N}�(hK(hK�hK>hhhK�u��bhK�hK�hK>hK(hM�hh �srlinux::interface���Qubh�jd  )��N}�(jg  Kh�]�(jj  )��N}�(jm  Kh�]�(h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKHhK�hKLhhhK�u��bhK�hK�hKLhKHhM�hh �srlinux::interface���Qubh(jN  h�jN  h�]�hh �srlinux::interface���Qh.]�hNh0jO  u��bh�)��N}�(hKh�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��bej�  j�  h�jI  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��bj�  )��N}�(j�  Kh�]�(h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKVhK�hKZhhhK�u��bhK�hK�hKZhKVhM�hh �srlinux::interface���Qubh(jr  h�jr  h�]�hh �srlinux::interface���Qh.]�hNh0js  u��bh�)��N}�(hMh�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��bej�  j�  h�jm  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��bej�  j�  h�jF  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��bu}�(hh �srlinux::interface���Qh.]�h�)��}�(h�j?  hh �srlinux::interface���Qhjj<  ubahMwh0h2)��N}�(hhhK�u��bu��bhd)��}�(h(�lag_min_links_t�hh�#srlinux::interface::lag_min_links_t�hjhm)��}�(hpNhqNh(j�  hh �srlinux::interface���QhtNhuNu}�h0h)��N}�(hK	hK�hKhhhK�u��bs��bht��
Specifies the mininum number of member
interfaces that must be active for the aggregate interface
to be available
Source type expression:

    srl_nokia-interfaces-lag.yang:
    L173:    type uint16 {
    L174:      range "1..64";
    L175:    }

�hph
)��}�(h�srlinux::types::uint16�hh)��N}�(hKhK�hK2hhhK�u��bhK�hK�hK2hKhM� hh �srlinux::interface���Qubh�jd  )��N}�(jg  Kh�]�(jj  )��N}�(jm  Kh�]�(h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hK<hK�hK@hhhK�u��bhK�hK�hK@hK<hM� hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hNh0j�  u��bh�)��N}�(hKh�]�hh �srlinux::interface���Qh.]�hM� h0h2)��N}�(hhhK�u��bu��bej�  j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hM� h0h2)��N}�(hhhK�u��bu��bj�  )��N}�(j�  Kh�]�(h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKJhK�hKNhhhK�u��bhK�hK�hKNhKJhM� hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hNh0j�  u��bh�)��N}�(hK@h�]�hh �srlinux::interface���Qh.]�hM� h0h2)��N}�(hhhK�u��bu��bej�  j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hM� h0h2)��N}�(hhhK�u��bu��bej�  j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hM� h0h2)��N}�(hhhK�u��bu��bu}�(hh �srlinux::interface���Qh.]�h�)��}�(h�j�  hh �srlinux::interface���Qhjj�  ubahM� h0h2)��N}�(hhhK�u��bu��bhd)��}�(h(�linux_device_name_t�hh�'srlinux::interface::linux_device_name_t�hjhm)��}�(hpNhqNh(j  hh �srlinux::interface���QhtNhuNu}�h0h)��N}�(hK	hK�hKhhhK�u��bs��bhtX?  
Slow path device name of this interface in Linux

This is the interface name that can be used to look at this interface within Linux.

If not specified it is auto-derived by the system.
Source type expression:

    srl_nokia-interfaces-vxdp.yang:
    L56:    type string {
    L57:      length "0..10";
    L58:    }

�hph
)��}�(h�string�hh)��N}�(hK hK�hK&hhhK�u��bhK�hK�hK&hK hM"hh �srlinux::interface���Qubh�jd  )��N}�(jg  Kh�]�(jj  )��N}�(jm  Kh�]�(�inmanta.ast.statements.call��FunctionCall���)��N}�(h(h
)��}�(h�std::length�hh)��N}�(hK0hK�hK;hhhK�u��bhK�hK�hK;hK0hM%"hh �srlinux::interface���Qub�	arguments�]�h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hK<hK�hK@hhhK�u��bhK�hK�hK@hK<hM0"hh �srlinux::interface���Qubh(jG  h�jG  h�]�hh �srlinux::interface���Qh.]�hNh0jH  u��ba�wrapped_kwargs�]�hh2)��N}�(hhhK�u��b�kwargs�}��function�Nh�]�jC  ah�]�hh �srlinux::interface���Qh.]�h�)��}�(h�j<  hh �srlinux::interface���Qhjj9  ubahNh0Nu��bh�)��N}�(hK h�]�hh �srlinux::interface���Qh.]�hM5"h0h2)��N}�(hhhK�u��bu��bej�  j�  h�j3  h�]�hh �srlinux::interface���Qh.]�j_  ahM2"h0h2)��N}�(hhhK�u��bu��bj�  )��N}�(j�  Kh�]�(j6  )��N}�(h(h
)��}�(h�std::length�hh)��N}�(hKKhK�hKVhhhK�u��bhK�hK�hKVhKKhM@"hh �srlinux::interface���QubjA  ]�h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKWhK�hK[hhhK�u��bhK�hK�hK[hKWhMK"hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hNh0j�  u��bajR  ]�hh2)��N}�(hhhK�u��bjW  }�jY  Nh�]�j�  ah�]�hh �srlinux::interface���Qh.]�h�)��}�(h�j~  hh �srlinux::interface���Qhjj{  ubahNh0Nu��bh�)��N}�(hK
h�]�hh �srlinux::interface���Qh.]�hMP"h0h2)��N}�(hhhK�u��bu��bej�  j�  h�jx  h�]�hh �srlinux::interface���Qh.]�j�  ahMM"h0h2)��N}�(hhhK�u��bu��bej�  j�  h�j0  h�]�hh �srlinux::interface���Qh.]�(j_  j�  ehM7"h0h2)��N}�(hhhK�u��bu��bu}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�j)  hh �srlinux::interface���Qhjj&  ubj_  j�  ehM�!h0h2)��N}�(hhhK�u��bu��bhd)��}�(h(�subinterface_index_t�hh�(srlinux::interface::subinterface_index_t�hjhm)��}�(hpNhqNh(j�  hh �srlinux::interface���QhtNhuNu}�h0h)��N}�(hK	hK�hKhhhK�u��bs��bht��
The index of the subinterface, or logical interface number
Source type expression:

    srl_nokia-interfaces.yang:
    L531:    type uint32 {
    L532:      range "0..9999";
    L533:    }

�hph
)��}�(h�srlinux::types::uint32�hh)��N}�(hK!hK�hK7hhhK�u��bhK�hK�hK7hK!hM�#hh �srlinux::interface���Qubh�jd  )��N}�(jg  Kh�]�(jj  )��N}�(jm  Kh�]�(h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKAhK�hKEhhhK�u��bhK�hK�hKEhKAhM�#hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hNh0j�  u��bh�)��N}�(hK h�]�hh �srlinux::interface���Qh.]�hM�#h0h2)��N}�(hhhK�u��bu��bej�  j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hM�#h0h2)��N}�(hhhK�u��bu��bj�  )��N}�(j�  Kh�]�(h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKOhK�hKShhhK�u��bhK�hK�hKShKOhM�#hh �srlinux::interface���Qubh(j  h�j  h�]�hh �srlinux::interface���Qh.]�hNh0j  u��bh�)��N}�(hM'h�]�hh �srlinux::interface���Qh.]�hM�#h0h2)��N}�(hhhK�u��bu��bej�  j�  h�j  h�]�hh �srlinux::interface���Qh.]�hM�#h0h2)��N}�(hhhK�u��bu��bej�  j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hM�#h0h2)��N}�(hhhK�u��bu��bu}�(hh �srlinux::interface���Qh.]�h�)��}�(h�j�  hh �srlinux::interface���Qhjj�  ubahM�#h0h2)��N}�(hhhK�u��bu��bhd)��}�(h(�subinterface_ip_mtu_t�hh�)srlinux::interface::subinterface_ip_mtu_t�hjhm)��}�(hpNhqNh(j?  hh �srlinux::interface���QhtNhuNu}�h0h)��N}�(hK	hK�hKhhhK�u��bs��bhtX  
IP MTU of the subinterface in bytes, including the IP header but excluding Ethernet encapsulation

IP MTU specifies the maximum sized IPv4 or IPv6 packet that can be transmitted on the subinterface. If an IPv4 or IPv6 packet exceeds this size it is dropped and this may result in the generation of an ICMP error message back to the source.

The default IP MTU for a subinterface is taken from /system/mtu/default-ip-mtu.  For the mgmt0 and mgmt0-standby subinterfaces the default is the associated interface MTU minus the Ethernet encapsulation overhead.

The IP MTU is not configurable for subinterfaces of loopback interfaces.

The 7220 IXR-D1, 7220 IXR-D2, 7220 IXR-D3, 7220 IXR-H2, and 7220 IXR-H3 systems support a maximum IP MTU of 9398 bytes.

Each 7250 IXR IMM supports a maximum of 4 different IP MTU values. 7220 IXR systems do not have any limit on the maximum number of different IP MTU values.
Source type expression:

    srl_nokia-interfaces.yang:
    L455:    type uint16 {
    L456:      range "1280..9486";
    L457:    }

�hph
)��}�(h�srlinux::types::uint16�hh)��N}�(hK"hK�hK8hhhK�u��bhK�hK�hK8hK"hM�$hh �srlinux::interface���Qubh�jd  )��N}�(jg  Kh�]�(jj  )��N}�(jm  Kh�]�(h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKBhK�hKFhhhK�u��bhK�hK�hKFhKBhM%hh �srlinux::interface���Qubh(j]  h�j]  h�]�hh �srlinux::interface���Qh.]�hNh0j^  u��bh�)��N}�(hM h�]�hh �srlinux::interface���Qh.]�hM	%h0h2)��N}�(hhhK�u��bu��bej�  j�  h�jX  h�]�hh �srlinux::interface���Qh.]�hM%h0h2)��N}�(hhhK�u��bu��bj�  )��N}�(j�  Kh�]�(h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKShK�hKWhhhK�u��bhK�hK�hKWhKShM%hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hNh0j�  u��bh�)��N}�(hM%h�]�hh �srlinux::interface���Qh.]�hM%h0h2)��N}�(hhhK�u��bu��bej�  j�  h�j|  h�]�hh �srlinux::interface���Qh.]�hM%h0h2)��N}�(hhhK�u��bu��bej�  j�  h�jU  h�]�hh �srlinux::interface���Qh.]�hM%h0h2)��N}�(hhhK�u��bu��bu}�(hh �srlinux::interface���Qh.]�h�)��}�(h�jN  hh �srlinux::interface���QhjjK  ubahM�$h0h2)��N}�(hhhK�u��bu��bhd)��}�(h(�subinterface_l2_mtu_t�hh�)srlinux::interface::subinterface_l2_mtu_t�hjhm)��}�(hpNhqNh(j�  hh �srlinux::interface���QhtNhuNu}�h0h)��N}�(hK	hMhKhhhMu��bs��bhtX  
Layer-2 MTU of the subinterface in bytes, including the Ethernet header and VLAN tags, and excluding 4-bytes FCS.

L2 MTU specifies the maximum sized Ethernet frame that can be transmitted on the subinterface. If a frame exceeds this size it is discarded. If the l2-mtu of the subinterface exceeds the port-mtu of the associated
interface, the subinterface will remain operationally down.

The default value for a subinterface is taken from /system/mtu/default-l2-mtu. The L2 MTU is only configurable for bridged subinterfaces.

The 7220 IXR-D1, 7220 IXR-D2, 7220 IXR-D3, 7220 IXR-H2, and 7220 IXR-H3 systems support a maximum L2 MTU of 9412 bytes.
Source type expression:

    srl_nokia-interfaces.yang:
    L480:    type uint16 {
    L481:      range "1500..9500";
    L482:    }

�hph
)��}�(h�srlinux::types::uint16�hh)��N}�(hK"hMhK8hhhMu��bhMhMhK8hK"hMl)hh �srlinux::interface���Qubh�jd  )��N}�(jg  Kh�]�(jj  )��N}�(jm  Kh�]�(h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKBhMhKFhhhMu��bhMhMhKFhKBhM�)hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hNh0j�  u��bh�)��N}�(hM�h�]�hh �srlinux::interface���Qh.]�hM�)h0h2)��N}�(hhhMu��bu��bej�  j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hM�)h0h2)��N}�(hhhMu��bu��bj�  )��N}�(j�  Kh�]�(h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKShMhKWhhhMu��bhMhMhKWhKShM�)hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hNh0j�  u��bh�)��N}�(hM%h�]�hh �srlinux::interface���Qh.]�hM�)h0h2)��N}�(hhhMu��bu��bej�  j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hM�)h0h2)��N}�(hhhMu��bu��bej�  j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hM�)h0h2)��N}�(hhhMu��bu��bu}�(hh �srlinux::interface���Qh.]�h�)��}�(h�j�  hh �srlinux::interface���Qhjj�  ubahMC)h0h2)��N}�(hhhMu��bu��bhd)��}�(h(�subinterface_mpls_mtu_t�hh�+srlinux::interface::subinterface_mpls_mtu_t�hjhm)��}�(hpNhqNh(j)  hh �srlinux::interface���QhtNhuNu}�h0h)��N}�(hK	hM hK hhhM u��bs��bhtX  
MPLS MTU of the subinterface in bytes, including the transmitted label stack.

MPLS MTU specifies the maximum sized MPLS packet that can be transmitted on the subinterface. If an MPLS packet containing any payload exceeds this size then it is dropped. If the payload of the dropped packet is IPv4 or IPv6 then this may also result in the generation of an ICMP error message that is either tunneled or sent back to the source.

The default MPLS MTU for a subinterface is taken from /system/mtu/default-mpls-mtu.

The MPLS MTU is not configurable for subinterfaces of loopback interfaces.

Each 7250 IXR IMM supports a maximum of 4 different MPLS MTU values.
Source type expression:

    srl_nokia-interfaces.yang:
    L499:    type uint16 {
    L500:      range "1284..9496";
    L501:    }

�hph
)��}�(h�srlinux::types::uint16�hh)��N}�(hK$hM hK:hhhM u��bhM hM hK:hK$hM�,hh �srlinux::interface���Qubh�jd  )��N}�(jg  Kh�]�(jj  )��N}�(jm  Kh�]�(h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKDhM hKHhhhM u��bhM hM hKHhKDhM�,hh �srlinux::interface���Qubh(jG  h�jG  h�]�hh �srlinux::interface���Qh.]�hNh0jH  u��bh�)��N}�(hMh�]�hh �srlinux::interface���Qh.]�hM�,h0h2)��N}�(hhhM u��bu��bej�  j�  h�jB  h�]�hh �srlinux::interface���Qh.]�hM�,h0h2)��N}�(hhhM u��bu��bj�  )��N}�(j�  Kh�]�(h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKUhM hKYhhhM u��bhM hM hKYhKUhM-hh �srlinux::interface���Qubh(jk  h�jk  h�]�hh �srlinux::interface���Qh.]�hNh0jl  u��bh�)��N}�(hM%h�]�hh �srlinux::interface���Qh.]�hM-h0h2)��N}�(hhhM u��bu��bej�  j�  h�jf  h�]�hh �srlinux::interface���Qh.]�hM-h0h2)��N}�(hhhM u��bu��bej�  j�  h�j?  h�]�hh �srlinux::interface���Qh.]�hM-h0h2)��N}�(hhhM u��bu��bu}�(hh �srlinux::interface���Qh.]�h�)��}�(h�j8  hh �srlinux::interface���Qhjj5  ubahM�,h0h2)��N}�(hhhM u��bu��bhd)��}�(h(�&transceiver_forward_error_correction_t�hh�:srlinux::interface::transceiver_forward_error_correction_t�hjhm)��}�(hpNhqNh(j�  hh �srlinux::interface���QhtNhuNu}�h0h)��N}�(hK	hM4hK/hhhM4u��bs��bhtX�  
The forward error correction algorithm to use on the optical channel. The same FEC algorithm must be used at both ends of a link.

25G interfaces support disabled, base-r rs-108 and rs-528; configuring other (incompatible) options will bring the port down. The FEC requirement for a 25G interface depends on the cable type. A CA-N DAC cable has a loss specification that requires no FEC. A CA-S DAC cable requires base-r FEC at a minimum. A CA-L DAC cable requires the stronger rs-108 Reed Solomon FEC.

100G interfaces support disabled and rs-528; configuring other (incompatible) options will bring the port down.

400G interfaces require rs-544; configuring other (unsupported) options will bring the port down.
Source type expression:

    srl_nokia-interfaces.yang:
    L806:    type enumeration {
    L807:      enum disabled;
    L808:      enum rs-528;
    L809:      enum rs-544;
    L810:      enum base-r {
    L811:        description
    L812:          "BASE-R FEC algorithm for 25GbE interfaces (also known as fire-code).";
    L813:      }
    L814:      enum rs-108 {
    L815:        description
    L816:          "Reed Solomon FEC algorithm for 25GbE interfaces.";
    L817:      }
    L818:    }

�hph
)��}�(h�string�hh)��N}�(hK3hM4hK9hhhM4u��bhM4hM4hK9hK3hMo0hh �srlinux::interface���Qubh�h�)��N}�(h�Kh�]�(h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKChM4hKGhhhM4u��bhM4hM4hKGhKChM}0hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hNh0j�  u��bh�)��N}�(h�]�(h�)��N}�(h�disabled�h�]�hh �srlinux::interface���Qh.]�hM�0h0h2)��N}�(hhhM5u��bu��bh�)��N}�(h�rs-528�h�]�hh �srlinux::interface���Qh.]�hM�0h0h2)��N}�(hhhM6u��bu��bh�)��N}�(h�rs-544�h�]�hh �srlinux::interface���Qh.]�hM�0h0h2)��N}�(hhhM7u��bu��bh�)��N}�(h�base-r�h�]�hh �srlinux::interface���Qh.]�hM�0h0h2)��N}�(hhhM8u��bu��bh�)��N}�(h�rs-108�h�]�hh �srlinux::interface���Qh.]�hM�0h0h2)��N}�(hhhM9u��bu��beh�j�  h�]�hh �srlinux::interface���Qh.]�hM�0h0h2)��N}�(hhhM4u��bu��beh�h�h�j�  h�]�hh �srlinux::interface���Qh.]�hM~0h0h2)��N}�(hhhM4u��bu��bu}�(hh �srlinux::interface���Qh.]�h�)��}�(h�j�  hh �srlinux::interface���Qhjj�  ubahM?0h0h2)��N}�(hhhM4u��bu��bhd)��}�(h(�vhost_vhost_socket_mode_t�hh�-srlinux::interface::vhost_vhost_socket_mode_t�hjhm)��}�(hpNhqNh(j  hh �srlinux::interface���QhtNhuNu}�h0h)��N}�(hK	hMVhK"hhhMVu��bs��bhtX8  
The vhost-user socket mode

If set to server, the socket is created by SR Linux, if set to client SR Linux will connect to a pre-existing socket.
Source type expression:

    srl_nokia-interfaces-vxdp.yang:
    L139:    type enumeration {
    L140:      enum server;
    L141:      enum client;
    L142:    }

�hph
)��}�(h�string�hh)��N}�(hK&hMVhK,hhhMVu��bhMVhMVhK,hK&hM�5hh �srlinux::interface���Qubh�h�)��N}�(h�Kh�]�(h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hK6hMVhK:hhhMVu��bhMVhMVhK:hK6hM�5hh �srlinux::interface���Qubh(j7  h�j7  h�]�hh �srlinux::interface���Qh.]�hNh0j8  u��bh�)��N}�(h�]�(h�)��N}�(h�server�h�]�hh �srlinux::interface���Qh.]�hM�5h0h2)��N}�(hhhMVu��bu��bh�)��N}�(h�client�h�]�hh �srlinux::interface���Qh.]�hM�5h0h2)��N}�(hhhMVu��bu��beh�jD  h�]�hh �srlinux::interface���Qh.]�hM�5h0h2)��N}�(hhhMVu��bu��beh�h�h�j2  h�]�hh �srlinux::interface���Qh.]�hM�5h0h2)��N}�(hhhMVu��bu��bu}�(hh �srlinux::interface���Qh.]�h�)��}�(h�j+  hh �srlinux::interface���Qhjj(  ubahM�5h0h2)��N}�(hhhMVu��bu��bhd)��}�(h(�vhost_vhost_socket_queues_t�hh�/srlinux::interface::vhost_vhost_socket_queues_t�hjhm)��}�(hpNhqNh(jy  hh �srlinux::interface���QhtNhuNu}�h0h)��N}�(hK	hMehK$hhhMeu��bs��bhtX�  
The number of vhost-user queues

The number of queues are retrieved from the vhost-user socket if not configured. This should be set equivalent to the number of vCPUs allocated to the other end of the vhost-user interface. This value must not exceed the count of vCPUs provided as the vXDP cpu-set.
Source type expression:

    srl_nokia-interfaces-vxdp.yang:
    L150:    type uint16 {
    L151:      range "1..1024";
    L152:    }

�hph
)��}�(h�srlinux::types::uint16�hh)��N}�(hK(hMehK>hhhMeu��bhMehMehK>hK(hMc7hh �srlinux::interface���Qubh�jd  )��N}�(jg  Kh�]�(jj  )��N}�(jm  Kh�]�(h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKHhMehKLhhhMeu��bhMehMehKLhKHhMw7hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hNh0j�  u��bh�)��N}�(hKh�]�hh �srlinux::interface���Qh.]�hM{7h0h2)��N}�(hhhMeu��bu��bej�  j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hMx7h0h2)��N}�(hhhMeu��bu��bj�  )��N}�(j�  Kh�]�(h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKVhMehKZhhhMeu��bhMehMehKZhKVhM�7hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hNh0j�  u��bh�)��N}�(hM h�]�hh �srlinux::interface���Qh.]�hM�7h0h2)��N}�(hhhMeu��bu��bej�  j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hM�7h0h2)��N}�(hhhMeu��bu��bej�  j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hM}7h0h2)��N}�(hhhMeu��bu��bu}�(hh �srlinux::interface���Qh.]�h�)��}�(h�j�  hh �srlinux::interface���Qhjj�  ubahM47h0h2)��N}�(hhhMeu��bu��bh#�DefineEntity���)��}�(h(�BreakoutMode�hh� srlinux::interface::BreakoutMode�hj�inmanta.ast.entity��Entity���)��}�(�_Entity__name�j�  �_Entity__namespace�h �srlinux::interface���Q�parent_entities�]��child_entities�]��_attributes�}��implementations�]��
implements�]��implements_inherits���_Entity__default_values�}��
_index_def�]��_index�}��index_queue�}��_instance_list���htXK  
    Configuration of breakout options
    Yang definition can be found here: srl_nokia-interfaces.yang:L177

    :attr channel_speed: The speed of each channel (breakout port).
    :attr num_channels: The number of channels (breakout ports) supported by this connector.
    :rel parent_interface: Relation to parent container
    ��
normalized��u}�h0h)��N}�(hKhMshKhhhMsu��bs��bhtj  �
attributes�]�(h#�DefineAttribute���)��}�(hjh#�TypeDeclaration���)��}�(hph
)��}�(h�breakout_mode_channel_speed_t�hh)��N}�(hKhM|hK"hhhM|u��bhM|hM|hK"hKhM�:hh �srlinux::interface���Qub�multi���nullable��u}�(hh �srlinux::interface���Qh.]�hNh0j$  u��bh(h
)��}�(h�channel_speed�hh)��N}�(hK#hM|hK0hhhM|u��bhM|hM|hK0hK#hM�:hh �srlinux::interface���Qub�default�N�remove_default��u}�(hh �srlinux::interface���Qh.]�hNh0j3  u��bj  )��}�(hjj  )��}�(hph
)��}�(h�breakout_mode_num_channels_t�hh)��N}�(hKhM}hK!hhhM}u��bhM}hM}hK!hKhM;hh �srlinux::interface���Qubj)  �j*  �u}�(hh �srlinux::interface���Qh.]�hNh0jF  u��bh(h
)��}�(h�num_channels�hh)��N}�(hK"hM}hK.hhhM}u��bhM}hM}hK.hK"hM*;hh �srlinux::interface���Qubj8  Nj9  �u}�(hh �srlinux::interface���Qh.]�hNh0jS  u��be�parents�]�h
)��}�(h�srlinux::Base�hh)��N}�(hKhMshK*hhhMsu��bhMshMshK*hKhMq9hh �srlinux::interface���Qubau}�(hh �srlinux::interface���Qh.]�h�)��}�(h�jb  hh �srlinux::interface���Qhjj_  ubahML9h0h2)��N}�(hhhMsu��bu��bh#�DefineRelation���)��}�(�annotation_expression�]��annotations�]��left�h
)��}�(h�BreakoutMode�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM<;hh �srlinux::interface���Qubh
)��}�(h�breakout_mode�hh)��N}�(hK9hM�hKFhhhM�u��bhM�hM�hKFhK9hMu;hh �srlinux::interface���QubK K�����right�h
)��}�(h�srlinux::Interface�hh)��N}�(hK&hM�hK8hhhM�u��bhM�hM�hK8hK&hM^;hh �srlinux::interface���Qubh
)��}�(h�parent_interface�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhMM;hh �srlinux::interface���QubKK����ht�O
Relation to parent container
Peer relation: Configuration of breakout options
�u}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�j  hh �srlinux::interface���Qhjj|  ubh�)��}�(h�j�  hh �srlinux::interface���Qhjj�  ubehM<;h0h2)��N}�(hhhM�u��bu��bh#�DefineIndex���)��}�(hjh
)��}�(h�BreakoutMode�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM�;hh �srlinux::interface���Qubj  ]��parent_interface�au}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�j�  hh �srlinux::interface���Qhjj�  ubh�AttributeReferenceAnchor���)��}�(h�h)��N}�(hKhM�hK$hhhM�u��bhh �srlinux::interface���Qhjj�  �	attribute�j�  ubehM�;h0h2)��N}�(hhhM�u��bu��bj�  )��}�(h(�Ethernet�hh�srlinux::interface::Ethernet�hjj�  )��}�(j�  j�  j�  h �srlinux::interface���Qj�  ]�j�  ]�j�  }�j  ]�j  ]�j  �j  }�j  ]�j
  }�j  }�j  ��htX�  
    Yang definition can be found here: srl_nokia-interfaces.yang:L1130

    :attr aggregate_id: lag interface with which this interface is associated.
    :attr auto_negotiate: When set to true the interface uses auto-negotiation for speed, duplex and flow-control settings.

    When set to false, the transmission parameters are specified manually.
    :attr duplex_mode: When auto-negotiate is true, this sets the duplex mode that will be advertised to the peer.  When auto-negotiate is false, this directly sets the duplex mode of the interface.
    :attr forwarding_viable: If true:
    this LAG member link should be used for the transmission of traffic if all other LAG/port attributes allow it.

    If false:
    this LAG member link should not be used for the transmission of traffic.

    In all cases:
    This LAG member link should process any received frames when it is an active member link.  L2 protocols such as LLDP, LACP and micro-BFD should continue to be sent and processed.
    :attr lacp_port_priority: Configure the port priority for LACP.  This value is used to  determine which port should be activated with LACP fallback mode. Lower values are more preferred.
    :attr mac_address: MAC address of the interface

    If not configured, this is set to the hw-mac-address, which is populated depending on interface type:

    - For interfaces with a discoverable MAC address (either populated by an external system or present in hardware) the discovered value is populated.
    - For interfaces without a discoverable MAC address, the address is generated from a hash of the interface name and the chassis MAC address.

    When deleted, will revert back to the value of hw-mac-address.
    :attr port_speed: The speed of the port or channel

    The default speed of a port (when there is no configured value and auto-negotiation is disabled or unsupported) depends on the platform and port/connector number as follows:

    mgmt0 and mgmt0-standby ports: 1G
    J2 IMM ports 1-32:  100G
    J2 IMM ports 33-36: 100G
    7220-D1 ports 1-48: 1G
    7220-D1 ports 49-52: 10G
    7220-D2/D2L ports 1-48: 25G
    7220-D2/D2L ports 49-56: 100G
    7220-D2L ports 57-58: 10G
    7220-D3 ports 1-2: 10G
    7220-D3 ethernet-1/[3-34]: 100G
    7220-D3 ethernet-1/[3-33]/n: 25G
    7220-D3L ethernet-1/[1-32]: 100G
    7220-D3L ethernet-1/[1-31]/n: 25G
    7220-D3L ports 33-34: 10G
    7220-D5 ports 1-32: 400G
    7220-D5 ports 33-38: 10G
    7220-H2 ports 1-128: 100G
    7220-H3 ports 1-2: 10G
    7220-H3 ports 3-34: 400G

    Supported speeds:
    mgmt0 and mgmt0-standby ports: 1G
    J2 IMM ports 1-32: 40G, 100G [note1]
    J2 IMM ports 33-36: 40G, 100G, 400G
    7220-D1 ports 1-48: 10M, 100M, 1G
    7220-D1 ports 49-52: 10G
    7220-D2/D2L ports 1-48: 1G, 10G, 25G [note2]
    7220-D2/D2L ports 49-56: 40G, 100G
    7220-D2L ports 57-58: 10G
    7220-D3 ports 1-2: 10G
    7220-D3 ethernet-1/[3-34]: 40G, 100G
    7220-D3 ethernet-1/[3-33]/n: 10G, 25G
    7220-D3L ethernet-1/[1-32]: 40G, 100G
    7220-D3L ethernet-1/[1-31]/n: 10G, 25G
    7220-D3L ports 33-34: 10G
    7220-D5 ports 1-32: 40G, 100G, 400G
    7220-D5 ports 33-38: 10G
    7220-H2 ports 1-128: 100G
    7220-H3 ports 1-2: 10G
    7220-H3 ports 3-34: 40G, 100G, 400G

    [note1] Ports 9-12 cannot operate at different port speeds (some at 40G and others at 100G). The required speed of ports 9-12 is based on the port-speed of the lowest-numbered configured port in this block; if any higher-numbered port in the block is configured with a different port speed that port will not come up.

    [note2]
     On 7220-D2: if one port in each consecutive group of 4 ports (1-4, 5-8, .. , 45-48) is 25G the other 3 ports must also be 25G; if one port in each consecutive group of 4 ports (1-4, 5-8, .. , 45-48) is 1G or 10G the other 3 ports must also be 1G or 10G.
     On 7220-D2L: if one port in each consecutive group of 12 ports (1-12, 13-24, 25-36, 37-48) is 25G the other 11 ports must also be 25G; if one port in each consecutive group of 12 ports (1-12, 13-24, 25-36, 37-48) is 1G or 10G the other 11 ports must also be 1G or 10G.

    7250 IXR details:
    If the interface corresponds to a connector that has no installed transceiver then the value is accepted without any checking or restriction, and info from state will display the configured value.  Otherwise if the configured port-speed is NOT supported by the installed transceiver the port is forced operationally down.
    :attr reload_delay: Configure reload-delay timer for Ethernet interfaces.

    The reload-delay timer starts when the associated XDP interface state is learned. While the timer is
    running, the interface transceiver laser is disabled to avoid attracting traffic from the connected
    device at the other end of the interface. The reload-delay timer should be used in multi-homing
    interfaces and be set to a value long enough to allow the system to recover all the network protocols
    upon reboot, before start attracting traffic from the multi-homed device.
    :attr standby_signaling: Indicates the standby-signaling used in the interface.

    An application using a port-based redundancy mechanism will trigger the standby signaling on the ethernet
    interface if the interface is selected as standby.
    :rel flow_control: 
    :rel hold_time: Configure interface hold timers for Ethernet interfaces
    :rel parent_interface: Relation to parent container
    :rel storm_control: 
    :rel synce: This struct containing all attributes for SyncE in OTC/line/client ports.
    �j  �u}�h0h)��N}�(hKhM�hKhhhM�u��bs��bhtj�  j  ]�(j  )��}�(hjj  )��}�(hph
)��}�(h�string�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM Rhh �srlinux::interface���Qubj)  �j*  �u}�(hh �srlinux::interface���Qh.]�hNh0j�  u��bh(h
)��}�(h�aggregate_id�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhMRhh �srlinux::interface���Qubj8  h�)��N}�(h�inmanta.execute.util��	NoneValue���)��h�]�hh �srlinux::interface���Qh.]�hMRh0h2)��N}�(hhhM�u��bu��bj9  �u}�(hh �srlinux::interface���Qh.]�hNh0j	  u��bj  )��}�(hjj  )��}�(hph
)��}�(h�bool�hh)��N}�(hKhM�hK	hhhM�u��bhM�hM�hK	hKhMRhh �srlinux::interface���Qubj)  �j*  �u}�(hh �srlinux::interface���Qh.]�hNh0j"	  u��bh(h
)��}�(h�auto_negotiate�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM.Rhh �srlinux::interface���Qubj8  h�)��N}�(hj	  )��h�]�hh �srlinux::interface���Qh.]�hM1Rh0h2)��N}�(hhhM�u��bu��bj9  �u}�(hh �srlinux::interface���Qh.]�hNh0j/	  u��bj  )��}�(hjj  )��}�(hph
)��}�(h�ethernet_duplex_mode_t�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhMPRhh �srlinux::interface���Qubj)  �j*  �u}�(hh �srlinux::interface���Qh.]�hNh0jK	  u��bh(h
)��}�(h�duplex_mode�hh)��N}�(hKhM�hK(hhhM�u��bhM�hM�hK(hKhM]Rhh �srlinux::interface���Qubj8  h�)��N}�(hj	  )��h�]�hh �srlinux::interface���Qh.]�hM`Rh0h2)��N}�(hhhM�u��bu��bj9  �u}�(hh �srlinux::interface���Qh.]�hNh0jX	  u��bj  )��}�(hjj  )��}�(hph
)��}�(h�bool�hh)��N}�(hKhM�hK	hhhM�u��bhM�hM�hK	hKhMmRhh �srlinux::interface���Qubj)  �j*  �u}�(hh �srlinux::interface���Qh.]�hNh0jt	  u��bh(h
)��}�(h�forwarding_viable�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM�Rhh �srlinux::interface���Qubj8  h�)��N}�(hj	  )��h�]�hh �srlinux::interface���Qh.]�hM�Rh0h2)��N}�(hhhM�u��bu��bj9  �u}�(hh �srlinux::interface���Qh.]�hNh0j�	  u��bj  )��}�(hjj  )��}�(hph
)��}�(h�srlinux::types::uint16�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM�Rhh �srlinux::interface���Qubj)  �j*  �u}�(hh �srlinux::interface���Qh.]�hNh0j�	  u��bh(h
)��}�(h�lacp_port_priority�hh)��N}�(hKhM�hK/hhhM�u��bhM�hM�hK/hKhM�Rhh �srlinux::interface���Qubj8  h�)��N}�(hj	  )��h�]�hh �srlinux::interface���Qh.]�hM�Rh0h2)��N}�(hhhM�u��bu��bj9  �u}�(hh �srlinux::interface���Qh.]�hNh0j�	  u��bj  )��}�(hjj  )��}�(hph
)��}�(h�-srlinux::types::srl_nokia_common::mac_address�hh)��N}�(hKhM�hK2hhhM�u��bhM�hM�hK2hKhM�Rhh �srlinux::interface���Qubj)  �j*  �u}�(hh �srlinux::interface���Qh.]�hNh0j�	  u��bh(h
)��}�(h�mac_address�hh)��N}�(hK4hM�hK?hhhM�u��bhM�hM�hK?hK4hM�Rhh �srlinux::interface���Qubj8  h�)��N}�(hj	  )��h�]�hh �srlinux::interface���Qh.]�hM�Rh0h2)��N}�(hhhM�u��bu��bj9  �u}�(hh �srlinux::interface���Qh.]�hNh0j�	  u��bj  )��}�(hjj  )��}�(hph
)��}�(h�ethernet_port_speed_t�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhMShh �srlinux::interface���Qubj)  �j*  �u}�(hh �srlinux::interface���Qh.]�hNh0j�	  u��bh(h
)��}�(h�
port_speed�hh)��N}�(hKhM�hK&hhhM�u��bhM�hM�hK&hKhM)Shh �srlinux::interface���Qubj8  h�)��N}�(hj	  )��h�]�hh �srlinux::interface���Qh.]�hM,Sh0h2)��N}�(hhhM�u��bu��bj9  �u}�(hh �srlinux::interface���Qh.]�hNh0j�	  u��bj  )��}�(hjj  )��}�(hph
)��}�(h�ethernet_reload_delay_t�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhMLShh �srlinux::interface���Qubj)  �j*  �u}�(hh �srlinux::interface���Qh.]�hNh0j
  u��bh(h
)��}�(h�reload_delay�hh)��N}�(hKhM�hK*hhhM�u��bhM�hM�hK*hKhMZShh �srlinux::interface���Qubj8  h�)��N}�(hj	  )��h�]�hh �srlinux::interface���Qh.]�hM]Sh0h2)��N}�(hhhM�u��bu��bj9  �u}�(hh �srlinux::interface���Qh.]�hNh0j%
  u��bj  )��}�(hjj  )��}�(hph
)��}�(h�ethernet_standby_signaling_t�hh)��N}�(hKhM�hK!hhhM�u��bhM�hM�hK!hKhM�Shh �srlinux::interface���Qubj)  �j*  �u}�(hh �srlinux::interface���Qh.]�hNh0jA
  u��bh(h
)��}�(h�standby_signaling�hh)��N}�(hK#hM�hK4hhhM�u��bhM�hM�hK4hK#hM�Shh �srlinux::interface���Qubj8  h�)��N}�(hj	  )��h�]�hh �srlinux::interface���Qh.]�hM�Sh0h2)��N}�(hhhM�u��bu��bj9  �u}�(hh �srlinux::interface���Qh.]�hNh0jN
  u��bej]  ]�h
)��}�(h�srlinux::Base�hh)��N}�(hKhM�hK&hhhM�u��bhM�hM�hK&hKhM<hh �srlinux::interface���Qubau}�(hh �srlinux::interface���Qh.]�h�)��}�(h�jg
  hh �srlinux::interface���Qhjjd
  ubahM�;h0h2)��N}�(hhhM�u��bu��bjt  )��}�(jw  ]�jy  ]�j{  h
)��}�(h�Ethernet�hh)��N}�(hKhM�hK	hhhM�u��bhM�hM�hK	hKhM�Shh �srlinux::interface���Qubh
)��}�(h�ethernet�hh)��N}�(hK5hM�hK=hhhM�u��bhM�hM�hK=hK5hM�Shh �srlinux::interface���QubK K����j�  h
)��}�(h�srlinux::Interface�hh)��N}�(hK"hM�hK4hhhM�u��bhM�hM�hK4hK"hM�Shh �srlinux::interface���Qubh
)��}�(h�parent_interface�hh)��N}�(hK
hM�hKhhhM�u��bhM�hM�hKhK
hM�Shh �srlinux::interface���QubKK����ht�-
Relation to parent container
Peer relation: �u}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�j
  hh �srlinux::interface���Qhjj|
  ubh�)��}�(h�j�
  hh �srlinux::interface���Qhjj�
  ubehM�Sh0h2)��N}�(hhhM�u��bu��bj�  )��}�(hjh
)��}�(h�Ethernet�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM(Thh �srlinux::interface���Qubj  ]��parent_interface�au}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�j�
  hh �srlinux::interface���Qhjj�
  ubj�  )��}�(h�h)��N}�(hKhM�hK hhhM�u��bhh �srlinux::interface���Qhjj�
  j�  j�
  ubehMTh0h2)��N}�(hhhM�u��bu��bj�  )��}�(h(�Lag�hh�srlinux::interface::Lag�hjj�  )��}�(j�  j�
  j�  h �srlinux::interface���Qj�  ]�j�  ]�j�  }�j  ]�j  ]�j  �j  }�j  ]�j
  }�j  }�j  ��htX�  
    Container for options related to LAG
    Yang definition can be found here: srl_nokia-interfaces-lag.yang:L152

    :attr lacp_fallback_mode: Specifies lacp-fallback mode if enabled
    :attr lacp_fallback_timeout: Specifies the LACP-fallback timeout interval in seconds
    :attr lag_type: Sets the type of LAG, i.e., how it is
    configured / maintained
    :attr member_speed: Specifies the link speed of allowed member-links
    :attr min_links: Specifies the mininum number of member
    interfaces that must be active for the aggregate interface
    to be available
    :rel lacp: LACP parameters for the associated LAG
    :rel parent_interface: Relation to parent container
    �j  �u}�h0h)��N}�(hKhM�hKhhhM�u��bs��bhtj�
  j  ]�(j  )��}�(hjj  )��}�(hph
)��}�(h�<srlinux::types::srl_nokia_interfaces_lag::lacp_fallback_type�hh)��N}�(hKhM
hKAhhhM
u��bhM
hM
hKAhKhMKWhh �srlinux::interface���Qubj)  �j*  �u}�(hh �srlinux::interface���Qh.]�hNh0j�
  u��bh(h
)��}�(h�lacp_fallback_mode�hh)��N}�(hKChM
hKUhhhM
u��bhM
hM
hKUhKChMqWhh �srlinux::interface���Qubj8  h�)��N}�(hj	  )��h�]�hh �srlinux::interface���Qh.]�hMtWh0h2)��N}�(hhhM
u��bu��bj9  �u}�(hh �srlinux::interface���Qh.]�hNh0j�
  u��bj  )��}�(hjj  )��}�(hph
)��}�(h�lag_lacp_fallback_timeout_t�hh)��N}�(hKhMhK hhhMu��bhMhMhK hKhM�Whh �srlinux::interface���Qubj)  �j*  �u}�(hh �srlinux::interface���Qh.]�hNh0j  u��bh(h
)��}�(h�lacp_fallback_timeout�hh)��N}�(hK"hMhK7hhhMu��bhMhMhK7hK"hM�Whh �srlinux::interface���Qubj8  h�)��N}�(hj	  )��h�]�hh �srlinux::interface���Qh.]�hM�Wh0h2)��N}�(hhhMu��bu��bj9  �u}�(hh �srlinux::interface���Qh.]�hNh0j&  u��bj  )��}�(hjj  )��}�(hph
)��}�(h�2srlinux::types::srl_nokia_interfaces_lag::lag_type�hh)��N}�(hKhMhK7hhhMu��bhMhMhK7hKhM�Whh �srlinux::interface���Qubj)  �j*  �u}�(hh �srlinux::interface���Qh.]�hNh0jB  u��bh(h
)��}�(h�lag_type�hh)��N}�(hK9hMhKAhhhMu��bhMhMhKAhK9hM�Whh �srlinux::interface���Qubj8  h�)��N}�(hj	  )��h�]�hh �srlinux::interface���Qh.]�hM�Wh0h2)��N}�(hhhMu��bu��bj9  �u}�(hh �srlinux::interface���Qh.]�hNh0jO  u��bj  )��}�(hjj  )��}�(hph
)��}�(h�;srlinux::types::srl_nokia_interfaces_lag::member_speed_type�hh)��N}�(hKhMhK@hhhMu��bhMhMhK@hKhM-Xhh �srlinux::interface���Qubj)  �j*  �u}�(hh �srlinux::interface���Qh.]�hNh0jk  u��bh(h
)��}�(h�member_speed�hh)��N}�(hKBhMhKNhhhMu��bhMhMhKNhKBhMLXhh �srlinux::interface���Qubj8  h�)��N}�(hj	  )��h�]�hh �srlinux::interface���Qh.]�hMOXh0h2)��N}�(hhhMu��bu��bj9  �u}�(hh �srlinux::interface���Qh.]�hNh0jx  u��bj  )��}�(hjj  )��}�(hph
)��}�(h�lag_min_links_t�hh)��N}�(hKhMhKhhhMu��bhMhMhKhKhMgXhh �srlinux::interface���Qubj)  �j*  �u}�(hh �srlinux::interface���Qh.]�hNh0j�  u��bh(h
)��}�(h�	min_links�hh)��N}�(hKhMhKhhhMu��bhMhMhKhKhMrXhh �srlinux::interface���Qubj8  h�)��N}�(hj	  )��h�]�hh �srlinux::interface���Qh.]�hMuXh0h2)��N}�(hhhMu��bu��bj9  �u}�(hh �srlinux::interface���Qh.]�hNh0j�  u��bej]  ]�h
)��}�(h�srlinux::Base�hh)��N}�(hKhM�hK!hhhM�u��bhM�hM�hK!hKhMXThh �srlinux::interface���Qubau}�(hh �srlinux::interface���Qh.]�h�)��}�(h�j�  hh �srlinux::interface���Qhjj�  ubahM<Th0h2)��N}�(hhhM�u��bu��bjt  )��}�(jw  ]�jy  ]�j{  h
)��}�(h�Lag�hh)��N}�(hKhMhKhhhMu��bhMhMhKhKhM�Xhh �srlinux::interface���Qubh
)��}�(h�lag�hh)��N}�(hK0hMhK3hhhMu��bhMhMhK3hK0hM�Xhh �srlinux::interface���QubK K����j�  h
)��}�(h�srlinux::Interface�hh)��N}�(hKhMhK/hhhMu��bhMhMhK/hKhM�Xhh �srlinux::interface���Qubh
)��}�(h�parent_interface�hh)��N}�(hKhMhKhhhMu��bhMhMhKhKhM�Xhh �srlinux::interface���QubKK����ht�R
Relation to parent container
Peer relation: Container for options related to LAG
�u}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�j�  hh �srlinux::interface���Qhjj�  ubh�)��}�(h�j�  hh �srlinux::interface���Qhjj�  ubehM�Xh0h2)��N}�(hhhMu��bu��bj�  )��}�(hjh
)��}�(h�Lag�hh)��N}�(hKhMhK
hhhMu��bhMhMhK
hKhMYhh �srlinux::interface���Qubj  ]��parent_interface�au}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�j	  hh �srlinux::interface���Qhjj  ubj�  )��}�(h�h)��N}�(hKhMhKhhhMu��bhh �srlinux::interface���Qhjj  j�  j  ubehMYh0h2)��N}�(hhhMu��bu��bj�  )��}�(h(�Linux�hh�srlinux::interface::Linux�hjj�  )��}�(j�  j%  j�  h �srlinux::interface���Qj�  ]�j�  ]�j�  }�j  ]�j  ]�j  �j  }�j  ]�j
  }�j  }�j  ��htX�  
    Top-level container for configuration and state related to Linux interfaces
    Yang definition can be found here: srl_nokia-interfaces-vxdp.yang:L46

    :attr device_name: Slow path device name of this interface in Linux

    This is the interface name that can be used to look at this interface within Linux.

    If not specified it is auto-derived by the system.
    :rel parent_interface: Relation to parent container
    �j  �u}�h0h)��N}�(hKhMhKhhhMu��bs��bhtj5  j  ]�j  )��}�(hjj  )��}�(hph
)��}�(h�linux_device_name_t�hh)��N}�(hKhM%hKhhhM%u��bhM%hM%hKhKhM&[hh �srlinux::interface���Qubj)  �j*  �u}�(hh �srlinux::interface���Qh.]�hNh0jC  u��bh(h
)��}�(h�device_name�hh)��N}�(hKhM%hK%hhhM%u��bhM%hM%hK%hKhM3[hh �srlinux::interface���Qubj8  h�)��N}�(hj	  )��h�]�hh �srlinux::interface���Qh.]�hM6[h0h2)��N}�(hhhM%u��bu��bj9  �u}�(hh �srlinux::interface���Qh.]�hNh0jP  u��baj]  ]�h
)��}�(h�srlinux::Base�hh)��N}�(hKhMhK#hhhMu��bhMhMhK#hKhMMYhh �srlinux::interface���Qubau}�(hh �srlinux::interface���Qh.]�h�)��}�(h�ji  hh �srlinux::interface���Qhjjf  ubahM/Yh0h2)��N}�(hhhMu��bu��bjt  )��}�(jw  ]�jy  ]�j{  h
)��}�(h�Linux�hh)��N}�(hKhM(hKhhhM(u��bhM(hM(hKhKhME[hh �srlinux::interface���Qubh
)��}�(h�linux�hh)��N}�(hK2hM(hK7hhhM(u��bhM(hM(hK7hK2hMv[hh �srlinux::interface���QubK K����j�  h
)��}�(h�srlinux::Interface�hh)��N}�(hKhM(hK1hhhM(u��bhM(hM(hK1hKhMg[hh �srlinux::interface���Qubh
)��}�(h�parent_interface�hh)��N}�(hKhM(hKhhhM(u��bhM(hM(hKhKhMV[hh �srlinux::interface���QubKK����ht�y
Relation to parent container
Peer relation: Top-level container for configuration and state related to Linux interfaces
�u}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�j�  hh �srlinux::interface���Qhjj~  ubh�)��}�(h�j�  hh �srlinux::interface���Qhjj�  ubehME[h0h2)��N}�(hhhM(u��bu��bj�  )��}�(hjh
)��}�(h�Linux�hh)��N}�(hKhM.hKhhhM.u��bhM.hM.hKhKhM	\hh �srlinux::interface���Qubj  ]��parent_interface�au}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�j�  hh �srlinux::interface���Qhjj�  ubj�  )��}�(h�h)��N}�(hKhM.hKhhhM.u��bhh �srlinux::interface���Qhjj�  j�  j�  ubehM�[h0h2)��N}�(hhhM.u��bu��bj�  )��}�(h(�P4rt�hh�srlinux::interface::P4rt�hjj�  )��}�(j�  j�  j�  h �srlinux::interface���Qj�  ]�j�  ]�j�  }�j  ]�j  ]�j  �j  }�j  ]�j
  }�j  }�j  ��htX
  
    Top-level container for P4Runtime interface configuration and state
    Yang definition can be found here: srl_nokia-interfaces-p4rt.yang:L27

    :attr id: The numeric identifier used by the controller to address the interface

    This ID is the interface ifIndex by default, or is assigned by an
    external-to-the-device entity (e.g., an SDN management system) to
    establish an externally deterministic numeric reference for the interface.

    The programming entity must ensure that the ID is unique within the
    required context.

    Note that this identifier is used only when a numeric reference to the
    interface is required, it does not replace the unique name assigned to
    the interface.
    :rel parent_interface: Relation to parent container
    �j  �u}�h0h)��N}�(hKhM0hKhhhM0u��bs��bhtj�  j  ]�j  )��}�(hjj  )��}�(hph
)��}�(h�srlinux::types::uint32�hh)��N}�(hKhMChKhhhMCu��bhMChMChKhKhMi_hh �srlinux::interface���Qubj)  �j*  �u}�(hh �srlinux::interface���Qh.]�hNh0j�  u��bh(h
)��}�(h�id�hh)��N}�(hKhMChKhhhMCu��bhMChMChKhKhMs_hh �srlinux::interface���Qubj8  h�)��N}�(hj	  )��h�]�hh �srlinux::interface���Qh.]�hMv_h0h2)��N}�(hhhMCu��bu��bj9  �u}�(hh �srlinux::interface���Qh.]�hNh0j�  u��baj]  ]�h
)��}�(h�srlinux::Base�hh)��N}�(hKhM0hK"hhhM0u��bhM0hM0hK"hKhM:\hh �srlinux::interface���Qubau}�(hh �srlinux::interface���Qh.]�h�)��}�(h�j  hh �srlinux::interface���Qhjj  ubahM\h0h2)��N}�(hhhM0u��bu��bjt  )��}�(jw  ]�jy  ]�j{  h
)��}�(h�P4rt�hh)��N}�(hKhMFhKhhhMFu��bhMFhMFhKhKhM�_hh �srlinux::interface���Qubh
)��}�(h�p4rt�hh)��N}�(hK1hMFhK5hhhMFu��bhMFhMFhK5hK1hM�_hh �srlinux::interface���QubK K����j�  h
)��}�(h�srlinux::Interface�hh)��N}�(hKhMFhK0hhhMFu��bhMFhMFhK0hKhM�_hh �srlinux::interface���Qubh
)��}�(h�parent_interface�hh)��N}�(hKhMFhKhhhMFu��bhMFhMFhKhKhM�_hh �srlinux::interface���QubKK����ht�q
Relation to parent container
Peer relation: Top-level container for P4Runtime interface configuration and state
�u}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�j0  hh �srlinux::interface���Qhjj-  ubh�)��}�(h�jB  hh �srlinux::interface���Qhjj?  ubehM�_h0h2)��N}�(hhhMFu��bu��bj�  )��}�(hjh
)��}�(h�P4rt�hh)��N}�(hKhMLhKhhhMLu��bhMLhMLhKhKhM>`hh �srlinux::interface���Qubj  ]��parent_interface�au}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�jg  hh �srlinux::interface���Qhjjd  ubj�  )��}�(h�h)��N}�(hKhMLhKhhhMLu��bhh �srlinux::interface���Qhjjd  j�  jm  ubehM4`h0h2)��N}�(hhhMLu��bu��bj�  )��}�(h(�Qos�hh�srlinux::interface::Qos�hjj�  )��}�(j�  j�  j�  h �srlinux::interface���Qj�  ]�j�  ]�j�  }�j  ]�j  ]�j  �j  }�j  ]�j
  }�j  }�j  ��ht��
    Yang definition can be found here: srl_nokia-qos.yang:L554

    :rel output: Container for QoS configuration that applies to outbound traffic through the port or LAG
    :rel parent_interface: Relation to parent container
    �j  �u}�h0h)��N}�(hKhMNhKhhhMNu��bs��bhtj�  j  ]�j]  ]�h
)��}�(h�srlinux::Base�hh)��N}�(hKhMNhK!hhhMNu��bhMNhMNhK!hKhMn`hh �srlinux::interface���Qubau}�(hh �srlinux::interface���Qh.]�h�)��}�(h�j�  hh �srlinux::interface���Qhjj�  ubahMR`h0h2)��N}�(hhhMNu��bu��bjt  )��}�(jw  ]�jy  ]�j{  h
)��}�(h�Qos�hh)��N}�(hKhMWhKhhhMWu��bhMWhMWhKhKhMnahh �srlinux::interface���Qubh
)��}�(h�qos�hh)��N}�(hK0hMWhK3hhhMWu��bhMWhMWhK3hK0hM�ahh �srlinux::interface���QubK K����j�  h
)��}�(h�srlinux::Interface�hh)��N}�(hKhMWhK/hhhMWu��bhMWhMWhK/hKhM�ahh �srlinux::interface���Qubh
)��}�(h�parent_interface�hh)��N}�(hKhMWhKhhhMWu��bhMWhMWhKhKhMahh �srlinux::interface���QubKK����ht�-
Relation to parent container
Peer relation: �u}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�j�  hh �srlinux::interface���Qhjj�  ubh�)��}�(h�j�  hh �srlinux::interface���Qhjj�  ubehMnah0h2)��N}�(hhhMWu��bu��bj�  )��}�(hjh
)��}�(h�Qos�hh)��N}�(hKhM\hK
hhhM\u��bhM\hM\hK
hKhM�ahh �srlinux::interface���Qubj  ]��parent_interface�au}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�j�  hh �srlinux::interface���Qhjj�  ubj�  )��}�(h�h)��N}�(hKhM\hKhhhM\u��bhh �srlinux::interface���Qhjj�  j�  j�  ubehM�ah0h2)��N}�(hhhM\u��bu��bj�  )��}�(h(�Radio�hh�srlinux::interface::Radio�hjj�  )��}�(j�  j	  j�  h �srlinux::interface���Qj�  ]�j�  ]�j�  }�j  ]�j  ]�j  �j  }�j  ]�j
  }�j  }�j  ��htX  
    Yang definition can be found here: srl_nokia-if-radio.yang:L1114

    :attr admin_state: Used to administratively enable or disable the radio, when radio is disable there is no CPRI or OBSAI transmited.
    :rel parent_interface: Relation to parent container
    :rel roe: 
    �j  �u}�h0h)��N}�(hKhM^hKhhhM^u��bs��bhtj  j  ]�j  )��}�(hjj  )��}�(hph
)��}�(h�-srlinux::types::srl_nokia_common::admin_state�hh)��N}�(hKhMfhK2hhhMfu��bhMfhMfhK2hKhMfchh �srlinux::interface���Qubj)  �j*  �u}�(hh �srlinux::interface���Qh.]�hNh0j'  u��bh(h
)��}�(h�admin_state�hh)��N}�(hK4hMfhK?hhhMfu��bhMfhMfhK?hK4hM~chh �srlinux::interface���Qubj8  h�)��N}�(hj	  )��h�]�hh �srlinux::interface���Qh.]�hM�ch0h2)��N}�(hhhMfu��bu��bj9  �u}�(hh �srlinux::interface���Qh.]�hNh0j4  u��baj]  ]�h
)��}�(h�srlinux::Base�hh)��N}�(hKhM^hK#hhhM^u��bhM^hM^hK#hKhMbhh �srlinux::interface���Qubau}�(hh �srlinux::interface���Qh.]�h�)��}�(h�jM  hh �srlinux::interface���QhjjJ  ubahM�ah0h2)��N}�(hhhM^u��bu��bjt  )��}�(jw  ]�jy  ]�j{  h
)��}�(h�Radio�hh)��N}�(hKhMihKhhhMiu��bhMihMihKhKhM�chh �srlinux::interface���Qubh
)��}�(h�radio�hh)��N}�(hK2hMihK7hhhMiu��bhMihMihK7hK2hM�chh �srlinux::interface���QubK K����j�  h
)��}�(h�srlinux::Interface�hh)��N}�(hKhMihK1hhhMiu��bhMihMihK1hKhM�chh �srlinux::interface���Qubh
)��}�(h�parent_interface�hh)��N}�(hKhMihKhhhMiu��bhMihMihKhKhM�chh �srlinux::interface���QubKK����ht�-
Relation to parent container
Peer relation: �u}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�je  hh �srlinux::interface���Qhjjb  ubh�)��}�(h�jw  hh �srlinux::interface���Qhjjt  ubehM�ch0h2)��N}�(hhhMiu��bu��bj�  )��}�(hjh
)��}�(h�Radio�hh)��N}�(hKhMnhKhhhMnu��bhMnhMnhKhKhMdhh �srlinux::interface���Qubj  ]��parent_interface�au}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�j�  hh �srlinux::interface���Qhjj�  ubj�  )��}�(h�h)��N}�(hKhMnhKhhhMnu��bhh �srlinux::interface���Qhjj�  j�  j�  ubehM�ch0h2)��N}�(hhhMnu��bu��bj�  )��}�(h(�Sflow�hh�srlinux::interface::Sflow�hjj�  )��}�(j�  j�  j�  h �srlinux::interface���Qj�  ]�j�  ]�j�  }�j  ]�j  ]�j  �j  }�j  ]�j
  }�j  }�j  ��htX   
    Context to configure sFlow parameters
    Yang definition can be found here: srl_nokia-interfaces.yang:L241

    :attr admin_state: Administratively enable or disable sFlow on this interface
    :rel parent_interface: Relation to parent container
    �j  �u}�h0h)��N}�(hKhMphKhhhMpu��bs��bhtj�  j  ]�j  )��}�(hjj  )��}�(hph
)��}�(h�-srlinux::types::srl_nokia_common::admin_state�hh)��N}�(hKhMxhK2hhhMxu��bhMxhMxhK2hKhMqehh �srlinux::interface���Qubj)  �j*  �u}�(hh �srlinux::interface���Qh.]�hNh0j�  u��bh(h
)��}�(h�admin_state�hh)��N}�(hK4hMxhK?hhhMxu��bhMxhMxhK?hK4hM�ehh �srlinux::interface���Qubj8  h�)��N}�(hj	  )��h�]�hh �srlinux::interface���Qh.]�hM�eh0h2)��N}�(hhhMxu��bu��bj9  �u}�(hh �srlinux::interface���Qh.]�hNh0j�  u��baj]  ]�h
)��}�(h�srlinux::Base�hh)��N}�(hKhMphK#hhhMpu��bhMphMphK#hKhM:dhh �srlinux::interface���Qubau}�(hh �srlinux::interface���Qh.]�h�)��}�(h�j�  hh �srlinux::interface���Qhjj�  ubahMdh0h2)��N}�(hhhMpu��bu��bjt  )��}�(jw  ]�jy  ]�j{  h
)��}�(h�Sflow�hh)��N}�(hKhM{hKhhhM{u��bhM{hM{hKhKhM�ehh �srlinux::interface���Qubh
)��}�(h�sflow�hh)��N}�(hK2hM{hK7hhhM{u��bhM{hM{hK7hK2hM�ehh �srlinux::interface���QubK K����j�  h
)��}�(h�srlinux::Interface�hh)��N}�(hKhM{hK1hhhM{u��bhM{hM{hK1hKhM�ehh �srlinux::interface���Qubh
)��}�(h�parent_interface�hh)��N}�(hKhM{hKhhhM{u��bhM{hM{hKhKhM�ehh �srlinux::interface���QubKK����ht�S
Relation to parent container
Peer relation: Context to configure sFlow parameters
�u}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�j  hh �srlinux::interface���Q�      hjj  ubh�)��}�(h�j&  hh �srlinux::interface���Qhjj#  ubehM�eh0h2)��N}�(hhhM{u��bu��bj�  )��}�(hjh
)��}�(h�Sflow�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM9fhh �srlinux::interface���Qubj  ]��parent_interface�au}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�jK  hh �srlinux::interface���QhjjH  ubj�  )��}�(h�h)��N}�(hKhM�hKhhhM�u��bhh �srlinux::interface���QhjjH  j�  jQ  ubehM.fh0h2)��N}�(hhhM�u��bu��bj�  )��}�(h(�Subinterface�hh� srlinux::interface::Subinterface�hjj�  )��}�(j�  jg  j�  h �srlinux::interface���Qj�  ]�j�  ]�j�  }�j  ]�j  ]�j  �j  }�j  ]�j
  }�j  }�j  ��htX�  
    The list of subinterfaces (logical interfaces) associated with a physical interface
    Yang definition can be found here: srl_nokia-interfaces.yang:L525

    :attr admin_state: The configured, desired state of the subinterface
    :attr description: A user-configured description of the interface
    :attr ip_mtu: IP MTU of the subinterface in bytes, including the IP header but excluding Ethernet encapsulation

    IP MTU specifies the maximum sized IPv4 or IPv6 packet that can be transmitted on the subinterface. If an IPv4 or IPv6 packet exceeds this size it is dropped and this may result in the generation of an ICMP error message back to the source.

    The default IP MTU for a subinterface is taken from /system/mtu/default-ip-mtu.  For the mgmt0 and mgmt0-standby subinterfaces the default is the associated interface MTU minus the Ethernet encapsulation overhead.

    The IP MTU is not configurable for subinterfaces of loopback interfaces.

    The 7220 IXR-D1, 7220 IXR-D2, 7220 IXR-D3, 7220 IXR-H2, and 7220 IXR-H3 systems support a maximum IP MTU of 9398 bytes.

    Each 7250 IXR IMM supports a maximum of 4 different IP MTU values. 7220 IXR systems do not have any limit on the maximum number of different IP MTU values.
    :attr l2_mtu: Layer-2 MTU of the subinterface in bytes, including the Ethernet header and VLAN tags, and excluding 4-bytes FCS.

    L2 MTU specifies the maximum sized Ethernet frame that can be transmitted on the subinterface. If a frame exceeds this size it is discarded. If the l2-mtu of the subinterface exceeds the port-mtu of the associated
    interface, the subinterface will remain operationally down.

    The default value for a subinterface is taken from /system/mtu/default-l2-mtu. The L2 MTU is only configurable for bridged subinterfaces.

    The 7220 IXR-D1, 7220 IXR-D2, 7220 IXR-D3, 7220 IXR-H2, and 7220 IXR-H3 systems support a maximum L2 MTU of 9412 bytes.
    :attr mpls_mtu: MPLS MTU of the subinterface in bytes, including the transmitted label stack.

    MPLS MTU specifies the maximum sized MPLS packet that can be transmitted on the subinterface. If an MPLS packet containing any payload exceeds this size then it is dropped. If the payload of the dropped packet is IPv4 or IPv6 then this may also result in the generation of an ICMP error message that is either tunneled or sent back to the source.

    The default MPLS MTU for a subinterface is taken from /system/mtu/default-mpls-mtu.

    The MPLS MTU is not configurable for subinterfaces of loopback interfaces.

    Each 7250 IXR IMM supports a maximum of 4 different MPLS MTU values.
    :attr type: The value of this leaf indicates the context in which the
    ethernet subinterface will be used in
    :attr uuid: The system-generated or user-configured UUID for the sub interface
    :attr x_index: The index of the subinterface, or logical interface number
    :rel acl: Container for ACL policies applied to the subinterface
    :rel anycast_gw: 
    :rel bridge_table: Enable the Bridge Table on the subinterface and configure associated parameters
    :rel ipv4: Enable IPv4 on the subinterface and configure associated parameters

    When this is present in the running configuration, and even before an IPv4 address is configured, the subinterface starts to accept incoming packets with dest-ip 255.255.255.255, which is necessary to support dhcp-client functionality.
    :rel ipv6: Enable IPv6 on the subinterface and configure associated parameters

    When this is present in the running configuration, and even before a global unicast IPv6 address is configured, chassis manager assigns an IPv6 link-local address to the subinterface, which will appear as a read-only entry in the address list. At this stage, the subinterface can receive IPv6 packets with any of the following destinations:
    -	IPv6 link-local address
    -	solicited-node multicast address for the link-local address
    -	ff02::1 (all IPv6 devices)
    -	ff02::2 (all IPv6 routers)
    :rel local_mirror_destination: Container for options related to local mirror destination
    :rel parent_interface: Relation to parent container
    :rel qos: 
    :rel ra_guard: 
    :rel vlan: Parameters for VLAN definition under SRL interfaces.
    �j  �u}�h0h)��N}�(hKhM�hKhhhM�u��bs��bhtjw  j  ]�(j  )��}�(hjj  )��}�(hph
)��}�(h�-srlinux::types::srl_nokia_common::admin_state�hh)��N}�(hKhM�hK2hhhM�u��bhM�hM�hK2hKhMSwhh �srlinux::interface���Qubj)  �j*  �u}�(hh �srlinux::interface���Qh.]�hNh0j�  u��bh(h
)��}�(h�admin_state�hh)��N}�(hK4hM�hK?hhhM�u��bhM�hM�hK?hK4hMkwhh �srlinux::interface���Qubj8  h�)��N}�(hj	  )��h�]�hh �srlinux::interface���Qh.]�hMnwh0h2)��N}�(hhhM�u��bu��bj9  �u}�(hh �srlinux::interface���Qh.]�hNh0j�  u��bj  )��}�(hjj  )��}�(hph
)��}�(h�-srlinux::types::srl_nokia_common::description�hh)��N}�(hKhM�hK2hhhM�u��bhM�hM�hK2hKhM�whh �srlinux::interface���Qubj)  �j*  �u}�(hh �srlinux::interface���Qh.]�hNh0j�  u��bh(h
)��}�(h�description�hh)��N}�(hK4hM�hK?hhhM�u��bhM�hM�hK?hK4hM�whh �srlinux::interface���Qubj8  h�)��N}�(hj	  )��h�]�hh �srlinux::interface���Qh.]�hM�wh0h2)��N}�(hhhM�u��bu��bj9  �u}�(hh �srlinux::interface���Qh.]�hNh0j�  u��bj  )��}�(hjj  )��}�(hph
)��}�(h�subinterface_ip_mtu_t�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM�whh �srlinux::interface���Qubj)  �j*  �u}�(hh �srlinux::interface���Qh.]�hNh0j�  u��bh(h
)��}�(h�ip_mtu�hh)��N}�(hKhM�hK"hhhM�u��bhM�hM�hK"hKhM�whh �srlinux::interface���Qubj8  h�)��N}�(hj	  )��h�]�hh �srlinux::interface���Qh.]�hM�wh0h2)��N}�(hhhM�u��bu��bj9  �u}�(hh �srlinux::interface���Qh.]�hNh0j�  u��bj  )��}�(hjj  )��}�(hph
)��}�(h�subinterface_l2_mtu_t�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM�whh �srlinux::interface���Qubj)  �j*  �u}�(hh �srlinux::interface���Qh.]�hNh0j   u��bh(h
)��}�(h�l2_mtu�hh)��N}�(hKhM�hK"hhhM�u��bhM�hM�hK"hKhMxhh �srlinux::interface���Qubj8  h�)��N}�(hj	  )��h�]�hh �srlinux::interface���Qh.]�hMxh0h2)��N}�(hhhM�u��bu��bj9  �u}�(hh �srlinux::interface���Qh.]�hNh0j  u��bj  )��}�(hjj  )��}�(hph
)��}�(h�subinterface_mpls_mtu_t�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM&xhh �srlinux::interface���Qubj)  �j*  �u}�(hh �srlinux::interface���Qh.]�hNh0j)  u��bh(h
)��}�(h�mpls_mtu�hh)��N}�(hKhM�hK&hhhM�u��bhM�hM�hK&hKhM0xhh �srlinux::interface���Qubj8  h�)��N}�(hj	  )��h�]�hh �srlinux::interface���Qh.]�hM3xh0h2)��N}�(hhhM�u��bu��bj9  �u}�(hh �srlinux::interface���Qh.]�hNh0j6  u��bj  )��}�(hjj  )��}�(hph
)��}�(h�string�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhMBxhh �srlinux::interface���Qubj)  �j*  �u}�(hh �srlinux::interface���Qh.]�hNh0jR  u��bh(h
)��}�(h�type�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhMHxhh �srlinux::interface���Qubj8  h�)��N}�(hj	  )��h�]�hh �srlinux::interface���Qh.]�hMKxh0h2)��N}�(hhhM�u��bu��bj9  �u}�(hh �srlinux::interface���Qh.]�hNh0j_  u��bj  )��}�(hjj  )��}�(hph
)��}�(h�&srlinux::types::srl_nokia_common::uuid�hh)��N}�(hKhM�hK+hhhM�u��bhM�hM�hK+hKhMvxhh �srlinux::interface���Qubj)  �j*  �u}�(hh �srlinux::interface���Qh.]�hNh0j{  u��bh(h
)��}�(h�uuid�hh)��N}�(hK-hM�hK1hhhM�u��bhM�hM�hK1hK-hM�xhh �srlinux::interface���Qubj8  h�)��N}�(hj	  )��h�]�hh �srlinux::interface���Qh.]�hM�xh0h2)��N}�(hhhM�u��bu��bj9  �u}�(hh �srlinux::interface���Qh.]�hNh0j�  u��bj  )��}�(hjj  )��}�(hph
)��}�(h�subinterface_index_t�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM�xhh �srlinux::interface���Qubj)  �j*  �u}�(hh �srlinux::interface���Qh.]�hNh0j�  u��bh(h
)��}�(h�x_index�hh)��N}�(hKhM�hK!hhhM�u��bhM�hM�hK!hKhM�xhh �srlinux::interface���Qubj8  Nj9  �u}�(hh �srlinux::interface���Qh.]�hNh0j�  u��bej]  ]�h
)��}�(h�srlinux::Base�hh)��N}�(hKhM�hK*hhhM�u��bhM�hM�hK*hKhMrfhh �srlinux::interface���Qubau}�(hh �srlinux::interface���Qh.]�h�)��}�(h�j�  hh �srlinux::interface���Qhjj�  ubahMMfh0h2)��N}�(hhhM�u��bu��bjt  )��}�(jw  ]�jy  ]�j{  h
)��}�(h�Subinterface�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM�xhh �srlinux::interface���Qubh
)��}�(h�subinterface�hh)��N}�(hK9hM�hKEhhhM�u��bhM�hM�hKEhK9hM�xhh �srlinux::interface���QubK M�����j�  h
)��}�(h�srlinux::Interface�hh)��N}�(hK&hM�hK8hhhM�u��bhM�hM�hK8hK&hM�xhh �srlinux::interface���Qubh
)��}�(h�parent_interface�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM�xhh �srlinux::interface���QubKK����ht��
Relation to parent container
Peer relation: The list of subinterfaces (logical interfaces) associated with a physical interface
�u}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�j�  hh �srlinux::interface���Qhjj�  ubh�)��}�(h�j�  hh �srlinux::interface���Qhjj�  ubehM�xh0h2)��N}�(hhhM�u��bu��bj�  )��}�(hjh
)��}�(h�Subinterface�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM�yhh �srlinux::interface���Qubj  ]�(�x_index��parent_interface�eu}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�j  hh �srlinux::interface���Qhjj  ubj�  )��}�(h�h)��N}�(hKhM�hKhhhM�u��bhh �srlinux::interface���Qhjj  j�  j  ubj�  )��}�(h�h)��N}�(hKhM�hK-hhhM�u��bhh �srlinux::interface���Qhjj  j�  j  ubehM�yh0h2)��N}�(hhhM�u��bu��bj�  )��}�(h(�Transceiver�hh�srlinux::interface::Transceiver�hjj�  )��}�(j�  j2  j�  h �srlinux::interface���Qj�  ]�j�  ]�j�  }�j  ]�j  ]�j  �j  }�j  ]�j
  }�j  }�j  ��htXX  
    Yang definition can be found here: srl_nokia-interfaces.yang:L766

    :attr ddm_events: When set to true, log events and state related to the Digital Diagnostic Monitoring (DDM) capabilities of the transceiver are generated and populated.

    When set to false, no DDM-related log events and state are generated and populated for this port/transceiver.

    When read from state this leaf always returns false (even if the configured value is true) when the Ethernet port is a copper/RJ45 port.
    :attr forward_error_correction: The forward error correction algorithm to use on the optical channel. The same FEC algorithm must be used at both ends of a link.

    25G interfaces support disabled, base-r rs-108 and rs-528; configuring other (incompatible) options will bring the port down. The FEC requirement for a 25G interface depends on the cable type. A CA-N DAC cable has a loss specification that requires no FEC. A CA-S DAC cable requires base-r FEC at a minimum. A CA-L DAC cable requires the stronger rs-108 Reed Solomon FEC.

    100G interfaces support disabled and rs-528; configuring other (incompatible) options will bring the port down.

    400G interfaces require rs-544; configuring other (unsupported) options will bring the port down.
    :attr tx_laser: Enable (true) or disable (false) the transmit laser of the transceiver.

    When read from state this leaf always returns false (even if the configured value is true) when the Ethernet port is a copper/RJ45 port.

    Default is true (for interfaces that support transceivers).
    :rel parent_interface: Relation to parent container
    �j  �u}�h0h)��N}�(hKhM�hKhhhM�u��bs��bhtjB  j  ]�(j  )��}�(hjj  )��}�(hph
)��}�(h�bool�hh)��N}�(hKhM�hK	hhhM�u��bhM�hM�hK	hKhMI�hh �srlinux::interface���Qubj)  �j*  �u}�(hh �srlinux::interface���Qh.]�hNh0jP  u��bh(h
)��}�(h�
ddm_events�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhMU�hh �srlinux::interface���Qubj8  h�)��N}�(hj	  )��h�]�hh �srlinux::interface���Qh.]�hMX�h0h2)��N}�(hhhM�u��bu��bj9  �u}�(hh �srlinux::interface���Qh.]�hNh0j]  u��bj  )��}�(hjj  )��}�(hph
)��}�(h�&transceiver_forward_error_correction_t�hh)��N}�(hKhM�hK+hhhM�u��bhM�hM�hK+hKhM��hh �srlinux::interface���Qubj)  �j*  �u}�(hh �srlinux::interface���Qh.]�hNh0jy  u��bh(h
)��}�(h�forward_error_correction�hh)��N}�(hK-hM�hKEhhhM�u��bhM�hM�hKEhK-hM��hh �srlinux::interface���Qubj8  h�)��N}�(hj	  )��h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM�u��bu��bj9  �u}�(hh �srlinux::interface���Qh.]�hNh0j�  u��bj  )��}�(hjj  )��}�(hph
)��}�(h�bool�hh)��N}�(hKhM�hK	hhhM�u��bhM�hM�hK	hKhM��hh �srlinux::interface���Qubj)  �j*  �u}�(hh �srlinux::interface���Qh.]�hNh0j�  u��bh(h
)��}�(h�tx_laser�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM��hh �srlinux::interface���Qubj8  h�)��N}�(hj	  )��h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM�u��bu��bj9  �u}�(hh �srlinux::interface���Qh.]�hNh0j�  u��bej]  ]�h
)��}�(h�srlinux::Base�hh)��N}�(hKhM�hK)hhhM�u��bhM�hM�hK)hKhM�yhh �srlinux::interface���Qubau}�(hh �srlinux::interface���Qh.]�h�)��}�(h�j�  hh �srlinux::interface���Qhjj�  ubahM�yh0h2)��N}�(hhhM�u��bu��bjt  )��}�(jw  ]�jy  ]�j{  h
)��}�(h�Transceiver�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhMӀhh �srlinux::interface���Qubh
)��}�(h�transceiver�hh)��N}�(hK8hM�hKChhhM�u��bhM�hM�hKChK8hM
�hh �srlinux::interface���QubK K����j�  h
)��}�(h�srlinux::Interface�hh)��N}�(hK%hM�hK7hhhM�u��bhM�hM�hK7hK%hM��hh �srlinux::interface���Qubh
)��}�(h�parent_interface�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM�hh �srlinux::interface���QubKK����ht�-
Relation to parent container
Peer relation: �u}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�j�  hh �srlinux::interface���Qhjj�  ubh�)��}�(h�j�  hh �srlinux::interface���Qhjj�  ubehMӀh0h2)��N}�(hhhM�u��bu��bj�  )��}�(hjh
)��}�(h�Transceiver�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhMW�hh �srlinux::interface���Qubj  ]��parent_interface�au}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�j  hh �srlinux::interface���Qhjj  ubj�  )��}�(h�h)��N}�(hKhM�hK#hhhM�u��bhh �srlinux::interface���Qhjj  j�  j  ubehMF�h0h2)��N}�(hhhM�u��bu��bj�  )��}�(h(�Vhost�hh�srlinux::interface::Vhost�hjj�  )��}�(j�  j3  j�  h �srlinux::interface���Qj�  ]�j�  ]�j�  }�j  ]�j  ]�j  �j  }�j  ]�j
  }�j  }�j  ��htX  
    Top-level container for vhost-user interface configuration and state
    Yang definition can be found here: srl_nokia-interfaces-vxdp.yang:L121

    :attr vhost_socket_mode: The vhost-user socket mode

    If set to server, the socket is created by SR Linux, if set to client SR Linux will connect to a pre-existing socket.
    :attr vhost_socket_path: Filesystem path to the vhost-user socket
    :attr vhost_socket_queues: The number of vhost-user queues

    The number of queues are retrieved from the vhost-user socket if not configured. This should be set equivalent to the number of vCPUs allocated to the other end of the vhost-user interface. This value must not exceed the count of vCPUs provided as the vXDP cpu-set.
    :rel parent_interface: Relation to parent container
    �j  �u}�h0h)��N}�(hKhM�hKhhhM�u��bs��bhtjC  j  ]�(j  )��}�(hjj  )��}�(hph
)��}�(h�vhost_vhost_socket_mode_t�hh)��N}�(hKhM hKhhhM u��bhM hM hKhKhMЄhh �srlinux::interface���Qubj)  �j*  �u}�(hh �srlinux::interface���Qh.]�hNh0jQ  u��bh(h
)��}�(h�vhost_socket_mode�hh)��N}�(hK hM hK1hhhM u��bhM hM hK1hK hM�hh �srlinux::interface���Qubj8  h�)��N}�(hj	  )��h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhM u��bu��bj9  �u}�(hh �srlinux::interface���Qh.]�hNh0j^  u��bj  )��}�(hjj  )��}�(hph
)��}�(h�,srlinux::types::srl_nokia_common::local_file�hh)��N}�(hKhMhK1hhhMu��bhMhMhK1hKhM�hh �srlinux::interface���Qubj)  �j*  �u}�(hh �srlinux::interface���Qh.]�hNh0jz  u��bh(h
)��}�(h�vhost_socket_path�hh)��N}�(hK2hMhKChhhMu��bhMhMhKChK2hM-�hh �srlinux::interface���Qubj8  Nj9  �u}�(hh �srlinux::interface���Qh.]�hNh0j�  u��bj  )��}�(hjj  )��}�(hph
)��}�(h�vhost_vhost_socket_queues_t�hh)��N}�(hKhMhK hhhMu��bhMhMhK hKhMM�hh �srlinux::interface���Qubj)  �j*  �u}�(hh �srlinux::interface���Qh.]�hNh0j�  u��bh(h
)��}�(h�vhost_socket_queues�hh)��N}�(hK"hMhK5hhhMu��bhMhMhK5hK"hMb�hh �srlinux::interface���Qubj8  h�)��N}�(hj	  )��h�]�hh �srlinux::interface���Qh.]�hMe�h0h2)��N}�(hhhMu��bu��bj9  �u}�(hh �srlinux::interface���Qh.]�hNh0j�  u��bej]  ]�h
)��}�(h�srlinux::Base�hh)��N}�(hKhM�hK#hhhM�u��bhM�hM�hK#hKhM��hh �srlinux::interface���Qubau}�(hh �srlinux::interface���Qh.]�h�)��}�(h�j�  hh �srlinux::interface���Qhjj�  ubahMk�h0h2)��N}�(hhhM�u��bu��bjt  )��}�(jw  ]�jy  ]�j{  h
)��}�(h�Vhost�hh)��N}�(hKhMhKhhhMu��bhMhMhKhKhMt�hh �srlinux::interface���Qubh
)��}�(h�vhost�hh)��N}�(hK2hMhK7hhhMu��bhMhMhK7hK2hM��hh �srlinux::interface���QubK K����j�  h
)��}�(h�srlinux::Interface�hh)��N}�(hKhMhK1hhhMu��bhMhMhK1hKhM��hh �srlinux::interface���Qubh
)��}�(h�parent_interface�hh)��N}�(hKhMhKhhhMu��bhMhMhKhKhM��hh �srlinux::interface���QubKK����ht�r
Relation to parent container
Peer relation: Top-level container for vhost-user interface configuration and state
�u}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�j�  hh �srlinux::interface���Qhjj�  ubh�)��}�(h�j�  hh �srlinux::interface���Qhjj�  ubehMt�h0h2)��N}�(hhhMu��bu��bj�  )��}�(hjh
)��}�(h�Vhost�hh)��N}�(hKhMhKhhhMu��bhMhMhKhKhM1�hh �srlinux::interface���Qubj  ]��parent_interface�au}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�j  hh �srlinux::interface���Qhjj
  ubj�  )��}�(h�h)��N}�(hKhMhKhhhMu��bhh �srlinux::interface���Qhjj
  j�  j  ubehM&�h0h2)��N}�(hhhMu��bu��bh#�DefineImplement���)��}�(�entity�h
)��}�(h�BreakoutMode�hh)��N}�(hKhMhKhhhMu��bhMhMhKhKhM[�hh �srlinux::interface���Qub�entity_location�j/  j  ]�h
)��}�(h�setupBreakoutModeYangContainer�hh)��N}�(hKhMhK<hhhMu��bhMhMhK<hKhM��hh �srlinux::interface���Quba�select�h�)��N}�(h�h�]�hNh.]�hNh0h2)��N}�(hhhMu��bu��b�inherit��htNu}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�j9  hh �srlinux::interface���Qhjj6  ubh�)��}�(h�j/  hh �srlinux::interface���Qhjj,  ubehME�h0jC  u��bj(  )��}�(j+  h
)��}�(h�Ethernet�hh)��N}�(hKhMhKhhhMu��bhMhMhKhKhM��hh �srlinux::interface���Qubj4  jZ  j  ]�h
)��}�(h�setupEthernetYangContainer�hh)��N}�(hKhMhK4hhhMu��bhMhMhK4hKhM��hh �srlinux::interface���Qubaj>  h�)��N}�(h�h�]�hNh.]�hNh0h2)��N}�(hhhMu��bu��bjG  �htNu}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�jc  hh �srlinux::interface���Qhjj`  ubh�)��}�(h�jZ  hh �srlinux::interface���QhjjW  ubehM��h0jl  u��bj(  )��}�(j+  h
)��}�(h�Lag�hh)��N}�(hKhMhKhhhMu��bhMhMhKhKhMֆhh �srlinux::interface���Qubj4  j�  j  ]�h
)��}�(h�setupLagYangContainer�hh)��N}�(hKhMhK*hhhMu��bhMhMhK*hKhM�hh �srlinux::interface���Qubaj>  h�)��N}�(h�h�]�hNh.]�hNh0h2)��N}�(hhhMu��bu��bjG  �htNu}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�j�  hh �srlinux::interface���Qhjj�  ubh�)��}�(h�j�  hh �srlinux::interface���Qhjj  ubehMɆh0j�  u��bj(  )��}�(j+  h
)��}�(h�Linux�hh)��N}�(hKhMhKhhhMu��bhMhMhKhKhM�hh �srlinux::interface���Qubj4  j�  j  ]�h
)��}�(h�setupLinuxYangContainer�hh)��N}�(hKhMhK.hhhMu��bhMhMhK.hKhM*�hh �srlinux::interface���Qubaj>  h�)��N}�(h�h�]�hNh.]�hNh0h2)��N}�(hhhMu��bu��bjG  �htNu}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�j�  hh �srlinux::interface���Qhjj�  ubh�)��}�(h�j�  hh �srlinux::interface���Qhjj�  ubehM��h0j�  u��bj(  )��}�(j+  h
)��}�(h�P4rt�hh)��N}�(hKhMhKhhhMu��bhMhMhKhKhMC�hh �srlinux::interface���Qubj4  j�  j  ]�h
)��}�(h�setupP4rtYangContainer�hh)��N}�(hKhMhK,hhhMu��bhMhMhK,hKhM`�hh �srlinux::interface���Qubaj>  h�)��N}�(h�h�]�hNh.]�hNh0h2)��N}�(hhhMu��bu��bjG  �htNu}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�j�  hh �srlinux::interface���Qhjj�  ubh�)��}�(h�j�  hh �srlinux::interface���Qhjj�  ubehM5�h0j�  u��bj(  )��}�(j+  h
)��}�(h�Qos�hh)��N}�(hKhMhKhhhMu��bhMhMhKhKhMx�hh �srlinux::interface���Qubj4  j�  j  ]�h
)��}�(h�setupQosYangContainer�hh)��N}�(hKhMhK*hhhMu��bhMhMhK*hKhM��hh �srlinux::interface���Qubaj>  h�)��N}�(h�h�]�hNh.]�hNh0h2)��N}�(hhhMu��bu��bjG  �htNu}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�j  hh �srlinux::interface���Qhjj   ubh�)��}�(h�j�  hh �srlinux::interface���Qhjj�  ubehMk�h0j  u��bj(  )��}�(j+  h
)��}�(h�Radio�hh)��N}�(hKhMhKhhhMu��bhMhMhKhKhM��hh �srlinux::interface���Qubj4  j"  j  ]�h
)��}�(h�setupRadioYangContainer�hh)��N}�(hKhMhK.hhhMu��bhMhMhK.hKhṀhh �srlinux::interface���Qubaj>  h�)��N}�(h�h�]�hNh.]�hNh0h2)��N}�(hhhMu��bu��bjG  �htNu}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�j+  hh �srlinux::interface���Qhjj(  ubh�)��}�(h�j"  hh �srlinux::interface���Qhjj  ubehM��h0j4  u��bj(  )��}�(j+  h
)��}�(h�Sflow�hh)��N}�(hKhMhKhhhMu��bhMhMhKhKhM�hh �srlinux::interface���Qubj4  jJ  j  ]�h
)��}�(h�setupSflowYangContainer�hh)��N}�(hKhMhK.hhhMu��bhMhMhK.hKhM�hh �srlinux::interface���Qubaj>  h�)��N}�(h�h�]�hNh.]�hNh0h2)��N}�(hhhMu��bu��bjG  �htNu}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�jS  hh �srlinux::interface���QhjjP  ubh�)��}�(h�jJ  hh �srlinux::interface���QhjjG  ubehMׇh0j\  u��bj(  )��}�(j+  h
)��}�(h�Subinterface�hh)��N}�(hKhMhKhhhMu��bhMhMhKhKhM%�hh �srlinux::interface���Qubj4  jr  j  ]�h
)��}�(h�setupSubinterfaceYangContainer�hh)��N}�(hKhMhK<hhhMu��bhMhMhK<hKhMJ�hh �srlinux::interface���Qubaj>  h�)��N}�(h�h�]�hNh.]�hNh0h2)��N}�(hhhMu��bu��bjG  �htNu}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�j{  hh �srlinux::interface���Qhjjx  ubh�)��}�(h�jr  hh �srlinux::interface���Qhjjo  ubehM�h0j�  u��bj(  )��}�(j+  h
)��}�(h�Transceiver�hh)��N}�(hKhMhKhhhMu��bhMhMhKhKhMj�hh �srlinux::interface���Qubj4  j�  j  ]�h
)��}�(h�setupTransceiverYangContainer�hh)��N}�(hKhMhK:hhhMu��bhMhMhK:hKhM��hh �srlinux::interface���Qubaj>  h�)��N}�(h�h�]�hNh.]�hNh0h2)��N}�(hhhMu��bu��bjG  �htNu}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�j�  hh �srlinux::interface���Qhjj�  ubh�)��}�(h�j�  hh �srlinux::interface���Qhjj�  ubehMU�h0j�  u��bj(  )��}�(j+  h
)��}�(h�Vhost�hh)��N}�(hKhM!hKhhhM!u��bhM!hM!hKhKhM��hh �srlinux::interface���Qubj4  j�  j  ]�h
)��}�(h�setupVhostYangContainer�hh)��N}�(hKhM!hK.hhhM!u��bhM!hM!hK.hKhMƈhh �srlinux::interface���Qubaj>  h�)��N}�(h�h�]�hNh.]�hNh0h2)��N}�(hhhM!u��bu��bjG  �htNu}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�j�  hh �srlinux::interface���Qhjj�  ubh�)��}�(h�j�  hh �srlinux::interface���Qhjj�  ubehM��h0j�  u��bh#�DefineImplementation���)��}�(h(�setupBreakoutModeYangContainer�hh�2srlinux::interface::setupBreakoutModeYangContainer�hjj�  �Implementation���)��}�(h(j�  h�inmanta.ast.blocks��
BasicBlock���)��}�(�_BasicBlock__stmts�]�(h��SetAttribute���)��N}�(�instance�h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM3hK	hhhM3u��bhM3hM3hK	hKhM��hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hNh0j   u��b�attribute_name��device�hh��AttributeReference���)��N}�(j�  h
)��}�(h�device�hh)��N}�(hK)hM3hK/hhhM3u��bhM3hM3hK/hK)hM�hh �srlinux::interface���Qubj�  j  )��N}�(j�  h
)��}�(h�parent_interface�hh)��N}�(hKhM3hK(hhhM3u��bhM3hM3hK(hKhM�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM3hKhhhM3u��bhM3hM3hKhKhM�hh �srlinux::interface���Qubh(j&  h�j&  h�]�hh �srlinux::interface���Qh.]�hNh0j'  u��bh�h
)��}�(h�self.parent_interface�hh)��N}�(hKhM3hK(hhhM3u��bhM3hM3hK(hKhM�hh �srlinux::interface���Qubh(j3  h�j3  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhM3u��bu��bh�h
)��}�(h�self.parent_interface.device�hh)��N}�(hKhM3hK/hhhM3u��bhM3hM3hK/hKhM�hh �srlinux::interface���Qubh(jC  h�jC  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhM3u��bu��b�	list_only���_assignment_promise�h��StaticEagerPromise���)��}�(j�  j�  j�  j  �	statement�j�  ub�lhs�j�  �rhs�j  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM3u��bu��bj�  )��N}�(j�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM$hK	hhhM$u��bhM$hM$hK	hKhM�hh �srlinux::interface���Qubh(jh  h�jh  h�]�hh �srlinux::interface���Qh.]�hNh0ji  u��bj
  �yang_container�h� inmanta.ast.statements.generator��Constructor���)��N}�(�
class_type�h
)��}�(h�yang::Container�hh)��N}�(hKhM$hK*hhhM$u��bhM$hM$hK*hKhM1�hh �srlinux::interface���Qub�_Constructor__attributes�}�(�module�h�)��N}�(h�srl_nokia-interfaces�h�]�hh �srlinux::interface���Qh.]�hMK�h0h2)��N}�(hhhM%u��bu��b�name�h�)��N}�(h�breakout-mode�h�]�hh �srlinux::interface���Qh.]�hMp�h0h2)��N}�(hhhM&u��bu��b�parent�j  )��N}�(j�  h
)��}�(h�yang_container�hh)��N}�(hK&hM'hK4hhhM'u��bhM'hM'hK4hK&hM��hh �srlinux::interface���Qubj�  j  )��N}�(j�  h
)��}�(h�parent_interface�hh)��N}�(hKhM'hK%hhhM'u��bhM'hM'hK%hKhM��hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM'hKhhhM'u��bhM'hM'hKhKhM��hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hNh0j�  u��bh�h
)��}�(h�self.parent_interface�hh)��N}�(hKhM'hK%hhhM'u��bhM'hM'hK%hKhM��hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM'u��bu��bh�h
)��}�(h�$self.parent_interface.yang_container�hh)��N}�(hKhM'hK4hhhM'u��bhM'hM'hK4hKhM��hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM'u��bu��b�subs�h��
CreateDict���)��N}�(h�]�(�channel-speed�j  )��N}�(j�  h
)��}�(h�channel_speed�hh)��N}�(hK#hM)hK0hhhM)u��bhM)hM)hK0hK#hM�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM)hK"hhhM)u��bhM)hM)hK"hKhM�hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hNh0j�  u��bh�h
)��}�(h�self.channel_speed�hh)��N}�(hKhM)hK0hhhM)u��bhM)hM)hK0hKhM�hh �srlinux::interface���Qubh(j  h�j  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhM)u��bu��b���num-channels�j  )��N}�(j�  h
)��}�(h�num_channels�hh)��N}�(hK"hM*hK.hhhM*u��bhM*hM*hK.hK"hM#�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM*hK!hhhM*u��bhM*hM*hK!hKhM�hh �srlinux::interface���Qubh(j   h�j   h�]�hh �srlinux::interface���Qh.]�hNh0j!  u��bh�h
)��}�(h�self.num_channels�hh)��N}�(hKhM*hK.hhhM*u��bhM*hM*hK.hKhM�hh �srlinux::interface���Qubh(j-  h�j-  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhM*u��bu��b��eh�]�(j�  j  eh�]�hh �srlinux::interface���Qh.]�hMÉh0h2)��N}�(hhhM(u��bu��b�key_attribute�h�)��N}�(h�]�h�jH  h�]�hh �srlinux::interface���Qh.]�hMF�h0h2)��N}�(hhhM,u��bu��b�	is_actual�h�)��N}�(h�h�]�hh �srlinux::interface���Qh.]�hM\�h0h2)��N}�(hhhM-u��bu��b�requires�h�)��N}�(h�]�(j  )��N}�(j�  h
)��}�(h�yang_container�hh)��N}�(hK)hM.hK7hhhM.u��bhM.hM.hK7hK)hM��hh �srlinux::interface���Qubj�  j  )��N}�(j�  h
)��}�(h�parent_interface�hh)��N}�(hKhM.hK(hhhM.u��bhM.hM.hK(hKhM��hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM.hKhhhM.u��bhM.hM.hKhKhMx�hh �srlinux::interface���Qubh(jx  h�jx  h�]�hh �srlinux::interface���Qh.]�hNh0jy  u��bh�h
)��}�(h�self.parent_interface�hh)��N}�(hKhM.hK(hhhM.u��bhM.hM.hK(hKhMx�hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hMx�h0h2)��N}�(hhhM.u��bu��bh�h
)��}�(h�$self.parent_interface.yang_container�hh)��N}�(hKhM.hK7hhhM.u��bhM.hM.hK7hKhMx�hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM.u��bu��bj  )��N}�(j�  h
)��}�(h�requires�hh)��N}�(hK>hM.hKFhhhM.u��bhM.hM.hKFhK>hM��hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hK9hM.hK=hhhM.u��bhM.hM.hK=hK9hM��hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hNh0j�  u��bh�h
)��}�(h�self.requires�hh)��N}�(hK9hM.hKFhhhM.u��bhM.hM.hKFhK9hM��hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM.u��bu��beh�j_  h�]�hh �srlinux::interface���Qh.]�hMs�h0h2)��N}�(hhhM.u��bu��b�provides�j  )��N}�(j�  h
)��}�(h�provides�hh)��N}�(hKhM/hKhhhM/u��bhM/hM/hKhKhMȊhh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM/hKhhhM/u��bhM/hM/hKhKhM��hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hNh0j�  u��bh�h
)��}�(h�self.provides�hh)��N}�(hKhM/hKhhhM/u��bhM/hM/hKhKhM��hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM/u��bu��b�purged�j  )��N}�(j�  h
)��}�(h�purged�hh)��N}�(hKhM0hKhhhM0u��bhM0hM0hKhKhM�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM0hKhhhM0u��bhM0hM0hKhKhM݊hh �srlinux::interface���Qubh(j  h�j  h�]�hh �srlinux::interface���Qh.]�hNh0j  u��bh�h
)��}�(h�self.purged�hh)��N}�(hKhM0hKhhhM0u��bhM0hM0hKhKhM݊hh �srlinux::interface���Qubh(j  h�j  h�]�hh �srlinux::interface���Qh.]�hM݊h0h2)��N}�(hhhM0u��bu��bu�&_Constructor__wrapped_kwarg_attributes�]�hh2)��N}�(hhhM$u��bhjN�required_kwargs�]��_direct_attributes�}��_indirect_attributes�}�h�]�hh �srlinux::interface���Qh.]�(h�)��}�(h�j}  hh �srlinux::interface���Qhjjz  ubj�  )��}�(h�h)��N}�(hK	hM%hKhhhM%u��bhh �srlinux::interface���Qhjjz  j�  j�  ubj�  )��}�(h�h)��N}�(hK	hM&hKhhhM&u��bhh �srlinux::interface���Qhjjz  j�  j�  ubj�  )��}�(h�h)��N}�(hK	hM'hKhhhM'u��bhh �srlinux::interface���Qhjjz  j�  j�  ubj�  )��}�(h�h)��N}�(hK	hM(hKhhhM(u��bhh �srlinux::interface���Qhjjz  j�  j�  ubj�  )��}�(h�h)��N}�(hK	hM,hKhhhM,u��bhh �srlinux::interface���Qhjjz  j�  jE  ubj�  )��}�(h�h)��N}�(hK	hM-hKhhhM-u��bhh �srlinux::interface���Qhjjz  j�  jQ  ubj�  )��}�(h�h)��N}�(hK	hM.hKhhhM.u��bhh �srlinux::interface���Qhjjz  j�  j\  ubj�  )��}�(h�h)��N}�(hK	hM/hKhhhM/u��bhh �srlinux::interface���Qhjjz  j�  j�  ubj�  )��}�(h�h)��N}�(hK	hM0hKhhhM0u��bhh �srlinux::interface���Qhjjz  j�  j�  ubehNh0Nu��bjQ  �jR  jT  )��}�(j�  jd  j�  js  jW  jb  ubjX  jd  jY  jw  h�]�hh �srlinux::interface���Qh.]�(j7  j;  jB  jI  jP  jW  j^  je  jl  js  ehM)�h0h2)��N}�(hhhM$u��bu��be�_BasicBlock__definition_stmts�]��_BasicBlock__variables�]�hh �srlinux::interface���Q�context�Nubhh �srlinux::interface���Q�target_type��BreakoutMode�htNu}�h0h)��N}�(hKhM#hK.hhhM#u��bs��bhtN�block�j�  j+  h
)��}�(hj�  hh)��N}�(hK3hM#hK?hhhM#u��bhM#hM#hK?hK3hM�hh �srlinux::interface���Qubu}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�j�  hh �srlinux::interface���Qhjj�  ubj7  j;  jB  jI  jP  jW  j^  je  jl  js  ehNh0j�  u��bj�  )��}�(h(�setupEthernetYangContainer�hh�.srlinux::interface::setupEthernetYangContainer�hjj�  )��}�(h(j�  hj�  )��}�(j�  ]�(j�  )��N}�(j�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhMMhK	hhhMMu��bhMMhMMhK	hKhM��hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hNh0j�  u��bj
  �device�hj  )��N}�(j�  h
)��}�(h�device�hh)��N}�(hK)hMMhK/hhhMMu��bhMMhMMhK/hK)hM��hh �srlinux::interface���Qubj�  j  )��N}�(j�  h
)��}�(h�parent_interface�hh)��N}�(hKhMMhK(hhhMMu��bhMMhMMhK(hKhM��hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhMMhKhhhMMu��bhMMhMMhKhKhM��hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hNh0j�  u��bh�h
)��}�(h�self.parent_interface�hh)��N}�(hKhMMhK(hhhMMu��bhMMhMMhK(hKhM��hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhMMu��bu��bh�h
)��}�(h�self.parent_interface.device�hh)��N}�(hKhMMhK/hhhMMu��bhMMhMMhK/hKhM��hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhMMu��bu��bjQ  �jR  jT  )��}�(j�  j�  j�  j�  jW  j�  ubjX  j�  jY  j�  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhMMu��bu��bj�  )��N}�(j�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM7hK	hhhM7u��bhM7hM7hK	hKhMa�hh �srlinux::interface���Qubh(j  h�j  h�]�hh �srlinux::interface���Qh.]�hNh0j  u��bj
  �yang_container�hjv  )��N}�(jy  h
)��}�(h�yang::Container�hh)��N}�(hKhM7hK*hhhM7u��bhM7hM7hK*hKhMy�hh �srlinux::interface���Qubj�  }�(�module�h�)��N}�(h�srl_nokia-interfaces�h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM8u��bu��b�name�h�)��N}�(h�ethernet�h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM9u��bu��b�parent�j  )��N}�(j�  h
)��}�(h�yang_container�hh)��N}�(hK&hM:hK4hhhM:u��bhM:hM:hK4hK&hM��hh �srlinux::interface���Qubj�  j  )��N}�(j�  h
)��}�(h�parent_interface�hh)��N}�(hKhM:hK%hhhM:u��bhM:hM:hK%hKhM�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM:hKhhhM:u��bhM:hM:hKhKhM׋hh �srlinux::interface���Qubh(j\  h�j\  h�]�hh �srlinux::interface���Qh.]�hNh0j]  u��bh�h
)��}�(h�self.parent_interface�hh)��N}�(hKhM:hK%hhhM:u��bhM:hM:hK%hKhM׋hh �srlinux::interface���Qubh(ji  h�ji  h�]�hh �srlinux::interface���Qh.]�hM׋h0h2)��N}�(hhhM:u��bu��bh�h
)��}�(h�$self.parent_interface.yang_container�hh)��N}�(hKhM:hK4hhhM:u��bhM:hM:hK4hKhM׋hh �srlinux::interface���Qubh(jy  h�jy  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhM:u��bu��b�subs�j�  )��N}�(h�]�(�aggregate-id�j  )��N}�(j�  h
)��}�(h�aggregate_id�hh)��N}�(hK"hM<hK.hhhM<u��bhM<hM<hK.hK"hM5�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM<hK!hhhM<u��bhM<hM<hK!hKhM(�hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hNh0j�  u��bh�h
)��}�(h�self.aggregate_id�hh)��N}�(hKhM<hK.hhhM<u��bhM<hM<hK.hKhM(�hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hM(�h0h2)��N}�(hhhM<u��bu��b���auto-negotiate�j  )��N}�(j�  h
)��}�(h�auto_negotiate�hh)��N}�(hK$hM=hK2hhhM=u��bhM=hM=hK2hK$hMh�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM=hK#hhhM=u��bhM=hM=hK#hKhMY�hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hNh0j�  u��bh�h
)��}�(h�self.auto_negotiate�hh)��N}�(hKhM=hK2hhhM=u��bhM=hM=hK2hKhMY�hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hMY�h0h2)��N}�(hhhM=u��bu��b���duplex-mode�j  )��N}�(j�  h
)��}�(h�duplex_mode�hh)��N}�(hK!hM>hK,hhhM>u��bhM>hM>hK,hK!hM��hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM>hK hhhM>u��bhM>hM>hK hKhM��hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hNh0j�  u��bh�h
)��}�(h�self.duplex_mode�hh)��N}�(hKhM>hK,hhhM>u��bhM>hM>hK,hKhM��hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM>u��bu��b���forwarding-viable�j  )��N}�(j�  h
)��}�(h�forwarding_viable�hh)��N}�(hK'hM?hK8hhhM?u��bhM?hM?hK8hK'hMΌhh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hK"hM?hK&hhhM?u��bhM?hM?hK&hK"hM��hh �srlinux::interface���Qubh(j  h�j  h�]�hh �srlinux::interface���Qh.]�hNh0j  u��bh�h
)��}�(h�self.forwarding_viable�hh)��N}�(hK"hM?hK8hhhM?u��bhM?hM?hK8hK"hM��hh �srlinux::interface���Qubh(j(  h�j(  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM?u��bu��b���lacp-port-priority�j  )��N}�(j�  h
)��}�(h�lacp_port_priority�hh)��N}�(hK(hM@hK:hhhM@u��bhM@hM@hK:hK(hM	�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hK#hM@hK'hhhM@u��bhM@hM@hK'hK#hM��hh �srlinux::interface���Qubh(jF  h�jF  h�]�hh �srlinux::interface���Qh.]�hNh0jG  u��bh�h
)��}�(h�self.lacp_port_priority�hh)��N}�(hK#hM@hK:hhhM@u��bhM@hM@hK:hK#hM��hh �srlinux::interface���Qubh(jS  h�jS  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM@u��bu��b���mac-address�j  )��N}�(j�  h
)��}�(h�mac_address�hh)��N}�(hK!hMAhK,hhhMAu��bhMAhMAhK,hK!hM6�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhMAhK hhhMAu��bhMAhMAhK hKhM*�hh �srlinux::interface���Qubh(jq  h�jq  h�]�hh �srlinux::interface���Qh.]�hNh0jr  u��bh�h
)��}�(h�self.mac_address�hh)��N}�(hKhMAhK,hhhMAu��bhMAhMAhK,hKhM*�hh �srlinux::interface���Qubh(j~  h�j~  h�]�hh �srlinux::interface���Qh.]�hM*�h0h2)��N}�(hhhMAu��bu��b���
port-speed�j  )��N}�(j�  h
)��}�(h�
port_speed�hh)��N}�(hK hMBhK*hhhMBu��bhMBhMBhK*hK hMa�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhMBhKhhhMBu��bhMBhMBhKhKhMV�hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hNh0j�  u��bh�h
)��}�(h�self.port_speed�hh)��N}�(hKhMBhK*hhhMBu��bhMBhMBhK*hKhMV�hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hMV�h0h2)��N}�(hhhMBu��bu��b���reload-delay�j  )��N}�(j�  h
)��}�(h�reload_delay�hh)��N}�(hK"hMChK.hhhMCu��bhMChMChK.hK"hM��hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhMChK!hhhMCu��bhMChMChK!hKhM��hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hNh0j�  u��bh�h
)��}�(h�self.reload_delay�hh)��N}�(hKhMChK.hhhMCu��bhMChMChK.hKhM��hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhMCu��bu��b���standby-signaling�j  )��N}�(j�  h
)��}�(h�standby_signaling�hh)��N}�(hK'hMDhK8hhhMDu��bhMDhMDhK8hK'hMɍhh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hK"hMDhK&hhhMDu��bhMDhMDhK&hK"hM��hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hNh0j�  u��bh�h
)��}�(h�self.standby_signaling�hh)��N}�(hK"hMDhK8hhhMDu��bhMDhMDhK8hK"hM��hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhMDu��bu��b��eh�]�(j�  j�  j�  j  j8  jc  j�  j�  j�  eh�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhM;u��bu��b�key_attribute�h�)��N}�(h�]�h�j  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhMFu��bu��b�	is_actual�h�)��N}�(h�h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhMGu��bu��b�requires�h�)��N}�(h�]�(j  )��N}�(j�  h
)��}�(h�yang_container�hh)��N}�(hK)hMHhK7hhhMHu��bhMHhMHhK7hK)hM>�hh �srlinux::interface���Qubj�  j  )��N}�(j�  h
)��}�(h�parent_interface�hh)��N}�(hKhMHhK(hhhMHu��bhMHhMHhK(hKhM/�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhMHhKhhhMHu��bhMHhMHhKhKhM�hh �srlinux::interface���Qubh(jJ  h�jJ  h�]�hh �srlinux::interface���Qh.]�hNh0jK  u��bh�h
)��}�(h�self.parent_interface�hh)��N}�(hKhMHhK(hhhMHu��bhMHhMHhK(hKhM�hh �srlinux::interface���Qubh(jW  h�jW  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhMHu��bu��bh�h
)��}�(h�$self.parent_interface.yang_container�hh)��N}�(hKhMHhK7hhhMHu��bhMHhMHhK7hKhM�hh �srlinux::interface���Qubh(jg  h�jg  h�]�hh �srlinux::interface���Qh.]�hM/�h0h2)��N}�(hhhMHu��bu��bj  )��N}�(j�  h
)��}�(h�requires�hh)��N}�(hK>hMHhKFhhhMHu��bhMHhMHhKFhK>hMM�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hK9hMHhK=hhhMHu��bhMHhMHhK=hK9hMD�hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hNh0j�  u��bh�h
)��}�(h�self.requires�hh)��N}�(hK9hMHhKFhhhMHu��bhMHhMHhKFhK9hMD�hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hMD�h0h2)��N}�(hhhMHu��bu��beh�j1  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhMHu��bu��b�provides�j  )��N}�(j�  h
)��}�(h�provides�hh)��N}�(hKhMIhKhhhMIu��bhMIhMIhKhKhMn�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhMIhKhhhMIu��bhMIhMIhKhKhMe�hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hNh0j�  u��bh�h
)��}�(h�self.provides�hh)��N}�(hKhMIhKhhhMIu��bhMIhMIhKhKhMe�hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hMe�h0h2)��N}�(hhhMIu��bu��b�purged�j  )��N}�(j�  h
)��}�(h�purged�hh)��N}�(hKhMJhKhhhMJu��bhMJhMJhKhKhM��hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhMJhKhhhMJu��bhMJhMJhKhKhM��hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hNh0j�  u��bh�h
)��}�(h�self.purged�hh)��N}�(hKhMJhKhhhMJu��bhMJhMJhKhKhM��hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhMJu��bu��buj(  ]�hh2)��N}�(hhhM7u��bhjNj-  ]�j/  }�j1  }�h�]�hh �srlinux::interface���Qh.]�(h�)��}�(h�j%  hh �srlinux::interface���Qhjj"  ubj�  )��}�(h�h)��N}�(hK	hM8hKhhhM8u��bhh �srlinux::interface���Qhjj"  j�  j+  ubj�  )��}�(h�h)��N}�(hK	hM9hKhhhM9u��bhh �srlinux::interface���Qhjj"  j�  j7  ubj�  )��}�(h�h)��N}�(hK	hM:hKhhhM:u��bhh �srlinux::interface���Qhjj"  j�  jC  ubj�  )��}�(h�h)��N}�(hK	hM;hKhhhM;u��bhh �srlinux::interface���Qhjj"  j�  j�  ubj�  )��}�(h�h)��N}�(hK	hMFhKhhhMFu��bhh �srlinux::interface���Qhjj"  j�  j  ubj�  )��}�(h�h)��N}�(hK	hMGhKhhhMGu��bhh �srlinux::interface���Qhjj"  j�  j#  ubj�  )��}�(h�h)��N}�(hK	hMHhKhhhMHu��bhh �srlinux::interface���Qhjj"  j�  j.  ubj�  )��}�(h�h)��N}�(hK	hMIhKhhhMIu��bhh �srlinux::interface���Qhjj"  j�  j�  ubj�  )��}�(h�h)��N}�(hK	hMJhKhhhMJu��bhh �srlinux::interface���Qhjj"  j�  j�  ubehNh0Nu��bjQ  �jR  jT  )��}�(j�  j  j�  j  jW  j  ubjX  j  jY  j   h�]�hh �srlinux::interface���Qh.]�(j  j	  j  j  j  j%  j,  j3  j:  jA  ehMq�h0h2)��N}�(hhhM7u��bu��bej�  ]�j�  ]�hh �srlinux::interface���Qj�  Nubhh �srlinux::interface���Qj�  �Ethernet�htNu}�h0h)��N}�(hKhM6hK*hhhM6u��bs��bhtNj�  j�  j+  h
)��}�(hjY  hh)��N}�(hK/hM6hK7hhhM6u��bhM6hM6hK7hK/hMW�hh �srlinux::interface���Qubu}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�ja  hh �srlinux::interface���Qhjj_  ubj  j	  j  j  j  j%  j,  j3  j:  jA  ehNh0j[  u��bj�  )��}�(h(�setupLagYangContainer�hh�)srlinux::interface::setupLagYangContainer�hjj�  )��}�(h(jq  hj�  )��}�(j�  ]�(j�  )��N}�(j�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhMchK	hhhMcu��bhMchMchK	hKhMn�hh �srlinux::interface���Qubh(j~  h�j~  h�]�hh �srlinux::interface���Qh.]�hNh0j  u��bj
  �device�hj  )��N}�(j�  h
)��}�(h�device�hh)��N}�(hK)hMchK/hhhMcu��bhMchMchK/hK)hM��hh �srlinux::interface���Qubj�  j  )��N}�(j�  h
)��}�(h�parent_interface�hh)��N}�(hKhMchK(hhhMcu��bhMchMchK(hKhM��hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhMchKhhhMcu��bhMchMchKhKhM|�hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hNh0j�  u��bh�h
)��}�(h�self.parent_interface�hh)��N}�(hKhMchK(hhhMcu��bhMchMchK(hKhM|�hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hM|�h0h2)��N}�(hhhMcu��bu��bh�h
)��}�(h�self.parent_interface.device�hh)��N}�(hKhMchK/hhhMcu��bhMchMchK/hKhM|�hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhMcu��bu��bjQ  �jR  jT  )��}�(j�  jz  j�  j�  jW  jx  ubjX  jz  jY  j�  h�]�hh �srlinux::interface���Qh.]�hMv�h0h2)��N}�(hhhMcu��bu��bj�  )��N}�(j�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhMQhK	hhhMQu��bhMQhMQhK	hKhM��hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hNh0j�  u��bj
  �yang_container�hjv  )��N}�(jy  h
)��}�(h�yang::Container�hh)��N}�(hKhMQhK*hhhMQu��bhMQhMQhK*hKhM�hh �srlinux::interface���Qubj�  }�(�module�h�)��N}�(h�srl_nokia-interfaces-lag�h�]�hh �srlinux::interface���Qh.]�hM/�h0h2)��N}�(hhhMRu��bu��b�name�h�)��N}�(h�lag�h�]�hh �srlinux::interface���Qh.]�hMX�h0h2)��N}�(hhhMSu��bu��b�parent�j  )��N}�(j�  h
)��}�(h�yang_container�hh)��N}�(hK&hMThK4hhhMTu��bhMThMThK4hK&hM��hh �srlinux::interface���Qubj�  j  )��N}�(j�  h
)��}�(h�parent_interface�hh)��N}�(hKhMThK%hhhMTu��bhMThMThK%hKhM��hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhMThKhhhMTu��bhMThMThKhKhMr�hh �srlinux::interface���Qubh(j%  h�j%  h�]�hh �srlinux::interface���Qh.]�hNh0j&  u��bh�h
)��}�(h�self.parent_interface�hh)��N}�(hKhMThK%hhhMTu��bhMThMThK%hKhMr�hh �srlinux::interface���Qubh(j2  h�j2  h�]�hh �srlinux::interface���Qh.]�hMr�h0h2)��N}�(hhhMTu��bu��bh�h
)��}�(h�$self.parent_interface.yang_container�hh)��N}�(hKhMThK4hhhMTu��bhMThMThK4hKhMr�hh �srlinux::interface���Qubh(jB  h�jB  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhMTu��bu��b�subs�j�  )��N}�(h�]�(�lacp-fallback-mode�j  )��N}�(j�  h
)��}�(h�lacp_fallback_mode�hh)��N}�(hK(hMVhK:hhhMVu��bhMVhMVhK:hK(hM܏hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hK#hMVhK'hhhMVu��bhMVhMVhK'hK#hMɏhh �srlinux::interface���Qubh(jc  h�jc  h�]�hh �srlinux::interface���Qh.]�hNh0jd  u��bh�h
)��}�(h�self.lacp_fallback_mode�hh)��N}�(hK#hMVhK:hhhMVu��bhMVhMVhK:hK#hMɏhh �srlinux::interface���Qubh(jp  h�jp  h�]�hh �srlinux::interface���Qh.]�hMɏh0h2)��N}�(hhhMVu��bu��b���lacp-fallback-timeout�j  )��N}�(j�  h
)��}�(h�lacp_fallback_timeout�hh)��N}�(hK+hMWhK@hhhMWu��bhMWhMWhK@hK+hM�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hK&hMWhK*hhhMWu��bhMWhMWhK*hK&hM�hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hNh0j�  u��bh�h
)��}�(h�self.lacp_fallback_timeout�hh)��N}�(hK&hMWhK@hhhMWu��bhMWhMWhK@hK&hM�hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhMWu��bu��b���lag-type�j  )��N}�(j�  h
)��}�(h�lag_type�hh)��N}�(hKhMXhK&hhhMXu��bhMXhMXhK&hKhMD�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhMXhKhhhMXu��bhMXhMXhKhKhM;�hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hNh0j�  u��bh�h
)��}�(h�self.lag_type�hh)��N}�(hKhMXhK&hhhMXu��bhMXhMXhK&hKhM;�hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hM;�h0h2)��N}�(hhhMXu��bu��b���member-speed�j  )��N}�(j�  h
)��}�(h�member_speed�hh)��N}�(hK"hMYhK.hhhMYu��bhMYhMYhK.hK"hMs�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhMYhK!hhhMYu��bhMYhMYhK!hKhMf�hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hNh0j�  u��bh�h
)��}�(h�self.member_speed�hh)��N}�(hKhMYhK.hhhMYu��bhMYhMYhK.hKhMf�hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hMf�h0h2)��N}�(hhhMYu��bu��b���	min-links�j  )��N}�(j�  h
)��}�(h�	min_links�hh)��N}�(hKhMZhK(hhhMZu��bhMZhMZhK(hKhM��hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhMZhKhhhMZu��bhMZhMZhKhKhM��hh �srlinux::interface���Qubh(j  h�j  h�]�hh �srlinux::interface���Qh.]�hNh0j  u��bh�h
)��}�(h�self.min_links�hh)��N}�(hKhMZhK(hhhMZu��bhMZhMZhK(hKhM��hh �srlinux::interface���Qubh(j  h�j  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhMZu��bu��b��eh�]�(jU  j�  j�  j�  j  eh�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhMUu��bu��b�key_attribute�h�)��N}�(h�]�h�j7  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM\u��bu��b�	is_actual�h�)��N}�(h�h�]�hh �srlinux::interface���Qh.]�hMՐh0h2)��N}�(hhhM]u��bu��b�requires�h�)��N}�(h�]�(j  )��N}�(j�  h
)��}�(h�yang_container�hh)��N}�(hK)hM^hK7hhhM^u��bhM^hM^hK7hK)hM�hh �srlinux::interface���Qubj�  j  )��N}�(j�  h
)��}�(h�parent_interface�hh)��N}�(hKhM^hK(hhhM^u��bhM^hM^hK(hKhM�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM^hKhhhM^u��bhM^hM^hKhKhM�hh �srlinux::interface���Qubh(jg  h�jg  h�]�hh �srlinux::interface���Qh.]�hNh0jh  u��bh�h
)��}�(h�self.parent_interface�hh)��N}�(hKhM^hK(hhhM^u��bhM^hM^hK(hKhM�hh �srlinux::interface���Qubh(jt  h�jt  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhM^u��bu��bh�h
)��}�(h�$self.parent_interface.yang_container�hh)��N}�(hKhM^hK7hhhM^u��bhM^hM^hK7hKhM�hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhM^u��bu��bj  )��N}�(j�  h
)��}�(h�requires�hh)��N}�(hK>hM^hKFhhhM^u��bhM^hM^hKFhK>hM �hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hK9hM^hK=hhhM^u��bhM^hM^hK=hK9hM�hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hNh0j�  u��bh�h
)��}�(h�self.requires�hh)��N}�(hK9hM^hKFhhhM^u��bhM^hM^hKFhK9hM�hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhM^u��bu��beh�jN  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhM^u��bu��b�provides�j  )��N}�(j�  h
)��}�(h�provides�hh)��N}�(hKhM_hKhhhM_u��bhM_hM_hKhKhMA�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM_hKhhhM_u��bhM_hM_hKhKhM8�hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hNh0j�  u��bh�h
)��}�(h�self.provides�hh)��N}�(hKhM_hKhhhM_u��bhM_hM_hKhKhM8�hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hM8�h0h2)��N}�(hhhM_u��bu��b�purged�j  )��N}�(j�  h
)��}�(h�purged�hh)��N}�(hKhM`hKhhhM`u��bhM`hM`hKhKhM]�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM`hKhhhM`u��bhM`hM`hKhKhMV�hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hNh0j�  u��bh�h
)��}�(h�self.purged�hh)��N}�(hKhM`hKhhhM`u��bhM`hM`hKhKhMV�hh �srlinux::interface���Qubh(j	  h�j	  h�]�hh �srlinux::interface���Qh.]�hMV�h0h2)��N}�(hhhM`u��bu��buj(  ]�hh2)��N}�(hhhMQu��bhjNj-  ]�j/  }�j1  }�h�]�hh �srlinux::interface���Qh.]�(h�)��}�(h�j�  hh �srlinux::interface���Qhjj�  ubj�  )��}�(h�h)��N}�(hK	hMRhKhhhMRu��bhh �srlinux::interface���Qhjj�  j�  j�  ubj�  )��}�(h�h)��N}�(hK	hMShKhhhMSu��bhh �srlinux::interface���Qhjj�  j�  j   ubj�  )��}�(h�h)��N}�(hK	hMThKhhhMTu��bhh �srlinux::interface���Qhjj�  j�  j  ubj�  )��}�(h�h)��N}�(hK	hMUhKhhhMUu��bhh �srlinux::interface���Qhjj�  j�  jP  ubj�  )��}�(h�h)��N}�(hK	hM\hKhhhM\u��bhh �srlinux::interface���Qhjj�  j�  j4  ubj�  )��}�(h�h)��N}�(hK	hM]hKhhhM]u��bhh �srlinux::interface���Qhjj�  j�  j@  ubj�  )��}�(h�h)��N}�(hK	hM^hKhhhM^u��bhh �srlinux::interface���Qhjj�  j�  jK  ubj�  )��}�(h�h)��N}�(hK	hM_hKhhhM_u��bhh �srlinux::interface���Qhjj�  j�  j�  ubj�  )��}�(h�h)��N}�(hK	hM`hKhhhM`u��bhh �srlinux::interface���Qhjj�  j�  j�  ubehNh0Nu��bjQ  �jR  jT  )��}�(j�  j�  j�  j�  jW  j�  ubjX  j�  jY  j�  h�]�hh �srlinux::interface���Qh.]�(j"  j&  j-  j4  j;  jB  jI  jP  jW  j^  ehM�h0h2)��N}�(hhhMQu��bu��bej�  ]�j�  ]�hh �srlinux::interface���Qj�  Nubhh �srlinux::interface���Qj�  �Lag�htNu}�h0h)��N}�(hKhMPhK%hhhMPu��bs��bhtNj�  ju  j+  h
)��}�(hjv  hh)��N}�(hK*hMPhK-hhhMPu��bhMPhMPhK-hK*hM�hh �srlinux::interface���Qubu}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�j~  hh �srlinux::interface���Qhjj|  ubj"  j&  j-  j4  j;  jB  jI  jP  jW  j^  ehNh0jx  u��bj�  )��}�(h(�setupLinuxYangContainer�hh�+srlinux::interface::setupLinuxYangContainer�hjj�  )��}�(h(j�  hj�  )��}�(j�  ]�(j�  )��N}�(j�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhMuhK	hhhMuu��bhMuhMuhK	hKhMz�hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hNh0j�  u��bj
  �device�hj  )��N}�(j�  h
)��}�(h�device�hh)��N}�(hK)hMuhK/hhhMuu��bhMuhMuhK/hK)hM��hh �srlinux::interface���Qubj�  j  )��N}�(j�  h
)��}�(h�parent_interface�hh)��N}�(hKhMuhK(hhhMuu��bhMuhMuhK(hKhM��hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhMuhKhhhMuu��bhMuhMuhKhKhM��hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hNh0j�  u��bh�h
)��}�(h�self.parent_interface�hh)��N}�(hKhMuhK(hhhMuu��bhMuhMuhK(hKhM��hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhMuu��bu��bh�h
)��}�(h�self.parent_interface.device�hh)��N}�(hKhMuhK/hhhMuu��bhMuhMuhK/hKhM��hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhMuu��bu��bjQ  �jR  jT  )��}�(j�  j�  j�  j�  jW  j�  ubjX  j�  jY  j�  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhMuu��bu��bj�  )��N}�(j�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhMghK	hhhMgu��bhMghMghK	hKhMԑhh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hNh0j�  u��bj
  �yang_container�hjv  )��N}�(jy  h
)��}�(h�yang::Container�hh)��N}�(hKhMghK*hhhMgu��bhMghMghK*hKhM�hh �srlinux::interface���Qubj�  }�(�module�h�)��N}�(h�srl_nokia-interfaces-vxdp�h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhMhu��bu��b�name�h�)��N}�(h�linux�h�]�hh �srlinux::interface���Qh.]�hM0�h0h2)��N}�(hhhMiu��bu��b�parent�j  )��N}�(j�  h
)��}�(h�yang_container�hh)��N}�(hK&hMjhK4hhhMju��bhMjhMjhK4hK&hMl�hh �srlinux::interface���Qubj�  j  )��N}�(j�  h
)��}�(h�parent_interface�hh)��N}�(hKhMjhK%hhhMju��bhMjhMjhK%hKhM]�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhMjhKhhhMju��bhMjhMjhKhKhML�hh �srlinux::interface���Qubh(jB  h�jB  h�]�hh �srlinux::interface���Qh.]�hNh0jC  u��bh�h
)��}�(h�self.parent_interface�hh)��N}�(hKhMjhK%hhhMju��bhMjhMjhK%hKhML�hh �srlinux::interface���Qubh(jO  h�jO  h�]�hh �srlinux::interface���Qh.]�hML�h0h2)��N}�(hhhMju��bu��bh�h
)��}�(h�$self.parent_interface.yang_container�hh)��N}�(hKhMjhK4hhhMju��bhMjhMjhK4hKhML�hh �srlinux::interface���Qubh(j_  h�j_  h�]�hh �srlinux::interface���Qh.]�hM]�h0h2)��N}�(hhhMju��bu��b�subs�j�  )��N}�(h�]��device-name�j  )��N}�(j�  h
)��}�(h�device_name�hh)��N}�(hK!hMlhK,hhhMlu��bhMlhMlhK,hK!hM��hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhMlhK hhhMlu��bhMlhMlhK hKhM��hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hNh0j�  u��bh�h
)��}�(h�self.device_name�hh)��N}�(hKhMlhK,hhhMlu��bhMlhMlhK,hKhM��hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhMlu��bu��b��ah�]�jr  ah�]�hh �srlinux::interface���Qh.]�hM{�h0h2)��N}�(hhhMku��bu��b�key_attribute�h�)��N}�(h�]�h�j�  h�]�hh �srlinux::interface���Qh.]�hM˒h0h2)��N}�(hhhMnu��bu��b�	is_actual�h�)��N}�(h�h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhMou��bu��b�requires�h�)��N}�(h�]�(j  )��N}�(j�  h
)��}�(h�yang_container�hh)��N}�(hK)hMphK7hhhMpu��bhMphMphK7hK)hM�hh �srlinux::interface���Qubj�  j  )��N}�(j�  h
)��}�(h�parent_interface�hh)��N}�(hKhMphK(hhhMpu��bhMphMphK(hKhM�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhMphKhhhMpu��bhMphMphKhKhM��hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hNh0j�  u��bh�h
)��}�(h�self.parent_interface�hh)��N}�(hKhMphK(hhhMpu��bhMphMphK(hKhM��hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhMpu��bu��bh�h
)��}�(h�$self.parent_interface.yang_container�hh)��N}�(hKhMphK7hhhMpu��bhMphMphK7hKhM��hh �srlinux::interface���Qubh(j�  h�j�  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhMpu��bu��bj  )��N}�(j�  h
)��}�(h�requires�hh)��N}�(hK>hMphKFhhhMpu��bhMphMphKFhK>hM,�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hK9hMphK=hhhMpu��bhMphMphK=hK9hM#�hh �srlinux::interface���Qubh(j   h�j   h�]�hh �srlinux::interface���Qh.]�hNh0j   u��bh�h
)��}�(h�self.requires�hh)��N}�(hK9hMphKFhhhMpu��bhMphMphKFhK9hM#�hh �srlinux::interface���Qubh(j   h�j   h�]�hh �srlinux::interface���Qh.]�hM#�h0h2)��N}�(hhhMpu��bu��beh�j�  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhMpu��bu��b�provides�j  )��N}�(j�  h
)��}�(h�provides�hh)��N}�(hKhMqhKhhhMqu��bhMqhMqhKhKhMM�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhMqhKhhhMqu��bhMqhMqhKhKhMD�hh �srlinux::interface���Qubh(jC   h�jC   h�]�hh �srlinux::interface���Qh.]�hNh0jD   u��bh�h
)��}�(h�self.provides�hh)��N}�(hKhMqhKhhhMqu��bhMqhMqhKhKhMD�hh �srlinux::interface���Qubh(jP   h�jP   h�]�hh �srlinux::interface���Qh.]�hMD�h0h2)��N}�(hhhMqu��bu��b�purged�j  )��N}�(j�  h
)��}�(h�purged�hh)��N}�(hKhMrhKhhhMru��bhMrhMrhKhKhMi�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhMrhKhhhMru��bhMrhMrhKhKhMb�hh �srlinux::interface���Qubh(jm   h�jm   h�]�hh �srlinux::interface���Qh.]�hNh0jn   u��bh�h
)��}�(h�self.purged�hh)��N}�(hKhMrhKhhhMru��bhMrhMrhKhKhMb�hh �srlinux::interface���Qubh(jz   h�jz   h�]�hh �srlinux::interface���Qh.]�hMb�h0h2)��N}�(hhhMru��bu��buj(  ]�hh2)��N}�(hhhMgu��bhjNj-  ]�j/  }�j1  }�h�]�hh �srlinux::interface���Qh.]�(h�)��}�(h�j  hh �srlinux::interface���Qhjj  ubj�  )��}�(h�h)��N}�(hK	hMhhKhhhMhu��bhh �srlinux::interface���Qhjj  j�  j  ubj�  )��}�(h�h)��N}�(hK	hMihKhhhMiu��bhh �srlinux::interface���Qhjj  j�  j  ubj�  )��}�(h�h)��N}�(hK	hMjhKhhhMju��bhh �srlinux::interface���Qhjj  j�  j)  ubj�  )��}�(h�h)��N}�(hK	hMkhKhhhMku��bhh �srlinux::interface���Qhjj  j�  jm  ubj�  )��}�(h�h)��N}�(hK	hMnhKhhhMnu��bhh �srlinux::interface���Qhjj  j�  j�  ubj�  )��}�(h�h)��N}�(hK	hMohKhhhMou��bhh �srlinux::interface���Qhjj  j�  j�  ubj�  )��}�(h�h)��N}�(hK	hMphKhhhMpu��bhh �srlinux::interface���Qhjj  j�  j�  ubj�  )��}�(h�h)��N}�(hK	hMqhKhhhMqu��bhh �srlinux::interface���Qhjj  j�  j4   ubj�  )��}�(h�h)��N}�(hK	hMrhKhhhMru��bhh �srlinux::interface���Qhjj  j�  j^   ubehNh0Nu��bjQ  �jR  jT  )��}�(j�  j�  j�  j  jW  j�  ubjX  j�  jY  j  h�]�hh �srlinux::interface���Qh.]�(j�   j�   j�   j�   j�   j�   j�   j�   j�   j�   ehM�h0h2)��N}�(hhhMgu��bu��bej�  ]�j�  ]�hh �srlinux::interface���Qj�  Nubhh �srlinux::interface���Qj�  �Linux�htNu}�h0h)��N}�(hKhMfhK'hhhMfu��bs��bhtNj�  j�  j+  h
)��}�(hj�   hh)��N}�(hK,hMfhK1hhhMfu��bhMfhMfhK1hK,hMʑhh �srlinux::interface���Qubu}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�j�   hh �srlinux::interface���Qhjj�   ubj�   j�   j�   j�   j�   j�   j�   j�   j�   j�   ehNh0j�   u��bj�  )��}�(h(�setupP4rtYangContainer�hh�*srlinux::interface::setupP4rtYangContainer�hjj�  )��}�(h(j�   hj�  )��}�(j�  ]�(j�  )��N}�(j�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hK	hhhM�u��bhM�hM�hK	hKhMq�hh �srlinux::interface���Qubh(j!  h�j!  h�]�hh �srlinux::interface���Qh.]�hNh0j!  u��bj
  �device�hj  )��N}�(j�  h
)��}�(h�device�hh)��N}�(hK)hM�hK/hhhM�u��bhM�hM�hK/hK)hM��hh �srlinux::interface���Qubj�  j  )��N}�(j�  h
)��}�(h�parent_interface�hh)��N}�(hKhM�hK(hhhM�u��bhM�hM�hK(hKhM��hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM�hh �srlinux::interface���Qubh(j0!  h�j0!  h�]�hh �srlinux::interface���Qh.]�hNh0j1!  u��bh�h
)��}�(h�self.parent_interface�hh)��N}�(hKhM�hK(hhhM�u��bhM�hM�hK(hKhM�hh �srlinux::interface���Qubh(j=!  h�j=!  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhM�u��bu��bh�h
)��}�(h�self.parent_interface.device�hh)��N}�(hKhM�hK/hhhM�u��bhM�hM�hK/hKhM�hh �srlinux::interface���Qubh(jM!  h�jM!  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM�u��bu��bjQ  �jR  jT  )��}�(j�  j!  j�  j!  jW  j!  ubjX  j!  jY  j!  h�]�hh �srlinux::interface���Qh.]�hMy�h0h2)��N}�(hhhM�u��bu��bj�  )��N}�(j�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhMyhK	hhhMyu��bhMyhMyhK	hKhMޓhh �srlinux::interface���Qubh(jk!  h�jk!  h�]�hh �srlinux::interface���Qh.]�hNh0jl!  u��bj
  �yang_container�hjv  )��N}�(jy  h
)��}�(h�yang::Container�hh)��N}�(hKhMyhK*hhhMyu��bhMyhMyhK*hKhM��hh �srlinux::interface���Qubj�  }�(�module�h�)��N}�(h�srl_nokia-interfaces-p4rt�h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhMzu��bu��b�name�h�)��N}�(h�p4rt�h�]�hh �srlinux::interface���Qh.]�hM:�h0h2)��N}�(hhhM{u��bu��b�parent�j  )��N}�(j�  h
)��}�(h�yang_container�hh)��N}�(hK&hM|hK4hhhM|u��bhM|hM|hK4hK&hMu�hh �srlinux::interface���Qub���      j�  j  )��N}�(j�  h
)��}�(h�parent_interface�hh)��N}�(hKhM|hK%hhhM|u��bhM|hM|hK%hKhMf�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM|hKhhhM|u��bhM|hM|hKhKhMU�hh �srlinux::interface���Qubh(j�!  h�j�!  h�]�hh �srlinux::interface���Qh.]�hNh0j�!  u��bh�h
)��}�(h�self.parent_interface�hh)��N}�(hKhM|hK%hhhM|u��bhM|hM|hK%hKhMU�hh �srlinux::interface���Qubh(j�!  h�j�!  h�]�hh �srlinux::interface���Qh.]�hMU�h0h2)��N}�(hhhM|u��bu��bh�h
)��}�(h�$self.parent_interface.yang_container�hh)��N}�(hKhM|hK4hhhM|u��bhM|hM|hK4hKhMU�hh �srlinux::interface���Qubh(j�!  h�j�!  h�]�hh �srlinux::interface���Qh.]�hMf�h0h2)��N}�(hhhM|u��bu��b�subs�j�  )��N}�(h�]��id�j  )��N}�(j�  h
)��}�(h�id�hh)��N}�(hKhM~hKhhhM~u��bhM~hM~hKhKhM��hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM~hKhhhM~u��bhM~hM~hKhKhM��hh �srlinux::interface���Qubh(j�!  h�j�!  h�]�hh �srlinux::interface���Qh.]�hNh0j�!  u��bh�h
)��}�(h�self.id�hh)��N}�(hKhM~hKhhhM~u��bhM~hM~hKhKhM��hh �srlinux::interface���Qubh(j�!  h�j�!  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM~u��bu��b��ah�]�j�!  ah�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM}u��bu��b�key_attribute�h�)��N}�(h�]�h�j"  h�]�hh �srlinux::interface���Qh.]�hMh0h2)��N}�(hhhM�u��bu��b�	is_actual�h�)��N}�(h�h�]�hh �srlinux::interface���Qh.]�hMؔh0h2)��N}�(hhhM�u��bu��b�requires�h�)��N}�(h�]�(j  )��N}�(j�  h
)��}�(h�yang_container�hh)��N}�(hK)hM�hK7hhhM�u��bhM�hM�hK7hK)hM�hh �srlinux::interface���Qubj�  j  )��N}�(j�  h
)��}�(h�parent_interface�hh)��N}�(hKhM�hK(hhhM�u��bhM�hM�hK(hKhM�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM��hh �srlinux::interface���Qubh(jI"  h�jI"  h�]�hh �srlinux::interface���Qh.]�hNh0jJ"  u��bh�h
)��}�(h�self.parent_interface�hh)��N}�(hKhM�hK(hhhM�u��bhM�hM�hK(hKhM��hh �srlinux::interface���Qubh(jV"  h�jV"  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM�u��bu��bh�h
)��}�(h�$self.parent_interface.yang_container�hh)��N}�(hKhM�hK7hhhM�u��bhM�hM�hK7hKhM��hh �srlinux::interface���Qubh(jf"  h�jf"  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhM�u��bu��bj  )��N}�(j�  h
)��}�(h�requires�hh)��N}�(hK>hM�hKFhhhM�u��bhM�hM�hKFhK>hM#�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hK9hM�hK=hhhM�u��bhM�hM�hK=hK9hM�hh �srlinux::interface���Qubh(j�"  h�j�"  h�]�hh �srlinux::interface���Qh.]�hNh0j�"  u��bh�h
)��}�(h�self.requires�hh)��N}�(hK9hM�hKFhhhM�u��bhM�hM�hKFhK9hM�hh �srlinux::interface���Qubh(j�"  h�j�"  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhM�u��bu��beh�j0"  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhM�u��bu��b�provides�j  )��N}�(j�  h
)��}�(h�provides�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhMD�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM;�hh �srlinux::interface���Qubh(j�"  h�j�"  h�]�hh �srlinux::interface���Qh.]�hNh0j�"  u��bh�h
)��}�(h�self.provides�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM;�hh �srlinux::interface���Qubh(j�"  h�j�"  h�]�hh �srlinux::interface���Qh.]�hM;�h0h2)��N}�(hhhM�u��bu��b�purged�j  )��N}�(j�  h
)��}�(h�purged�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM`�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhMY�hh �srlinux::interface���Qubh(j�"  h�j�"  h�]�hh �srlinux::interface���Qh.]�hNh0j�"  u��bh�h
)��}�(h�self.purged�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhMY�hh �srlinux::interface���Qubh(j�"  h�j�"  h�]�hh �srlinux::interface���Qh.]�hMY�h0h2)��N}�(hhhM�u��bu��buj(  ]�hh2)��N}�(hhhMyu��bhjNj-  ]�j/  }�j1  }�h�]�hh �srlinux::interface���Qh.]�(h�)��}�(h�j|!  hh �srlinux::interface���Qhjjy!  ubj�  )��}�(h�h)��N}�(hK	hMzhKhhhMzu��bhh �srlinux::interface���Qhjjy!  j�  j�!  ubj�  )��}�(h�h)��N}�(hK	hM{hKhhhM{u��bhh �srlinux::interface���Qhjjy!  j�  j�!  ubj�  )��}�(h�h)��N}�(hK	hM|hKhhhM|u��bhh �srlinux::interface���Qhjjy!  j�  j�!  ubj�  )��}�(h�h)��N}�(hK	hM}hKhhhM}u��bhh �srlinux::interface���Qhjjy!  j�  j�!  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjjy!  j�  j"  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjjy!  j�  j""  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjjy!  j�  j-"  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjjy!  j�  j�"  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjjy!  j�  j�"  ubehNh0Nu��bjQ  �jR  jT  )��}�(j�  jg!  j�  jv!  jW  je!  ubjX  jg!  jY  jw!  h�]�hh �srlinux::interface���Qh.]�(j#  j#  j#  j#  j#  j$#  j+#  j2#  j9#  j@#  ehM�h0h2)��N}�(hhhMyu��bu��bej�  ]�j�  ]�hh �srlinux::interface���Qj�  Nubhh �srlinux::interface���Qj�  �P4rt�htNu}�h0h)��N}�(hKhMxhK&hhhMxu��bs��bhtNj�  j!  j+  h
)��}�(hjX#  hh)��N}�(hK+hMxhK/hhhMxu��bhMxhMxhK/hK+hMԓhh �srlinux::interface���Qubu}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�j`#  hh �srlinux::interface���Qhjj^#  ubj#  j#  j#  j#  j#  j$#  j+#  j2#  j9#  j@#  ehNh0jZ#  u��bj�  )��}�(h(�setupQosYangContainer�hh�)srlinux::interface::setupQosYangContainer�hjj�  )��}�(h(jp#  hj�  )��}�(j�  ]�(j�  )��N}�(j�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hK	hhhM�u��bhM�hM�hK	hKhM5�hh �srlinux::interface���Qubh(j}#  h�j}#  h�]�hh �srlinux::interface���Qh.]�hNh0j~#  u��bj
  �device�hj  )��N}�(j�  h
)��}�(h�device�hh)��N}�(hK)hM�hK/hhhM�u��bhM�hM�hK/hK)hM[�hh �srlinux::interface���Qubj�  j  )��N}�(j�  h
)��}�(h�parent_interface�hh)��N}�(hKhM�hK(hhhM�u��bhM�hM�hK(hKhMT�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhMC�hh �srlinux::interface���Qubh(j�#  h�j�#  h�]�hh �srlinux::interface���Qh.]�hNh0j�#  u��bh�h
)��}�(h�self.parent_interface�hh)��N}�(hKhM�hK(hhhM�u��bhM�hM�hK(hKhMC�hh �srlinux::interface���Qubh(j�#  h�j�#  h�]�hh �srlinux::interface���Qh.]�hMC�h0h2)��N}�(hhhM�u��bu��bh�h
)��}�(h�self.parent_interface.device�hh)��N}�(hKhM�hK/hhhM�u��bhM�hM�hK/hKhMC�hh �srlinux::interface���Qubh(j�#  h�j�#  h�]�hh �srlinux::interface���Qh.]�hMT�h0h2)��N}�(hhhM�u��bu��bjQ  �jR  jT  )��}�(j�  jy#  j�  j�#  jW  jw#  ubjX  jy#  jY  j�#  h�]�hh �srlinux::interface���Qh.]�hM=�h0h2)��N}�(hhhM�u��bu��bj�  )��N}�(j�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hK	hhhM�u��bhM�hM�hK	hKhMӕhh �srlinux::interface���Qubh(j�#  h�j�#  h�]�hh �srlinux::interface���Qh.]�hNh0j�#  u��bj
  �yang_container�hjv  )��N}�(jy  h
)��}�(h�yang::Container�hh)��N}�(hKhM�hK*hhhM�u��bhM�hM�hK*hKhM�hh �srlinux::interface���Qubj�  }�(�module�h�)��N}�(h�srl_nokia-qos�h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhM�u��bu��b�name�h�)��N}�(h�qos�h�]�hh �srlinux::interface���Qh.]�hM#�h0h2)��N}�(hhhM�u��bu��b�parent�j  )��N}�(j�  h
)��}�(h�yang_container�hh)��N}�(hK&hM�hK4hhhM�u��bhM�hM�hK4hK&hM]�hh �srlinux::interface���Qubj�  j  )��N}�(j�  h
)��}�(h�parent_interface�hh)��N}�(hKhM�hK%hhhM�u��bhM�hM�hK%hKhMN�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM=�hh �srlinux::interface���Qubh(j$$  h�j$$  h�]�hh �srlinux::interface���Qh.]�hNh0j%$  u��bh�h
)��}�(h�self.parent_interface�hh)��N}�(hKhM�hK%hhhM�u��bhM�hM�hK%hKhM=�hh �srlinux::interface���Qubh(j1$  h�j1$  h�]�hh �srlinux::interface���Qh.]�hM=�h0h2)��N}�(hhhM�u��bu��bh�h
)��}�(h�$self.parent_interface.yang_container�hh)��N}�(hKhM�hK4hhhM�u��bhM�hM�hK4hKhM=�hh �srlinux::interface���Qubh(jA$  h�jA$  h�]�hh �srlinux::interface���Qh.]�hMN�h0h2)��N}�(hhhM�u��bu��b�subs�j�  )��N}�(h�]�h�]�h�]�hh �srlinux::interface���Qh.]�hMl�h0h2)��N}�(hhhM�u��bu��b�key_attribute�h�)��N}�(h�]�h�j_$  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM�u��bu��b�	is_actual�h�)��N}�(h�h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM�u��bu��b�requires�h�)��N}�(h�]�(j  )��N}�(j�  h
)��}�(h�yang_container�hh)��N}�(hK)hM�hK7hhhM�u��bhM�hM�hK7hK)hMؖhh �srlinux::interface���Qubj�  j  )��N}�(j�  h
)��}�(h�parent_interface�hh)��N}�(hKhM�hK(hhhM�u��bhM�hM�hK(hKhMɖhh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM��hh �srlinux::interface���Qubh(j�$  h�j�$  h�]�hh �srlinux::interface���Qh.]�hNh0j�$  u��bh�h
)��}�(h�self.parent_interface�hh)��N}�(hKhM�hK(hhhM�u��bhM�hM�hK(hKhM��hh �srlinux::interface���Qubh(j�$  h�j�$  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM�u��bu��bh�h
)��}�(h�$self.parent_interface.yang_container�hh)��N}�(hKhM�hK7hhhM�u��bhM�hM�hK7hKhM��hh �srlinux::interface���Qubh(j�$  h�j�$  h�]�hh �srlinux::interface���Qh.]�hMɖh0h2)��N}�(hhhM�u��bu��bj  )��N}�(j�  h
)��}�(h�requires�hh)��N}�(hK>hM�hKFhhhM�u��bhM�hM�hKFhK>hM�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hK9hM�hK=hhhM�u��bhM�hM�hK=hK9hMޖhh �srlinux::interface���Qubh(j�$  h�j�$  h�]�hh �srlinux::interface���Qh.]�hNh0j�$  u��bh�h
)��}�(h�self.requires�hh)��N}�(hK9hM�hKFhhhM�u��bhM�hM�hKFhK9hMޖhh �srlinux::interface���Qubh(j�$  h�j�$  h�]�hh �srlinux::interface���Qh.]�hMޖh0h2)��N}�(hhhM�u��bu��beh�jv$  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM�u��bu��b�provides�j  )��N}�(j�  h
)��}�(h�provides�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM��hh �srlinux::interface���Qubh(j�$  h�j�$  h�]�hh �srlinux::interface���Qh.]�hNh0j�$  u��bh�h
)��}�(h�self.provides�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM��hh �srlinux::interface���Qubh(j%  h�j%  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM�u��bu��b�purged�j  )��N}�(j�  h
)��}�(h�purged�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM$�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM�hh �srlinux::interface���Qubh(j$%  h�j$%  h�]�hh �srlinux::interface���Qh.]�hNh0j%%  u��bh�h
)��}�(h�self.purged�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM�hh �srlinux::interface���Qubh(j1%  h�j1%  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhM�u��bu��buj(  ]�hh2)��N}�(hhhM�u��bhjNj-  ]�j/  }�j1  }�h�]�hh �srlinux::interface���Qh.]�(h�)��}�(h�j�#  hh �srlinux::interface���Qhjj�#  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj�#  j�  j�#  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj�#  j�  j�#  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj�#  j�  j$  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj�#  j�  jO$  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj�#  j�  j\$  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj�#  j�  jh$  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj�#  j�  js$  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj�#  j�  j�$  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj�#  j�  j%  ubehNh0Nu��bjQ  �jR  jT  )��}�(j�  j�#  j�  j�#  jW  j�#  ubjX  j�#  jY  j�#  h�]�hh �srlinux::interface���Qh.]�(jJ%  jN%  jU%  j\%  jc%  jj%  jq%  jx%  j%  j�%  ehM�h0h2)��N}�(hhhM�u��bu��bej�  ]�j�  ]�hh �srlinux::interface���Qj�  Nubhh �srlinux::interface���Qj�  �Qos�htNu}�h0h)��N}�(hKhM�hK%hhhM�u��bs��bhtNj�  jt#  j+  h
)��}�(hj�%  hh)��N}�(hK*hM�hK-hhhM�u��bhM�hM�hK-hK*hMɕhh �srlinux::interface���Qubu}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�j�%  hh �srlinux::interface���Qhjj�%  ubjJ%  jN%  jU%  j\%  jc%  jj%  jq%  jx%  j%  j�%  ehNh0j�%  u��bj�  )��}�(h(�setupRadioYangContainer�hh�+srlinux::interface::setupRadioYangContainer�hjj�  )��}�(h(j�%  hj�  )��}�(j�  ]�(j�  )��N}�(j�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hK	hhhM�u��bhM�hM�hK	hKhM:�hh �srlinux::interface���Qubh(j�%  h�j�%  h�]�hh �srlinux::interface���Qh.]�hNh0j�%  u��bj
  �device�hj  )��N}�(j�  h
)��}�(h�device�hh)��N}�(hK)hM�hK/hhhM�u��bhM�hM�hK/hK)hM`�hh �srlinux::interface���Qubj�  j  )��N}�(j�  h
)��}�(h�parent_interface�hh)��N}�(hKhM�hK(hhhM�u��bhM�hM�hK(hKhMY�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhMH�hh �srlinux::interface���Qubh(j�%  h�j�%  h�]�hh �srlinux::interface���Qh.]�hNh0j�%  u��bh�h
)��}�(h�self.parent_interface�hh)��N}�(hKhM�hK(hhhM�u��bhM�hM�hK(hKhMH�hh �srlinux::interface���Qubh(j�%  h�j�%  h�]�hh �srlinux::interface���Qh.]�hMH�h0h2)��N}�(hhhM�u��bu��bh�h
)��}�(h�self.parent_interface.device�hh)��N}�(hKhM�hK/hhhM�u��bhM�hM�hK/hKhMH�hh �srlinux::interface���Qubh(j&  h�j&  h�]�hh �srlinux::interface���Qh.]�hMY�h0h2)��N}�(hhhM�u��bu��bjQ  �jR  jT  )��}�(j�  j�%  j�  j�%  jW  j�%  ubjX  j�%  jY  j�%  h�]�hh �srlinux::interface���Qh.]�hMB�h0h2)��N}�(hhhM�u��bu��bj�  )��N}�(j�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hK	hhhM�u��bhM�hM�hK	hKhM��hh �srlinux::interface���Qubh(j"&  h�j"&  h�]�hh �srlinux::interface���Qh.]�hNh0j#&  u��bj
  �yang_container�hjv  )��N}�(jy  h
)��}�(h�yang::Container�hh)��N}�(hKhM�hK*hhhM�u��bhM�hM�hK*hKhM��hh �srlinux::interface���Qubj�  }�(�module�h�)��N}�(h�srl_nokia-if-radio�h�]�hh �srlinux::interface���Qh.]�hM͗h0h2)��N}�(hhhM�u��bu��b�name�h�)��N}�(h�radio�h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhM�u��bu��b�parent�j  )��N}�(j�  h
)��}�(h�yang_container�hh)��N}�(hK&hM�hK4hhhM�u��bhM�hM�hK4hK&hM,�hh �srlinux::interface���Qubj�  j  )��N}�(j�  h
)��}�(h�parent_interface�hh)��N}�(hKhM�hK%hhhM�u��bhM�hM�hK%hKhM�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM�hh �srlinux::interface���Qubh(jj&  h�jj&  h�]�hh �srlinux::interface���Qh.]�hNh0jk&  u��bh�h
)��}�(h�self.parent_interface�hh)��N}�(hKhM�hK%hhhM�u��bhM�hM�hK%hKhM�hh �srlinux::interface���Qubh(jw&  h�jw&  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhM�u��bu��bh�h
)��}�(h�$self.parent_interface.yang_container�hh)��N}�(hKhM�hK4hhhM�u��bhM�hM�hK4hKhM�hh �srlinux::interface���Qubh(j�&  h�j�&  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhM�u��bu��b�subs�j�  )��N}�(h�]��admin-state�j  )��N}�(j�  h
)��}�(h�admin_state�hh)��N}�(hK!hM�hK,hhhM�u��bhM�hM�hK,hK!hMh�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hK hhhM�u��bhM�hM�hK hKhM\�hh �srlinux::interface���Qubh(j�&  h�j�&  h�]�hh �srlinux::interface���Qh.]�hNh0j�&  u��bh�h
)��}�(h�self.admin_state�hh)��N}�(hKhM�hK,hhhM�u��bhM�hM�hK,hKhM\�hh �srlinux::interface���Qubh(j�&  h�j�&  h�]�hh �srlinux::interface���Qh.]�hM\�h0h2)��N}�(hhhM�u��bu��b��ah�]�j�&  ah�]�hh �srlinux::interface���Qh.]�hM;�h0h2)��N}�(hhhM�u��bu��b�key_attribute�h�)��N}�(h�]�h�j�&  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM�u��bu��b�	is_actual�h�)��N}�(h�h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM�u��bu��b�requires�h�)��N}�(h�]�(j  )��N}�(j�  h
)��}�(h�yang_container�hh)��N}�(hK)hM�hK7hhhM�u��bhM�hM�hK7hK)hMݘhh �srlinux::interface���Qubj�  j  )��N}�(j�  h
)��}�(h�parent_interface�hh)��N}�(hKhM�hK(hhhM�u��bhM�hM�hK(hKhMΘhh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM��hh �srlinux::interface���Qubh(j '  h�j '  h�]�hh �srlinux::interface���Qh.]�hNh0j'  u��bh�h
)��}�(h�self.parent_interface�hh)��N}�(hKhM�hK(hhhM�u��bhM�hM�hK(hKhM��hh �srlinux::interface���Qubh(j'  h�j'  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM�u��bu��bh�h
)��}�(h�$self.parent_interface.yang_container�hh)��N}�(hKhM�hK7hhhM�u��bhM�hM�hK7hKhM��hh �srlinux::interface���Qubh(j'  h�j'  h�]�hh �srlinux::interface���Qh.]�hMΘh0h2)��N}�(hhhM�u��bu��bj  )��N}�(j�  h
)��}�(h�requires�hh)��N}�(hK>hM�hKFhhhM�u��bhM�hM�hKFhK>hM�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hK9hM�hK=hhhM�u��bhM�hM�hK=hK9hM�hh �srlinux::interface���Qubh(j9'  h�j9'  h�]�hh �srlinux::interface���Qh.]�hNh0j:'  u��bh�h
)��}�(h�self.requires�hh)��N}�(hK9hM�hKFhhhM�u��bhM�hM�hKFhK9hM�hh �srlinux::interface���Qubh(jF'  h�jF'  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhM�u��bu��beh�j�&  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM�u��bu��b�provides�j  )��N}�(j�  h
)��}�(h�provides�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM�hh �srlinux::interface���Qubh(jk'  h�jk'  h�]�hh �srlinux::interface���Qh.]�hNh0jl'  u��bh�h
)��}�(h�self.provides�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM�hh �srlinux::interface���Qubh(jx'  h�jx'  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhM�u��bu��b�purged�j  )��N}�(j�  h
)��}�(h�purged�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM)�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM"�hh �srlinux::interface���Qubh(j�'  h�j�'  h�]�hh �srlinux::interface���Qh.]�hNh0j�'  u��bh�h
)��}�(h�self.purged�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM"�hh �srlinux::interface���Qubh(j�'  h�j�'  h�]�hh �srlinux::interface���Qh.]�hM"�h0h2)��N}�(hhhM�u��bu��buj(  ]�hh2)��N}�(hhhM�u��bhjNj-  ]�j/  }�j1  }�h�]�hh �srlinux::interface���Qh.]�(h�)��}�(h�j3&  hh �srlinux::interface���Qhjj0&  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj0&  j�  j9&  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj0&  j�  jE&  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj0&  j�  jQ&  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj0&  j�  j�&  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj0&  j�  j�&  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj0&  j�  j�&  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj0&  j�  j�&  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj0&  j�  j\'  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj0&  j�  j�'  ubehNh0Nu��bjQ  �jR  jT  )��}�(j�  j&  j�  j-&  jW  j&  ubjX  j&  jY  j.&  h�]�hh �srlinux::interface���Qh.]�(j�'  j�'  j�'  j�'  j�'  j�'  j�'  j�'  j�'  j�'  ehM��h0h2)��N}�(hhhM�u��bu��bej�  ]�j�  ]�hh �srlinux::interface���Qj�  Nubhh �srlinux::interface���Qj�  �Radio�htNu}�h0h)��N}�(hKhM�hK'hhhM�u��bs��bhtNj�  j�%  j+  h
)��}�(hj(  hh)��N}�(hK,hM�hK1hhhM�u��bhM�hM�hK1hK,hM��hh �srlinux::interface���Qubu}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�j(  hh �srlinux::interface���Qhjj(  ubj�'  j�'  j�'  j�'  j�'  j�'  j�'  j�'  j�'  j�'  ehNh0j(  u��bj�  )��}�(h(�setupSflowYangContainer�hh�+srlinux::interface::setupSflowYangContainer�hjj�  )��}�(h(j'(  hj�  )��}�(j�  ]�(j�  )��N}�(j�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hK	hhhM�u��bhM�hM�hK	hKhMA�hh �srlinux::interface���Qubh(j4(  h�j4(  h�]�hh �srlinux::interface���Qh.]�hNh0j5(  u��bj
  �device�hj  )��N}�(j�  h
)��}�(h�device�hh)��N}�(hK)hM�hK/hhhM�u��bhM�hM�hK/hK)hMg�hh �srlinux::interface���Qubj�  j  )��N}�(j�  h
)��}�(h�parent_interface�hh)��N}�(hKhM�hK(hhhM�u��bhM�hM�hK(hKhM`�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhMO�hh �srlinux::interface���Qubh(jX(  h�jX(  h�]�hh �srlinux::interface���Qh.]�hNh0jY(  u��bh�h
)��}�(h�self.parent_interface�hh)��N}�(hKhM�hK(hhhM�u��bhM�hM�hK(hKhMO�hh �srlinux::interface���Qubh(je(  h�je(  h�]�hh �srlinux::interface���Qh.]�hMO�h0h2)��N}�(hhhM�u��bu��bh�h
)��}�(h�self.parent_interface.device�hh)��N}�(hKhM�hK/hhhM�u��bhM�hM�hK/hKhMO�hh �srlinux::interface���Qubh(ju(  h�ju(  h�]�hh �srlinux::interface���Qh.]�hM`�h0h2)��N}�(hhhM�u��bu��bjQ  �jR  jT  )��}�(j�  j0(  j�  j?(  jW  j.(  ubjX  j0(  jY  j@(  h�]�hh �srlinux::interface���Qh.]�hMI�h0h2)��N}�(hhhM�u��bu��bj�  )��N}�(j�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hK	hhhM�u��bhM�hM�hK	hKhM��hh �srlinux::interface���Qubh(j�(  h�j�(  h�]�hh �srlinux::interface���Qh.]�hNh0j�(  u��bj
  �yang_container�hjv  )��N}�(jy  h
)��}�(h�yang::Container�hh)��N}�(hKhM�hK*hhhM�u��bhM�hM�hK*hKhM��hh �srlinux::interface���Qubj�  }�(�module�h�)��N}�(h�srl_nokia-interfaces�h�]�hh �srlinux::interface���Qh.]�hMҙh0h2)��N}�(hhhM�u��bu��b�name�h�)��N}�(h�sflow�h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM�u��bu��b�parent�j  )��N}�(j�  h
)��}�(h�yang_container�hh)��N}�(hK&hM�hK4hhhM�u��bhM�hM�hK4hK&hM3�hh �srlinux::interface���Qubj�  j  )��N}�(j�  h
)��}�(h�parent_interface�hh)��N}�(hKhM�hK%hhhM�u��bhM�hM�hK%hKhM$�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM�hh �srlinux::interface���Qubh(j�(  h�j�(  h�]�hh �srlinux::interface���Qh.]�hNh0j�(  u��bh�h
)��}�(h�self.parent_interface�hh)��N}�(hKhM�hK%hhhM�u��bhM�hM�hK%hKhM�hh �srlinux::interface���Qubh(j�(  h�j�(  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhM�u��bu��bh�h
)��}�(h�$self.parent_interface.yang_container�hh)��N}�(hKhM�hK4hhhM�u��bhM�hM�hK4hKhM�hh �srlinux::interface���Qubh(j�(  h�j�(  h�]�hh �srlinux::interface���Qh.]�hM$�h0h2)��N}�(hhhM�u��bu��b�subs�j�  )��N}�(h�]��admin-state�j  )��N}�(j�  h
)��}�(h�admin_state�hh)��N}�(hK!hM�hK,hhhM�u��bhM�hM�hK,hK!hMo�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hK hhhM�u��bhM�hM�hK hKhMc�hh �srlinux::interface���Qubh(j)  h�j)  h�]�hh �srlinux::interface���Qh.]�hNh0j)  u��bh�h
)��}�(h�self.admin_state�hh)��N}�(hKhM�hK,hhhM�u��bhM�hM�hK,hKhMc�hh �srlinux::interface���Qubh(j&)  h�j&)  h�]�hh �srlinux::interface���Qh.]�hMc�h0h2)��N}�(hhhM�u��bu��b��ah�]�j)  ah�]�hh �srlinux::interface���Qh.]�hMB�h0h2)��N}�(hhhM�u��bu��b�key_attribute�h�)��N}�(h�]�h�jA)  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM�u��bu��b�	is_actual�h�)��N}�(h�h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM�u��bu��b�requires�h�)��N}�(h�]�(j  )��N}�(j�  h
)��}�(h�yang_container�hh)��N}�(hK)hM�hK7hhhM�u��bhM�hM�hK7hK)hM�hh �srlinux::interface���Qubj�  j  )��N}�(j�  h
)��}�(h�parent_interface�hh)��N}�(hKhM�hK(hhhM�u��bhM�hM�hK(hKhM՚hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhMĚhh �srlinux::interface���Qubh(jq)  h�jq)  h�]�hh �srlinux::interface���Qh.]�hNh0jr)  u��bh�h
)��}�(h�self.parent_interface�hh)��N}�(hKhM�hK(hhhM�u��bhM�hM�hK(hKhMĚhh �srlinux::interface���Qubh(j~)  h�j~)  h�]�hh �srlinux::interface���Qh.]�hMĚh0h2)��N}�(hhhM�u��bu��bh�h
)��}�(h�$self.parent_interface.yang_container�hh)��N}�(hKhM�hK7hhhM�u��bhM�hM�hK7hKhMĚhh �srlinux::interface���Qubh(j�)  h�j�)  h�]�hh �srlinux::interface���Qh.]�hM՚h0h2)��N}�(hhhM�u��bu��bj  )��N}�(j�  h
)��}�(h�requires�hh)��N}�(hK>hM�hKFhhhM�u��bhM�hM�hKFhK>hM�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hK9hM�hK=hhhM�u��bhM�hM�hK=hK9hM�hh �srlinux::interface���Qubh(j�)  h�j�)  h�]�hh �srlinux::interface���Qh.]�hNh0j�)  u��bh�h
)��}�(h�self.requires�hh)��N}�(hK9hM�hKFhhhM�u��bhM�hM�hKFhK9hM�hh �srlinux::interface���Qubh(j�)  h�j�)  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhM�u��bu��beh�jX)  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM�u��bu��b�provides�j  )��N}�(j�  h
)��}�(h�provides�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM�hh �srlinux::interface���Qubh(j�)  h�j�)  h�]�hh �srlinux::interface���Qh.]�hNh0j�)  u��bh�h
)��}�(h�self.provides�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM�hh �srlinux::interface���Qubh(j�)  h�j�)  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhM�u��bu��b�purged�j  )��N}�(j�  h
)��}�(h�purged�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM0�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM)�hh �srlinux::interface���Qubh(j*  h�j*  h�]�hh �srlinux::interface���Qh.]�hNh0j*  u��bh�h
)��}�(h�self.purged�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM)�hh �srlinux::interface���Qubh(j*  h�j*  h�]�hh �srlinux::interface���Qh.]�hM)�h0h2)��N}�(hhhM�u��bu��buj(  ]�hh2)��N}�(hhhM�u��bhjNj-  ]�j/  }�j1  }�h�]�hh �srlinux::interface���Qh.]�(h�)��}�(h�j�(  hh �srlinux::interface���Qhjj�(  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj�(  j�  j�(  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj�(  j�  j�(  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj�(  j�  j�(  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj�(  j�  j)  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj�(  j�  j>)  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj�(  j�  jJ)  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj�(  j�  jU)  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj�(  j�  j�)  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj�(  j�  j�)  ubehNh0Nu��bjQ  �jR  jT  )��}�(j�  j�(  j�  j�(  jW  j�(  ubjX  j�(  jY  j�(  h�]�hh �srlinux::interface���Qh.]�(j,*  j0*  j7*  j>*  jE*  jL*  jS*  jZ*  ja*  jh*  ehM��h0h2)��N}�(hhhM�u��bu��bej�  ]�j�  ]�hh �srlinux::interface���Qj�  Nubhh �srlinux::interface���Qj�  �Sflow�htNu}�h0h)��N}�(hKhM�hK'hhhM�u��bs��bhtNj�  j+(  j+  h
)��}�(hj�*  hh)��N}�(hK,hM�hK1hhhM�u��bhM�hM�hK1hK,hM��hh �srlinux::interface���Qubu}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�j�*  hh �srlinux::interface���Qhjj�*  ubj,*  j0*  j7*  j>*  jE*  jL*  jS*  jZ*  ja*  jh*  ehNh0j�*  u��bj�  )��}�(h(�setupSubinterfaceYangContainer�hh�2srlinux::interface::setupSubinterfaceYangContainer�hjj�  )��}�(h(j�*  hj�  )��}�(j�  ]�(j�  )��N}�(j�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hK	hhhM�u��bhM�hM�hK	hKhMc�hh �srlinux::interface���Qubh(j�*  h�j�*  h�]�hh �srlinux::interface���Qh.]�hNh0j�*  u��bj
  �device�hj  )��N}�(j�  h
)��}�(h�device�hh)��N}�(hK)hM�hK/hhhM�u��bhM�hM�hK/hK)hM��hh �srlinux::interface���Qubj�  j  )��N}�(j�  h
)��}�(h�parent_interface�hh)��N}�(hKhM�hK(hhhM�u��bhM�hM�hK(hKhM��hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhMq�hh �srlinux::interface���Qubh(j�*  h�j�*  h�]�hh �srlinux::interface���Qh.]�hNh0j�*  u��bh�h
)��}�(h�self.parent_interface�hh)��N}�(hKhM�hK(hhhM�u��bhM�hM�hK(hKhMq�hh �srlinux::interface���Qubh(j�*  h�j�*  h�]�hh �srlinux::interface���Qh.]�hMq�h0h2)��N}�(hhhM�u��bu��bh�h
)��}�(h�self.parent_interface.device�hh)��N}�(hKhM�hK/hhhM�u��bhM�hM�hK/hKhMq�hh �srlinux::interface���Qubh(j�*  h�j�*  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM�u��bu��bjQ  �jR  jT  )��}�(j�  j�*  j�  j�*  jW  j�*  ubjX  j�*  jY  j�*  h�]�hh �srlinux::interface���Qh.]�hMk�h0h2)��N}�(hhhM�u��bu��bj�  )��N}�(j�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hK	hhhM�u��bhM�hM�hK	hKhM��hh �srlinux::interface���Qubh(j+  h�j+  h�]�hh �srlinux::interface���Qh.]�hNh0j+  u��bj
  �yang_container�hjv  )��N}�(jy  h
)��}�(h�yang::ListContainer�hh)��N}�(hKhM�hK.hhhM�u��bhM�hM�hK.hKhM͛hh �srlinux::interface���Qubj�  }�(�module�h�)��N}�(h�srl_nokia-interfaces�h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhM�u��bu��b�name�h�)��N}�(h�subinterface�h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhM�u��bu��b�parent�j  )��N}�(j�  h
)��}�(h�yang_container�hh)��N}�(hK&hM�hK4hhhM�u��bhM�hM�hK4hK&hMS�hh �srlinux::interface���Qubj�  j  )��N}�(j�  h
)��}�(h�parent_interface�hh)��N}�(hKhM�hK%hhhM�u��bhM�hM�hK%hKhMD�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM3�hh �srlinux::interface���Qubh(jL+  h�jL+  h�]�hh �srlinux::interface���Qh.]�hNh0jM+  u��bh�h
)��}�(h�self.parent_interface�hh)��N}�(hKhM�hK%hhhM�u��bhM�hM�hK%hKhM3�hh �srlinux::interface���Qubh(jY+  h�jY+  h�]�hh �srlinux::interface���Qh.]�hM3�h0h2)��N}�(hhhM�u��bu��bh�h
)��}�(h�$self.parent_interface.yang_container�hh)��N}�(hKhM�hK4hhhM�u��bhM�hM�hK4hKhM3�hh �srlinux::interface���Qubh(ji+  h�ji+  h�]�hh �srlinux::interface���Qh.]�hMD�h0h2)��N}�(hhhM�u��bu��b�subs�j�  )��N}�(h�]�(�admin-state�j  )��N}�(j�  h
)��}�(h�admin_state�hh)��N}�(hK!hM�hK,hhhM�u��bhM�hM�hK,hK!hM��hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hK hhhM�u��bhM�hM�hK hKhM��hh �srlinux::interface���Qubh(j�+  h�j�+  h�]�hh �srlinux::interface���Qh.]�hNh0j�+  u��bh�h
)��}�(h�self.admin_state�hh)��N}�(hKhM�hK,hhhM�u��bhM�hM�hK,hKhM��hh �srlinux::interface���Qubh(j�+  h�j�+  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM�u��bu��b���description�j  )��N}�(j�  h
)��}�(h�description�hh)��N}�(hK!hM�hK,hhhM�u��bhM�hM�hK,hK!hM��hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hK hhhM�u��bhM�hM�hK hKhM��hh �srlinux::interface���Qubh(j�+  h�j�+  h�]�hh �srlinux::interface���Qh.]�hNh0j�+  u��bh�h
)��}�(h�self.description�hh)��N}�(hKhM�hK,hhhM�u��bhM�hM�hK,hKhM��hh �srlinux::interface���Qubh(j�+  h�j�+  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM�u��bu��b���index�j  )��N}�(j�  h
)��}�(h�x_index�hh)��N}�(hKhM�hK"hhhM�u��bhM�hM�hK"hKhMߜhh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhMלhh �srlinux::interface���Qubh(j�+  h�j�+  h�]�hh �srlinux::interface���Qh.]�hNh0j�+  u��bh�h
)��}�(h�self.x_index�hh)��N}�(hKhM�hK"hhhM�u��bhM�hM�hK"hKhMלhh �srlinux::interface���Qubh(j�+  h�j�+  h�]�hh �srlinux::interface���Qh.]�hMלh0h2)��N}�(hhhM�u��bu��b���ip-mtu�j  )��N}�(j�  h
)��}�(h�ip_mtu�hh)��N}�(hKhM�hK"hhhM�u��bhM�hM�hK"hKhM�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM��hh �srlinux::interface���Qubh(j,  h�j,  h�]�hh �srlinux::interface���Qh.]�hNh0j,  u��bh�h
)��}�(h�self.ip_mtu�hh)��N}�(hKhM�hK"hhhM�u��bhM�hM�hK"hKhM��hh �srlinux::interface���Qubh(j,  h�j,  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM�u��bu��b���l2-mtu�j  )��N}�(j�  h
)��}�(h�l2_mtu�hh)��N}�(hKhM�hK"hhhM�u��bhM�hM�hK"hKhM%�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM�hh �srlinux::interface���Qubh(j6,  h�j6,  h�]�hh �srlinux::interface���Qh.]�hNh0j7,  u��bh�h
)��}�(h�self.l2_mtu�hh)��N}�(hKhM�hK"hhhM�u��bhM�hM�hK"hKhM�hh �srlinux::interface���Qubh(jC,  h�jC,  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhM�u��bu��b���mpls-mtu�j  )��N}�(j�  h
)��}�(h�mpls_mtu�hh)��N}�(hKhM�hK&hhhM�u��bhM�hM�hK&hKhML�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhMC�hh �srlinux::interface���Qubh(ja,  h�ja,  h�]�hh �srlinux::interface���Qh.]�hNh0jb,  u��bh�h
)��}�(h�self.mpls_mtu�hh)��N}�(hKhM�hK&hhhM�u��bhM�hM�hK&hKhMC�hh �srlinux::interface���Qubh(jn,  h�jn,  h�]�hh �srlinux::interface���Qh.]�hMC�h0h2)��N}�(hhhM�u��bu��b���type�j  )��N}�(j�  h
)��}�(h�type�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhMk�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhMf�hh �srlinux::interface���Qubh(j�,  h�j�,  h�]�hh �srlinux::interface���Qh.]�hNh0j�,  u��bh�h
)��}�(h�	self.type�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhMf�hh �srlinux::interface���Qubh(j�,  h�j�,  h�]�hh �srlinux::interface���Qh.]�hMf�h0h2)��N}�(hhhM�u��bu��b���uuid�j  )��N}�(j�  h
)��}�(h�uuid�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM��hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM��hh �srlinux::interface���Qubh(j�,  h�j�,  h�]�hh �srlinux::interface���Qh.]�hNh0j�,  u��bh�h
)��}�(h�	self.uuid�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM��hh �srlinux::interface���Qubh(j�,  h�j�,  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM�u��bu��b��eh�]�(j|+  j�+  j�+  j�+  j(,  jS,  j~,  j�,  eh�]�hh �srlinux::interface���Qh.]�hMb�h0h2)��N}�(hhhM�u��bu��b�key_attribute�h�)��N}�(h�]�h�)��N}�(h�index�h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM�u��bu��bah�j�,  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM�u��bu��b�	is_actual�h�)��N}�(h�h�]�hh �srlinux::interface���Qh.]�hMʝh0h2)��N}�(hhhM�u��bu��b�requires�h�)��N}�(h�]�(j  )��N}�(j�  h
)��}�(h�yang_container�hh)��N}�(hK)hM�hK7hhhM�u��bhM�hM�hK7hK)hM�hh �srlinux::interface���Qubj�  j  )��N}�(j�  h
)��}�(h�parent_interface�hh)��N}�(hKhM�hK(hhhM�u��bhM�hM�hK(hKhM��hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM�hh �srlinux::interface���Qubh(j-  h�j-  h�]�hh �srlinux::interface���Qh.]�hNh0j-  u��bh�h
)��}�(h�self.parent_interface�hh)��N}�(hKhM�hK(hhhM�u��bhM�hM�hK(hKhM�hh �srlinux::interface���Qubh(j'-  h�j'-  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhM�u��bu��bh�h
)��}�(h�$self.parent_interface.yang_container�hh)��N}�(hKhM�hK7hhhM�u��bhM�hM�hK7hKhM�hh �srlinux::interface���Qubh(j7-  h�j7-  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM�u��bu��bj  )��N}�(j�  h
)��}�(h�requires�hh)��N}�(hK>hM�hKFhhhM�u��bhM�hM�hKFhK>hM�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hK9hM�hK=hhhM�u��bhM�hM�hK=hK9hM�hh �srlinux::interface���Qubh(jS-  h�jS-  h�]�hh �srlinux::interface���Qh.]�hNh0jT-  u��bh�h
)��}�(h�self.requires�hh)��N}�(hK9hM�hKFhhhM�u��bhM�hM�hKFhK9hM�hh �srlinux::interface���Qubh(j`-  h�j`-  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhM�u��bu��beh�j-  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhM�u��bu��b�provides�j  )��N}�(j�  h
)��}�(h�provides�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM6�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM-�hh �srlinux::interface���Qubh(j�-  h�j�-  h�]�hh �srlinux::interface���Qh.]�hNh0j�-  u��bh�h
)��}�(h�self.provides�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM-�hh �srlinux::interface���Qubh(j�-  h�j�-  h�]�hh �srlinux::interface���Qh.]�hM-�h0h2)��N}�(hhhM�u��bu��b�purged�j  )��N}�(j�  h
)��}�(h�purged�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhMR�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhMK�hh �srlinux::interface���Qubh(j�-  h�j�-  h�]�hh �srlinux::interface���Qh.]�hNh0j�-  u��bh�h
)��}�(h�self.purged�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhMK�hh �srlinux::interface���Qubh(j�-  h�j�-  h�]�hh �srlinux::interface���Qh.]�hMK�h0h2)��N}�(hhhM�u��bu��buj(  ]�hh2)��N}�(hhhM�u��bhjNj-  ]�j/  }�j1  }�h�]�hh �srlinux::interface���Qh.]�(h�)��}�(h�j+  hh �srlinux::interface���Qhjj+  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj+  j�  j+  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj+  j�  j'+  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj+  j�  j3+  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj+  j�  jw+  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj+  j�  j�,  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj+  j�  j�,  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj+  j�  j�,  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj+  j�  jv-  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj+  j�  j�-  ubehNh0Nu��bjQ  �jR  jT  )��}�(j�  j +  j�  j+  jW  j�*  ubjX  j +  jY  j+  h�]�hh �srlinux::interface���Qh.]�(j�-  j�-  j�-  j�-  j�-  j�-  j�-  j.  j
.  j.  ehMśh0h2)��N}�(hhhM�u��bu��bej�  ]�j�  ]�hh �srlinux::interface���Qj�  Nubhh �srlinux::interface���Qj�  �Subinterface�htNu}�h0h)��N}�(hKhM�hK.hhhM�u��bs��bhtNj�  j�*  j+  h
)��}�(hj).  hh)��N}�(hK3hM�hK?hhhM�u��bhM�hM�hK?hK3hM��hh �srlinux::interface���Qubu}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�j1.  hh �srlinux::interface���Qhjj/.  ubj�-  j�-  j�-  j�-  j�-  j�-  j�-  j.  j
.  j.  ehNh0j+.  u��bj�  )��}�(h(�setupTransceiverYangContainer�hh�1srlinux::interface::setupTransceiverYangContainer�hjj�  )��}�(h(jA.  hj�  )��}�(j�  ]�(j�  )��N}�(j�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hK	hhhM�u��bhM�hM�hK	hKhM�hh �srlinux::interface���Qubh(jN.  h�jN.  h�]�hh �srlinux::interface���Qh.]�hNh0jO.  u��bj
  �device�hj  )��N}�(j�  h
)��}�(h�device�hh)��N}�(hK)hM�hK/hhhM�u��bhM�hM�hK/hK)hM�hh �srlinux::interface���Qubj�  j  )��N}�(j�  h
)��}�(h�parent_interface�hh)��N}�(hKhM�hK(hhhM�u��bhM�hM�hK(hKhM�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM��hh �srlinux::interface���Qubh(jr.  h�jr.  h�]�hh �srlinux::interface���Qh.]�hNh0js.  u��bh�h
)��}�(h�self.parent_interface�hh)��N}�(hKhM�hK(hhhM�u��bhM�hM�hK(hKhM��hh �srlinux::interface���Qubh(j.  h�j.  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM�u��bu��bh�h
)��}�(h�self.parent_interface.device�hh)��N}�(hKhM�hK/hhhM�u��bhM�hM�hK/hKhM��hh �srlinux::interface���Qubh(j�.  h�j�.  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhM�u��bu��bjQ  �jR  jT  )��}�(j�  jJ.  j�  jY.  jW  jH.  ubjX  jJ.  jY  jZ.  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhM�u��bu��bj�  )��N}�(j�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hK	hhhM�u��bhM�hM�hK	hKhM՞hh �srlinux::interface���Qubh(j�.  h�j�.  h�]�hh �srlinux::interface���Qh.]�hNh0j�.  u��bj
  �yang_container�hjv  )��N}�(jy  h
)��}�(h�yang::Container�hh)��N}�(hKhM�hK*hhhM�u��bhM�hM�hK*hKhM�hh �srlinux::interface���Qubj�  }�(�module�h�)��N}�(h�srl_nokia-interfaces�h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhM�u��bu��b�name�h�)��N}�(h�transceiver�h�]�hh �srlinux::interface���Qh.]�hM,�h0h2)��N}�(hhhM�u��bu��b�parent�j  )��N}�(j�  h
)��}�(h�yang_container�hh)��N}�(hK&hM�hK4hhhM�u��bhM�hM�hK4hK&hMn�hh �srlinux::interface���Qubj�  j  )��N}�(j�  h
)��}�(h�parent_interface�hh)��N}�(hKhM�hK%hhhM�u��bhM�hM�hK%hKhM_�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhMN�hh �srlinux::interface���Qubh(j�.  h�j�.  h�]�hh �srlinux::interface���Qh.]�hNh0j�.  u��bh�h
)��}�(h�self.parent_interface�hh)��N}�(hKhM�hK%hhhM�u��bhM�hM�hK%hKhMN�hh �srlinux::interface���Qubh(j/  h�j/  h�]�hh �srlinux::interface���Qh.]�hMN�h0h2)��N}�(hhhM�u��bu��bh�h
)��}�(h�$self.parent_interface.yang_container�hh)��N}�(hKhM�hK4hhhM�u��bhM�hM�hK4hKhMN�hh �srlinux::interface���Qubh(j/  h�j/  h�]�hh �srlinux::interface���Qh.]�hM_�h0h2)��N}�(hhhM�u��bu��b�subs�j�  )��N}�(h�]�(�
ddm-events�j  )��N}�(j�  h
)��}�(h�
ddm_events�hh)��N}�(hK hM�hK*hhhM�u��bhM�hM�hK*hK hM��hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM��hh �srlinux::interface���Qubh(j3/  h�j3/  h�]�hh �srlinux::interface���Qh.]�hNh0j4/  u��bh�h
)��}�(h�self.ddm_events�hh)��N}�(hKhM�hK*hhhM�u��bhM�hM�hK*hKhM��hh �srlinux::interface���Qubh(j@/  h�j@/  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM�u��bu��b���forward-error-correction�j  )��N}�(j�  h
)��}�(h�forward_error_correction�hh)��N}�(hK.hM�hKFhhhM�u��bhM�hM�hKFhK.hM�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hK)hM�hK-hhhM�u��bhM�hM�hK-hK)hM֟hh �srlinux::interface���Qubh(j^/  h�j^/  h�]�hh �srlinux::interface���Qh.]�hNh0j_/  u��bh�h
)��}�(h�self.forward_error_correction�hh)��N}�(hK)hM�hKFhhhM�u��bhM�hM�hKFhK)hM֟hh �srlinux::interface���Qubh(jk/  h�jk/  h�]�hh �srlinux::interface���Qh.]�hM֟h0h2)��N}�(hhhM�u��bu��b���tx-laser�j  )��N}�(j�  h
)��}�(h�tx_laser�hh)��N}�(hKhM�hK&hhhM�u��bhM�hM�hK&hKhM�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM�hh �srlinux::interface���Qubh(j�/  h�j�/  h�]�hh �srlinux::interface���Qh.]�hNh0j�/  u��bh�h
)��}�(h�self.tx_laser�hh)��N}�(hKhM�hK&hhhM�u��bhM�hM�hK&hKhM�hh �srlinux::interface���Qubh(j�/  h�j�/  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhM�u��bu��b��eh�]�(j%/  jP/  j{/  eh�]�hh �srlinux::interface���Qh.]�hM}�h0h2)��N}�(hhhM�u��bu��b�key_attribute�h�)��N}�(h�]�h�j�/  h�]�hh �srlinux::interface���Qh.]�hM9�h0h2)��N}�(hhhM�u��bu��b�	is_actual�h�)��N}�(h�h�]�hh �srlinux::interface���Qh.]�hMO�h0h2)��N}�(hhhM�u��bu��b�requires�h�)��N}�(h�]�(j  )��N}�(j�  h
)��}�(h�yang_container�hh)��N}�(hK)hM�hK7hhhM�u��bhM�hM�hK7hK)hM��hh �srlinux::interface���Qubj�  j  )��N}�(j�  h
)��}�(h�parent_interface�hh)��N}�(hKhM�hK(hhhM�u��bhM�hM�hK(hKhM|�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhMk�hh �srlinux::interface���Qubh(j�/  h�j�/  h�]�hh �srlinux::interface���Qh.]�hNh0j�/  u��bh�h
)��}�(h�self.parent_interface�hh)��N}�(hKhM�hK(hhhM�u��bhM�hM�hK(hKhMk�hh �srlinux::interface���Qubh(j�/  h�j�/  h�]�hh �srlinux::interface���Qh.]�hMk�h0h2)��N}�(hhhM�u��bu��bh�h
)��}�(h�$self.parent_interface.yang_container�hh)��N}�(hKhM�hK7hhhM�u��bhM�hM�hK7hKhMk�hh �srlinux::interface���Qubh(j�/  h�j�/  h�]�hh �srlinux::interface���Qh.]�hM|�h0h2)��N}�(hhhM�u��bu��bj  )��N}�(j�  h
)��}�(h�requires�hh)��N}�(hK>hM�hKFhhhM�u��bhM�hM�hKFhK>hM��hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hK9hM�hK=hhhM�u��bhM�hM�hK=hK9hM��hh �srlinux::interface���Qubh(j0  h�j0  h�]�hh �srlinux::interface���Qh.]�hNh0j0  u��bh�h
)��}�(h�self.requires�hh)��N}�(hK9hM�hKFhhhM�u��bhM�hM�hKFhK9hM��hh �srlinux::interface���Qubh(j'0  h�j'0  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM�u��bu��beh�j�/  h�]�hh �srlinux::interface���Qh.]�hMf�h0h2)��N}�(hhhM�u��bu��b�provides�j  )��N}�(j�  h
)��}�(h�provides�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM��hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM��hh �srlinux::interface���Qubh(jL0  h�jL0  h�]�hh �srlinux::interface���Qh.]�hNh0jM0  u��bh�h
)��}�(h�self.provides�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM��hh �srlinux::interface���Qubh(jY0  h�jY0  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM�u��bu��b�purged�j  )��N}�(j�  h
)��}�(h�purged�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhMנhh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhMРhh �srlinux::interface���Qubh(jv0  h�jv0  h�]�hh �srlinux::interface���Qh.]�hNh0jw0  u��bh�h
)��}�(h�self.purged�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhMРhh �srlinux::interface���Qubh(j�0  h�j�0  h�]�hh �srlinux::interface���Qh.]�hMРh0h2)��N}�(hhhM�u��bu��buj(  ]�hh2)��N}�(hhhM�u��bhjNj-  ]�j/  }�j1  }�h�]�hh �srlinux::interface���Qh.]�(h�)��}�(h�j�.  hh �srlinux::interface���Qhjj�.  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj�.  j�  j�.  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj�.  j�  j�.  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj�.  j�  j�.  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj�.  j�  j /  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj�.  j�  j�/  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj�.  j�  j�/  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj�.  j�  j�/  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj�.  j�  j=0  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj�.  j�  jg0  ubehNh0Nu��bjQ  �jR  jT  )��}�(j�  j�.  j�  j�.  jW  j�.  ubjX  j�.  jY  j�.  h�]�hh �srlinux::interface���Qh.]�(j�0  j�0  j�0  j�0  j�0  j�0  j�0  j�0  j�0  j�0  ehM�h0h2)��N}�(hhhM�u��bu��bej�  ]�j�  ]�hh �srlinux::interface���Qj�  Nubhh �srlinux::interface���Qj�  �Transceiver�htNu}�h0h)��N}�(hKhM�hK-hhhM�u��bs��bhtNj�  jE.  j+  h
)��}�(hj�0  hh)��N}�(hK2hM�hK=hhhM�u��bhM�hM�hK=hK2hM˞hh �srlinux::interface���Qubu}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�j�0  hh �srlinux::interface���Qhjj�0  ubj�0  j�0  j�0  j�0  j�0  j�0  j�0  j�0  j�0  j�0  ehNh0j�0  u��bj�  )��}�(h(�setupVhostYangContainer�hh�+srlinux::interface::setupVhostYangContainer�hjj�  )��}�(h(j1  hj�  )��}�(j�  ]�(j�  )��N}�(j�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hK	hhhM�u��bhM�hM�hK	hKhMv�hh �srlinux::interface���Qubh(j1  h�j1  h�]�hh �srlinux::interface���Qh.]�hNh0j1  u��bj
  �device�hj  )��N}�(j�  h
)��}�(h�device�hh)��N}�(hK)hM�hK/hhhM�u��bhM�hM�hK/hK)hM��hh �srlinux::interface���Qubj�  j  )��N}�(j�  h
)��}�(h�parent_interface�hh)��N}�(hKhM�hK(hhhM�u��bhM�hM�hK(hKhM��hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM��hh �srlinux::interface���Qubh(j91  h�j91  h�]�hh �srlinux::interface���Qh.]�hNh0j:1  u��bh�h
)��}�(h�self.parent_interface�hh)��N}�(hKhM�hK(hhhM�u��bhM�hM�hK(hKhM��hh �srlinux::interface���Qubh(jF1  h�jF1  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM�u��bu��bh�h
)��}�(h�self.parent_interface.device�hh)��N}�(hKhM�hK/hhhM�u��bhM�hM�hK/hKhM��hh �srlinux::interface���Qubh(jV1  h�jV1  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM�u��bu��bjQ  �jR  jT  )��}�(j�  j1  j�  j 1  jW  j1  ubjX  j1  jY  j!1  h�]�hh �srlinux::interface���Qh.]�hM~�h0h2)��N}�(hhhM�u��bu��bj�  )��N}�(j�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hK	hhhM�u��bhM�hM�hK	hKhMN�hh �srlinux::interface���Qubh(jt1  h�jt1  h�]�hh �srlinux::interface���Qh.]�hNh0ju1  u��bj
  �yang_container�hjv  )��N}�(jy  h
)��}�(h�yang::Container�hh)��N}�(hKhM�hK*hhhM�u��bhM�hM�hK*hKhMf�hh �srlinux::interface���Qubj�  }�(�module�h�)��N}�(h�srl_nokia-interfaces-vxdp�h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM�u��bu��b�name�h�)��N}�(h�vhost�h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM�u��bu��b�parent�j  )��N}�(j�  h
)��}�(h�yang_container�hh)��N}�(hK&hM�hK4hhhM�u��bhM�hM�hK4hK&hM�hh �srlinux::interface���Qubj�  j  )��N}�(j�  h
)��}�(h�parent_interface�hh)��N}�(hKhM�hK%hhhM�u��bhM�hM�hK%hKhMסhh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhMơhh �srlinux::interface���Qubh(j�1  h�j�1  h�]�hh �srlinux::interface���Qh.]�hNh0j�1  u��bh�h
)��}�(h�self.parent_interface�hh)��N}�(hKhM�hK%hhhM�u��bhM�hM�hK%hKhMơhh �srlinux::interface���Qubh(j�1  h�j�1  h�]�hh �srlinux::interface���Qh.]�hMơh0h2)��N}�(hhhM�u��bu��bh�h
)��}�(h�$self.parent_interface.yang_container�hh)��N}�(hKhM�hK4hhhM�u��bhM�hM�hK4hKhMơhh �srlinux::interface���Qubh(j�1  h�j�1  h�]�hh �srlinux::interface���Qh.]�hMסh0h2)��N}�(hhhM�u��bu��b�subs�j�  )��N}�(h�]�(�vhost-socket-mode�j  )��N}�(j�  h
)��}�(h�vhost_socket_mode�hh)��N}�(hK'hM�hK8hhhM�u��bhM�hM�hK8hK'hM.�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hK"hM�hK&hhhM�u��bhM�hM�hK&hK"hM�hh �srlinux::interface���Qubh(j�1  h�j�1  h�]�hh �srlinux::interface���Qh.]�hNh0j�1  u��bh�h
)��}�(h�self.vhost_socket_mode�hh)��N}�(hK"hM�hK8hhhM�u��bhM�hM�hK8hK"hM�hh �srlinux::interface���Qubh(j2  h�j2  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhM�u��bu��b���vhost-socket-path�j  )��N}�(j�  h
)��}�(h�vhost_socket_path�hh)��N}�(hK'hM�hK8hhhM�u��bhM�hM�hK8hK'hMg�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hK"hM�hK&hhhM�u��bhM�hM�hK&hK"hMU�hh �srlinux::interface���Qubh(j%2  h�j%2  h�]�hh �srlinux::interface���Qh.]�hNh0j&2  u��bh�h
)��}�(h�self.vhost_socket_path�hh)��N}�(hK"hM�hK8hhhM�u��bhM�hM�hK8hK"hMU�hh �srlinux::interface���Qubh(j22  h�j22  h�]�hh �srlinux::interface���Qh.]�hMU�h0h2)��N}�(hhhM�u��bu��b���vhost-socket-queues�j  )��N}�(j�  h
)��}�(h�vhost_socket_queues�hh)��N}�(hK)hM�hK<hhhM�u��bhM�hM�hK<hK)hM��hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hK$hM�hK(hhhM�u��bhM�hM�hK(hK$hM��hh �srlinux::interface���Qubh(jP2  h�jP2  h�]�hh �srlinux::interface���Qh.]�hNh0jQ2  u��bh�h
)��}�(h�self.vhost_socket_queues�hh)��N}�(hK$hM�hK<hhhM�u��bhM�hM�hK<hK$hM��hh �srlinux::interface���Qubh(j]2  h�j]2  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM�u��bu��b��eh�]�(j�1  j2  jB2  eh�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM�u��bu��b�key_attribute�h�)��N}�(h�]�h�jx2  h�]�hh �srlinux::interface���Qh.]�hMǢh0h2)��N}�(hhhM�u��bu��b�	is_actual�h�)��N}�(h�h�]�hh �srlinux::interface���Qh.]�hMݢh0h2)��N}�(hhhM�u��bu��b�requires�h�)��N}�(h�]�(j  )��N}�(j�  h
)��}�(h�yang_container�hh)��N}�(hK)hM�hK7hhhM�u��bhM�hM�hK7hK)hM�hh �srlinux::interface���Qubj�  j  )��N}�(j�  h
)��}�(h�parent_interface�hh)��N}�(hKhM�hK(hhhM�u��bhM�hM�hK(hKhM
�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM��hh �srlinux::interface���Qubh(j�2  h�j�2  h�]�hh �srlinux::interface���Qh.]�hNh0j�2  u��bh�h
)��}�(h�self.parent_interface�hh)��N}�(hKhM�hK(hhhM�u��bhM�hM�hK(hKhM��hh �srlinux::interface���Qubh(j�2  h�j�2  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM�u��bu��bh�h
)��}�(h�$self.parent_interface.yang_container�hh)��N}�(hKhM�hK7hhhM�u��bhM�hM�hK7hKhM��hh �srlinux::interface���Qubh(j�2  h�j�2  h�]�hh �srlinux::interface���Qh.]�hM
�h0h2)��N}�(hhhM�u��bu��bj  )��N}�(j�  h
)��}�(h�requires�hh)��N}�(hK>hM�hKFhhhM�u��bhM�hM�hKFhK>hM(�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hK9hM�hK=hhhM�u��bhM�hM�hK=hK9hM�hh �srlinux::interface���Qubh(j�2  h�j�2  h�]�hh �srlinux::interface���Qh.]�hNh0j�2  u��bh�h
)��}�(h�self.requires�hh)��N}�(hK9hM�hKFhhhM�u��bhM�hM�hKFhK9hM�hh �srlinux::interface���Qubh(j�2  h�j�2  h�]�hh �srlinux::interface���Qh.]�hM�h0h2)��N}�(hhhM�u��bu��beh�j�2  h�]�hh �srlinux::interface���Qh.]�hM��h0h2)��N}�(hhhM�u��bu��b�provides�j  )��N}�(j�  h
)��}�(h�provides�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhMI�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM@�hh �srlinux::interface���Qubh(j3  h�j3  h�]�hh �srlinux::interface���Qh.]�hNh0j3  u��bh�h
)��}�(h�self.provides�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM@�hh �srlinux::interface���Qubh(j 3  h�j 3  h�]�hh �srlinux::interface���Qh.]�hM@�h0h2)��N}�(hhhM�u��bu��b�purged�j  )��N}�(j�  h
)��}�(h�purged�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhMe�hh �srlinux::interface���Qubj�  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM^�hh �srlinux::interface���Qubh(j=3  h�j=3  h�]�hh �srlinux::interface���Qh.]�hNh0j>3  u��bh�h
)��}�(h�self.purged�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM^�hh �srlinux::interface���Qubh(jJ3  h�jJ3  h�]�hh �srlinux::interface���Qh.]�hM^�h0h2)��N}�(hhhM�u��bu��buj(  ]�hh2)��N}�(hhhM�u��bhjNj-  ]�j/  }�j1  }�h�]�hh �srlinux::interface���Qh.]�(h�)��}�(h�j�1  hh �srlinux::interface���Qhjj�1  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj�1  j�  j�1  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj�1  j�  j�1  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj�1  j�  j�1  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj�1  j�  j�1  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj�1  j�  ju2  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj�1  j�  j�2  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj�1  j�  j�2  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj�1  j�  j3  ubj�  )��}�(h�h)��N}�(hK	hM�hKhhhM�u��bhh �srlinux::interface���Qhjj�1  j�  j.3  ubehNh0Nu��bjQ  �jR  jT  )��}�(j�  jp1  j�  j1  jW  jn1  ubjX  jp1  jY  j�1  h�]�hh �srlinux::interface���Qh.]�(jc3  jg3  jn3  ju3  j|3  j�3  j�3  j�3  j�3  j�3  ehM^�h0h2)��N}�(hhhM�u��bu��bej�  ]�j�  ]�hh �srlinux::interface���Qj�  Nubhh �srlinux::interface���Qj�  �Vhost�htNu}�h0h)��N}�(hKhM�hK'hhhM�u��bs��bhtNj�  j1  j+  h
)��}�(hj�3  hh)��N}�(hK,hM�hK1hhhM�u��bhM�hM�hK1hK,hMD�hh �srlinux::interface���Qubu}�(hh �srlinux::interface���Qh.]�(h�)��}�(h�j�3  hh �srlinux::interface���Qhjj�3  ubjc3  jg3  jn3  ju3  j|3  j�3  j�3  j�3  j�3  j�3  ehNh0j�3  u��beub.