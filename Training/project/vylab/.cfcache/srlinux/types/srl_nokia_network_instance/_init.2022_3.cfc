��9      �inmanta.parser.cache��CacheEnvelope���)��}�(�	timestamp�GA��s����
statements�]�(�inmanta.ast��LocatableString���)��}�(�value��m
    :copyright: 2022 Inmanta
    :contact: code@inmanta.com
    :author: Inmanta
    :license: Inmanta EULA
��location�h�Range���)��N}�(�
start_char�K�end_lnr�K�end_char�K�file��y/home/dariush/.local/lib/python3.10/site-packages/inmanta_plugins/srlinux/model/types/srl_nokia_network_instance/_init.cf��lnr�Ku��bhK�elnr�K�end�K�start�K�lexpos�Ks�	namespace��	Namespace��*srlinux::types::srl_nokia_network_instance���Qub�inmanta.ast.statements.define��DefineImport���)��}�(�name�� srlinux::types::srl_nokia_common��toname�h)u}�(hh �*srlinux::types::srl_nokia_network_instance���Q�anchors�]�hKt�	_location�h�Location���)��N}�(hhhKu��bu��bh#�DefineTypeConstraint���)��}�(h(�network_instance_subintf_ref��fullName��Hsrlinux::types::srl_nokia_network_instance::network_instance_subintf_ref��type��inmanta.ast.type��ConstraintType���)��}�(�basetype�N�_constraint�Nh(h;hh �*srlinux::types::srl_nokia_network_instance���Q�comment�N�
expression�Nu}�h0h)��N}�(hK	hK	hK%hhhK	u��bs��bhH��
Reference type to a specific subinterface of the form <interface-name>.<subinterface-index>
Source type expression:

    srl_nokia-network-instance.yang:
    L59:    type srl_nokia-comm:subinterface-all;

�hDh
)��}�(h�2srlinux::types::srl_nokia_common::subinterface_all�hh)��N}�(hK)hK	hK[hhhK	u��bhK	hK	hK[hK)hK�hh �*srlinux::types::srl_nokia_network_instance���Qub�!_DefineTypeConstraint__expression��!inmanta.ast.constraint.expression��Equals���)��N}�(�_Operator__number_arguments�K�
_arguments�]�(�inmanta.ast.variables��	Reference���)��N}�(�locatable_name�h
)��}�(h�self�hh)��N}�(hKehK	hKihhhK	u��bhK	hK	hKihKehMhh �*srlinux::types::srl_nokia_network_instance���Qubh(hi�	full_name�hi�_own_eager_promises�]�hh �*srlinux::types::srl_nokia_network_instance���Qh.]�hNh0hju��bhc)��N}�(hfh
)��}�(h�self�hh)��N}�(hKmhK	hKqhhhK	u��bhK	hK	hKqhKmhMhh �*srlinux::types::srl_nokia_network_instance���Qubh(hzhohzhp]�hh �*srlinux::types::srl_nokia_network_instance���Qh.]�hNh0h{u��be�_Operator__name��equality��children�h`hp]�hh �*srlinux::types::srl_nokia_network_instance���Qh.]�hMh0h2)��N}�(hhhK	u��bu��bu}�(hh �*srlinux::types::srl_nokia_network_instance���Qh.]�h�TypeReferenceAnchor���)��}�(�range�hShh �*srlinux::types::srl_nokia_network_instance���Qh>hPubahK�h0h2)��N}�(hhhK	u��bu��bh8)��}�(h(�network_instance_vxlan_if_ref�h<�Isrlinux::types::srl_nokia_network_instance::network_instance_vxlan_if_ref�h>hA)��}�(hDNhENh(h�hh �*srlinux::types::srl_nokia_network_instance���QhHNhINu}�h0h)��N}�(hK	hKhK&hhhKu��bs��bhHXY  
Reference type to a specific vxlan-interface of the form <tunnel-interface-name>.<vxlan-interface-index>
Source type expression:

    srl_nokia-network-instance.yang:
    L65:    type string {
    L66:      length "8..17";
    L67:      pattern '(vxlan(0|1[0-9][0-9]|2([0-4][0-9]|5[0-5])|[1-9][0-9]|[1-9])\.(0|[1-9](\d){0,8}))';
    L68:    }

�hDh
)��}�(h�string�hh)��N}�(hK*hKhK0hhhKu��bhKhKhK0hK*hMhh �*srlinux::types::srl_nokia_network_instance���QubhXhY�And���)��N}�(�_Operator__number_arguments�Kh_]�(h�)��N}�(h�Kh_]�(hY�GreaterThanOrEqual���)��N}�(�_Operator__number_arguments�Kh_]�(�inmanta.ast.statements.call��FunctionCall���)��N}�(h(h
)��}�(h�std::length�hh)��N}�(hK:hKhKEhhhKu��bhKhKhKEhK:hM"hh �*srlinux::types::srl_nokia_network_instance���Qub�	arguments�]�hc)��N}�(hfh
)��}�(h�self�hh)��N}�(hKFhKhKJhhhKu��bhKhKhKJhKFhM-hh �*srlinux::types::srl_nokia_network_instance���Qubh(h�hoh�hp]�hh �*srlinux::types::srl_nokia_network_instance���Qh.]�hNh0h�u��ba�wrapped_kwargs�]�hh2)��N}�(hhhKu��b�kwargs�}��function�Nh�]�h�ahp]�hh �*srlinux::types::srl_nokia_network_instance���Qh.]�h�)��}�(h�h�hh �*srlinux::types::srl_nokia_network_instance���Qh>h�ubahNh0Nu��b�inmanta.ast.statements��Literal���)��N}�(hKhp]�hh �*srlinux::types::srl_nokia_network_instance���Qh.]�hM2h0h2)��N}�(hhhKu��bu��be�_Operator__name��greater than or equal�h�h�hp]�hh �*srlinux::types::srl_nokia_network_instance���Qh.]�h�ahM/h0h2)��N}�(hhhKu��bu��bhY�LessThanOrEqual���)��N}�(�_Operator__number_arguments�Kh_]�(h�)��N}�(h(h
)��}�(h�std::length�hh)��N}�(hKUhKhK`hhhKu��bhKhKhK`hKUhM=hh �*srlinux::types::srl_nokia_network_instance���Qubh�]�hc)��N}�(hfh
)��}�(h�self�hh)��N}�(hKahKhKehhhKu��bhKhKhKehKahMHhh �*srlinux::types::srl_nokia_network_instance���Qubh(j   hoj   hp]�hh �*srlinux::types::srl_nokia_network_instance���Qh.]�hNh0j!  u��bah�]�hh2)��N}�(hhhKu��bh�}�h�Nh�]�j  ahp]�hh �*srlinux::types::srl_nokia_network_instance���Qh.]�h�)��}�(h�j  hh �*srlinux::types::srl_nokia_network_instance���Qh>j  ubahNh0Nu��bh�)��N}�(hKhp]�hh �*srlinux::types::srl_nokia_network_instance���Qh.]�hMMh0h2)��N}�(hhhKu��bu��be�_Operator__name��less than or equal�h�j  hp]�hh �*srlinux::types::srl_nokia_network_instance���Qh.]�j5  ahMJh0h2)��N}�(hhhKu��bu��be�_Operator__name��and�h�h�hp]�hh �*srlinux::types::srl_nokia_network_instance���Qh.]�(h�j5  ehM4h0h2)��N}�(hhhKu��bu��bh�)��N}�(h(h
)��}�(h�std::validate_type�hh)��N}�(hKqhKhK�hhhKu��bhKhKhK�hKqhMYhh �*srlinux::types::srl_nokia_network_instance���Qubh�]�(h�)��N}�(h�pydantic.constr�hp]�hh �*srlinux::types::srl_nokia_network_instance���Qh.]�hMgh0h2)��N}�(hhhKu��bu��bhc)��N}�(hfh
)��}�(h�self�hh)��N}�(hK�hKhK�hhhKu��bhKhKhK�hK�hM~hh �*srlinux::types::srl_nokia_network_instance���Qubh(jr  hojr  hp]�hh �*srlinux::types::srl_nokia_network_instance���Qh.]�hNh0js  u��b�inmanta.ast.statements.assign��
CreateDict���)��N}�(�items�]��regex�h�)��N}�(h�h^(?:(?:vxlan(?:0|1[0-9][0-9]|2(?:[0-4][0-9]|5[0-5])|[1-9][0-9]|[1-9])\.(?:0|[1-9](?:\d){0,8})))$(?!\n\Z)�hp]�hh �*srlinux::types::srl_nokia_network_instance���Qh.]�hM�h0h2)��N}�(hhhKu��bu��b��ah�]�j�  ahp]�hh �*srlinux::types::srl_nokia_network_instance���Qh.]�hM�h0h2)��N}�(hhhKu��bu��beh�]�hh2)��N}�(hhhKu��bh�}�h�Nh�]�(jc  jn  j�  ehp]�hh �*srlinux::types::srl_nokia_network_instance���Qh.]�h�)��}�(h�j]  hh �*srlinux::types::srl_nokia_network_instance���Qh>jZ  ubahNh0Nu��bejN  jO  h�h�hp]�hh �*srlinux::types::srl_nokia_network_instance���Qh.]�(h�j5  j�  ehMPh0h2)��N}�(hhhKu��bu��bu}�(hh �*srlinux::types::srl_nokia_network_instance���Qh.]�(h�)��}�(h�h�hh �*srlinux::types::srl_nokia_network_instance���Qh>h�ubh�j5  j�  ehM�h0h2)��N}�(hhhKu��bu��beub.