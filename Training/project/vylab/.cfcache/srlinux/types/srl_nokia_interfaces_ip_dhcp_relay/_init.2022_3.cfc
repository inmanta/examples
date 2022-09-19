��B      �inmanta.parser.cache��CacheEnvelope���)��}�(�	timestamp�GA��s�s*�
statements�]�(�inmanta.ast��LocatableString���)��}�(�value��m
    :copyright: 2022 Inmanta
    :contact: code@inmanta.com
    :author: Inmanta
    :license: Inmanta EULA
��location�h�Range���)��N}�(�
start_char�K�end_lnr�K�end_char�K�file���/home/dariush/.local/lib/python3.10/site-packages/inmanta_plugins/srlinux/model/types/srl_nokia_interfaces_ip_dhcp_relay/_init.cf��lnr�Ku��bhK�elnr�K�end�K�start�K�lexpos�Ks�	namespace��	Namespace��2srlinux::types::srl_nokia_interfaces_ip_dhcp_relay���Qub�inmanta.ast.statements.define��DefineImport���)��}�(�name��srlinux��toname�h)u}�(hh �2srlinux::types::srl_nokia_interfaces_ip_dhcp_relay���Q�anchors�]�hKt�	_location�h�Location���)��N}�(hhhKu��bu��bh%)��}�(h(� srlinux::types::srl_nokia_common�h*h9u}�(hh �2srlinux::types::srl_nokia_interfaces_ip_dhcp_relay���Qh.]�hK�h0h2)��N}�(hhhKu��bu��bh#�DefineTypeConstraint���)��}�(h(�hostv4��fullName��:srlinux::types::srl_nokia_interfaces_ip_dhcp_relay::hostv4��type��inmanta.ast.type��ConstraintType���)��}�(�basetype�N�_constraint�Nh(hFhh �2srlinux::types::srl_nokia_interfaces_ip_dhcp_relay���Q�comment�N�
expression�Nu}�h0h)��N}�(hK	hK
hKhhhK
u��bs��bhSX  
The hostv4 type represents either an IPv4 address or a DNS domain name.
Source type expression:

    srl_nokia-interfaces-ip-dhcp-relay.yang:
    L33:    type union {
    L34:      type srl_nokia-comm:ipv4-address;
    L35:      type srl_nokia-comm:domain-name;
    L36:    }

�hOh
)��}�(h�string�hh)��N}�(hKhK
hKhhhK
u��bhK
hK
hKhKhK�hh �2srlinux::types::srl_nokia_interfaces_ip_dhcp_relay���Qub�!_DefineTypeConstraint__expression��!inmanta.ast.constraint.expression��Or���)��N}�(�_Operator__number_arguments�K�
_arguments�]�(�inmanta.ast.statements.call��FunctionCall���)��N}�(h(h
)��}�(h�srlinux::validate_type�hh)��N}�(hKhKhKhhhKu��bhKhKhKhKhK�hh �2srlinux::types::srl_nokia_interfaces_ip_dhcp_relay���Qub�	arguments�]�(�inmanta.ast.variables��	Reference���)��N}�(�locatable_name�h
)��}�(h�self�hh)��N}�(hKhKhK hhhKu��bhKhKhK hKhK�hh �2srlinux::types::srl_nokia_interfaces_ip_dhcp_relay���Qubh(h��	full_name�h��_own_eager_promises�]�hh �2srlinux::types::srl_nokia_interfaces_ip_dhcp_relay���Qh.]�hNh0h�u��b�inmanta.ast.statements��Literal���)��N}�(h�.srlinux::types::srl_nokia_common::ipv4_address�h�]�hh �2srlinux::types::srl_nokia_interfaces_ip_dhcp_relay���Qh.]�hK�h0h2)��N}�(hhhKu��bu��be�wrapped_kwargs�]�hh2)��N}�(hhhKu��b�kwargs�}��function�N�children�]�(h~h�eh�]�hh �2srlinux::types::srl_nokia_interfaces_ip_dhcp_relay���Qh.]�h�TypeReferenceAnchor���)��}�(�range�hthh �2srlinux::types::srl_nokia_interfaces_ip_dhcp_relay���QhIhqubahNh0Nu��bhn)��N}�(h(h
)��}�(h�srlinux::validate_type�hh)��N}�(hKhKhKhhhKu��bhKhKhKhKhM3hh �2srlinux::types::srl_nokia_interfaces_ip_dhcp_relay���Qubhy]�(h})��N}�(h�h
)��}�(h�self�hh)��N}�(hKhKhK#hhhKu��bhKhKhK#hKhMEhh �2srlinux::types::srl_nokia_interfaces_ip_dhcp_relay���Qubh(h�h�h�h�]�hh �2srlinux::types::srl_nokia_interfaces_ip_dhcp_relay���Qh.]�hNh0h�u��bh�)��N}�(h�-srlinux::types::srl_nokia_common::domain_name�h�]�hh �2srlinux::types::srl_nokia_interfaces_ip_dhcp_relay���Qh.]�hMGh0h2)��N}�(hhhKu��bu��beh�]�hh2)��N}�(hhhKu��bh�}�h�Nh�]�(h�h�eh�]�hh �2srlinux::types::srl_nokia_interfaces_ip_dhcp_relay���Qh.]�h�)��}�(h�h�hh �2srlinux::types::srl_nokia_interfaces_ip_dhcp_relay���QhIh�ubahNh0Nu��be�_Operator__name��or�h�hkh�]�hh �2srlinux::types::srl_nokia_interfaces_ip_dhcp_relay���Qh.]�(h�h�ehM'h0h2)��N}�(hhhKu��bu��bu}�(hh �2srlinux::types::srl_nokia_interfaces_ip_dhcp_relay���Qh.]�(h�)��}�(h�h^hh �2srlinux::types::srl_nokia_interfaces_ip_dhcp_relay���QhIh[ubh�h�ehK�h0h2)��N}�(hhhK
u��bu��bhC)��}�(h(�hostv6�hG�:srlinux::types::srl_nokia_interfaces_ip_dhcp_relay::hostv6�hIhL)��}�(hONhPNh(j   hh �2srlinux::types::srl_nokia_interfaces_ip_dhcp_relay���QhSNhTNu}�h0h)��N}�(hK	hKhKhhhKu��bs��bhSX  
The hostv6 type represents either an IPv6 address or a DNS domain name.
Source type expression:

    srl_nokia-interfaces-ip-dhcp-relay.yang:
    L42:    type union {
    L43:      type srl_nokia-comm:ipv6-address;
    L44:      type srl_nokia-comm:domain-name;
    L45:    }

�hOh
)��}�(h�string�hh)��N}�(hKhKhKhhhKu��bhKhKhKhKhM�hh �2srlinux::types::srl_nokia_interfaces_ip_dhcp_relay���Qubhchf)��N}�(hiKhj]�(hn)��N}�(h(h
)��}�(h�srlinux::validate_type�hh)��N}�(hKhKhKhhhKu��bhKhKhKhKhM�hh �2srlinux::types::srl_nokia_interfaces_ip_dhcp_relay���Qubhy]�(h})��N}�(h�h
)��}�(h�self�hh)��N}�(hKhKhK hhhKu��bhKhKhK hKhM�hh �2srlinux::types::srl_nokia_interfaces_ip_dhcp_relay���Qubh(j&  h�j&  h�]�hh �2srlinux::types::srl_nokia_interfaces_ip_dhcp_relay���Qh.]�hNh0j'  u��bh�)��N}�(h�.srlinux::types::srl_nokia_common::ipv6_address�h�]�hh �2srlinux::types::srl_nokia_interfaces_ip_dhcp_relay���Qh.]�hM�h0h2)��N}�(hhhKu��bu��beh�]�hh2)��N}�(hhhKu��bh�}�h�Nh�]�(j"  j1  eh�]�hh �2srlinux::types::srl_nokia_interfaces_ip_dhcp_relay���Qh.]�h�)��}�(h�j  hh �2srlinux::types::srl_nokia_interfaces_ip_dhcp_relay���QhIj  ubahNh0Nu��bhn)��N}�(h(h
)��}�(h�srlinux::validate_type�hh)��N}�(hKhKhKhhhKu��bhKhKhKhKhMhh �2srlinux::types::srl_nokia_interfaces_ip_dhcp_relay���Qubhy]�(h})��N}�(h�h
)��}�(h�self�hh)��N}�(hKhKhK#hhhKu��bhKhKhK#hKhM1hh �2srlinux::types::srl_nokia_interfaces_ip_dhcp_relay���Qubh(jZ  h�jZ  h�]�hh �2srlinux::types::srl_nokia_interfaces_ip_dhcp_relay���Qh.]�hNh0j[  u��bh�)��N}�(h�-srlinux::types::srl_nokia_common::domain_name�h�]�hh �2srlinux::types::srl_nokia_interfaces_ip_dhcp_relay���Qh.]�hM3h0h2)��N}�(hhhKu��bu��beh�]�hh2)��N}�(hhhKu��bh�}�h�Nh�]�(jV  je  eh�]�hh �2srlinux::types::srl_nokia_interfaces_ip_dhcp_relay���Qh.]�h�)��}�(h�jP  hh �2srlinux::types::srl_nokia_interfaces_ip_dhcp_relay���QhIjM  ubahNh0Nu��beh�h�h�j  h�]�hh �2srlinux::types::srl_nokia_interfaces_ip_dhcp_relay���Qh.]�(jF  jz  ehMh0h2)��N}�(hhhKu��bu��bu}�(hh �2srlinux::types::srl_nokia_interfaces_ip_dhcp_relay���Qh.]�(h�)��}�(h�j  hh �2srlinux::types::srl_nokia_interfaces_ip_dhcp_relay���QhIj  ubjF  jz  ehM�h0h2)��N}�(hhhKu��bu��beub.