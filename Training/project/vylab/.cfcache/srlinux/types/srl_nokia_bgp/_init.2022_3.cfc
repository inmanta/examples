���      �inmanta.parser.cache��CacheEnvelope���)��}�(�	timestamp�GA��s�bȌ
statements�]�(�inmanta.ast��LocatableString���)��}�(�value��m
    :copyright: 2022 Inmanta
    :contact: code@inmanta.com
    :author: Inmanta
    :license: Inmanta EULA
��location�h�Range���)��N}�(�
start_char�K�end_lnr�K�end_char�K�file��l/home/dariush/.local/lib/python3.10/site-packages/inmanta_plugins/srlinux/model/types/srl_nokia_bgp/_init.cf��lnr�Ku��bhK�elnr�K�end�K�start�K�lexpos�Ks�	namespace��	Namespace��srlinux::types::srl_nokia_bgp���Qub�inmanta.ast.statements.define��DefineImport���)��}�(�name��srlinux::types��toname�h)u}�(hh �srlinux::types::srl_nokia_bgp���Q�anchors�]�hKt�	_location�h�Location���)��N}�(hhhKu��bu��bh#�DefineTypeConstraint���)��}�(h(�autonomous_system_number��fullName��7srlinux::types::srl_nokia_bgp::autonomous_system_number��type��inmanta.ast.type��ConstraintType���)��}�(�basetype�N�_constraint�Nh(h;hh �srlinux::types::srl_nokia_bgp���Q�comment�N�
expression�Nu}�h0h)��N}�(hK	hK	hK!hhhK	u��bs��bhH��

Source type expression:

    srl_nokia-bgp.yang:
    L56:    type uint32 {
    L57:      range "1..4294967295";
    L58:    }

�hDh
)��}�(h�srlinux::types::uint32�hh)��N}�(hK%hK	hK;hhhK	u��bhK	hK	hK;hK%hK�hh �srlinux::types::srl_nokia_bgp���Qub�!_DefineTypeConstraint__expression��!inmanta.ast.constraint.expression��And���)��N}�(�_Operator__number_arguments�K�
_arguments�]�(hY�GreaterThanOrEqual���)��N}�(�_Operator__number_arguments�Kh_]�(�inmanta.ast.variables��	Reference���)��N}�(�locatable_name�h
)��}�(h�self�hh)��N}�(hKEhK	hKIhhhK	u��bhK	hK	hKIhKEhK�hh �srlinux::types::srl_nokia_bgp���Qubh(ho�	full_name�ho�_own_eager_promises�]�hh �srlinux::types::srl_nokia_bgp���Qh.]�hNh0hpu��b�inmanta.ast.statements��Literal���)��N}�(hKhv]�hh �srlinux::types::srl_nokia_bgp���Qh.]�hK�h0h2)��N}�(hhhK	u��bu��be�_Operator__name��greater than or equal��children�hfhv]�hh �srlinux::types::srl_nokia_bgp���Qh.]�hK�h0h2)��N}�(hhhK	u��bu��bhY�LessThanOrEqual���)��N}�(�_Operator__number_arguments�Kh_]�(hi)��N}�(hlh
)��}�(h�self�hh)��N}�(hKShK	hKWhhhK	u��bhK	hK	hKWhKShK�hh �srlinux::types::srl_nokia_bgp���Qubh(h�huh�hv]�hh �srlinux::types::srl_nokia_bgp���Qh.]�hNh0h�u��bh~)��N}�(h����� hv]�hh �srlinux::types::srl_nokia_bgp���Qh.]�hK�h0h2)��N}�(hhhK	u��bu��be�_Operator__name��less than or equal�h�h�hv]�hh �srlinux::types::srl_nokia_bgp���Qh.]�hK�h0h2)��N}�(hhhK	u��bu��be�_Operator__name��and�h�h`hv]�hh �srlinux::types::srl_nokia_bgp���Qh.]�hK�h0h2)��N}�(hhhK	u��bu��bu}�(hh �srlinux::types::srl_nokia_bgp���Qh.]�h�TypeReferenceAnchor���)��}�(�range�hShh �srlinux::types::srl_nokia_bgp���Qh>hPubahK�h0h2)��N}�(hhhK	u��bu��bh8)��}�(h(�ip_ecmp�h<�&srlinux::types::srl_nokia_bgp::ip_ecmp�h>hA)��}�(hDNhENh(h�hh �srlinux::types::srl_nokia_bgp���QhHNhINu}�h0h)��N}�(hK	hKhKhhhKu��bs��bhH��
The supported range of ECMP values for IP routes.
Source type expression:

    srl_nokia-bgp.yang:
    L64:    type uint32 {
    L65:      range "1..64";
    L66:    }

�hDh
)��}�(h�srlinux::types::uint32�hh)��N}�(hKhKhK*hhhKu��bhKhKhK*hKhM�hh �srlinux::types::srl_nokia_bgp���QubhXh[)��N}�(h^Kh_]�(hb)��N}�(heKh_]�(hi)��N}�(hlh
)��}�(h�self�hh)��N}�(hK4hKhK8hhhKu��bhKhKhK8hK4hM�hh �srlinux::types::srl_nokia_bgp���Qubh(h�huh�hv]�hh �srlinux::types::srl_nokia_bgp���Qh.]�hNh0h�u��bh~)��N}�(hKhv]�hh �srlinux::types::srl_nokia_bgp���Qh.]�hM�h0h2)��N}�(hhhKu��bu��beh�h�h�h�hv]�hh �srlinux::types::srl_nokia_bgp���Qh.]�hM�h0h2)��N}�(hhhKu��bu��bh�)��N}�(h�Kh_]�(hi)��N}�(hlh
)��}�(h�self�hh)��N}�(hKBhKhKFhhhKu��bhKhKhKFhKBhM�hh �srlinux::types::srl_nokia_bgp���Qubh(j  huj  hv]�hh �srlinux::types::srl_nokia_bgp���Qh.]�hNh0j  u��bh~)��N}�(hK@hv]�hh �srlinux::types::srl_nokia_bgp���Qh.]�hM�h0h2)��N}�(hhhKu��bu��beh�h�h�j  hv]�hh �srlinux::types::srl_nokia_bgp���Qh.]�hM�h0h2)��N}�(hhhKu��bu��beh�h�h�h�hv]�hh �srlinux::types::srl_nokia_bgp���Qh.]�hM�h0h2)��N}�(hhhKu��bu��bu}�(hh �srlinux::types::srl_nokia_bgp���Qh.]�h�)��}�(h�h�hh �srlinux::types::srl_nokia_bgp���Qh>h�ubahM�h0h2)��N}�(hhhKu��bu��bh8)��}�(h(�
percentage�h<�)srlinux::types::srl_nokia_bgp::percentage�h>hA)��}�(hDNhENh(jM  hh �srlinux::types::srl_nokia_bgp���QhHNhINu}�h0h)��N}�(hK	hK!hKhhhK!u��bs��bhH��
Integer indicating a percentage value
Source type expression:

    srl_nokia-bgp.yang:
    L70:    type uint8 {
    L71:      range "0..100";
    L72:    }

�hDh
)��}�(h�srlinux::types::uint8�hh)��N}�(hKhK!hK,hhhK!u��bhK!hK!hK,hKhM�hh �srlinux::types::srl_nokia_bgp���QubhXh[)��N}�(h^Kh_]�(hb)��N}�(heKh_]�(hi)��N}�(hlh
)��}�(h�self�hh)��N}�(hK6hK!hK:hhhK!u��bhK!hK!hK:hK6hM�hh �srlinux::types::srl_nokia_bgp���Qubh(jk  hujk  hv]�hh �srlinux::types::srl_nokia_bgp���Qh.]�hNh0jl  u��bh~)��N}�(hK hv]�hh �srlinux::types::srl_nokia_bgp���Qh.]�hM�h0h2)��N}�(hhhK!u��bu��beh�h�h�jf  hv]�hh �srlinux::types::srl_nokia_bgp���Qh.]�hM�h0h2)��N}�(hhhK!u��bu��bh�)��N}�(h�Kh_]�(hi)��N}�(hlh
)��}�(h�self�hh)��N}�(hKDhK!hKHhhhK!u��bhK!hK!hKHhKDhM�hh �srlinux::types::srl_nokia_bgp���Qubh(j�  huj�  hv]�hh �srlinux::types::srl_nokia_bgp���Qh.]�hNh0j�  u��bh~)��N}�(hKdhv]�hh �srlinux::types::srl_nokia_bgp���Qh.]�hM�h0h2)��N}�(hhhK!u��bu��beh�h�h�j�  hv]�hh �srlinux::types::srl_nokia_bgp���Qh.]�hM�h0h2)��N}�(hhhK!u��bu��beh�h�h�jc  hv]�hh �srlinux::types::srl_nokia_bgp���Qh.]�hM�h0h2)��N}�(hhhK!u��bu��bu}�(hh �srlinux::types::srl_nokia_bgp���Qh.]�h�)��}�(h�j\  hh �srlinux::types::srl_nokia_bgp���Qh>jY  ubahM�h0h2)��N}�(hhhK!u��bu��beub.