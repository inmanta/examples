���      �inmanta.parser.cache��CacheEnvelope���)��}�(�	timestamp�GA���c��
statements�]�(�inmanta.ast��LocatableString���)��}�(�value��m
    :copyright: 2022 Inmanta
    :contact: code@inmanta.com
    :author: Inmanta
    :license: Inmanta EULA
��location�h�Range���)��N}�(�
start_char�K�end_lnr�K�end_char�K�file��z/home/dariush/.virtualenvs/srlinux/lib/python3.9/site-packages/inmanta_plugins/srlinux/model/types/srl_nokia_igmp/_init.cf��lnr�Ku��bhK�elnr�K�end�K�start�K�lexpos�Ks�	namespace��	Namespace��srlinux::types::srl_nokia_igmp���Qub�inmanta.ast.statements.define��DefineImport���)��}�(�name��srlinux::types��toname�h)u}�(hh �srlinux::types::srl_nokia_igmp���Q�anchors�]�hKt�	_location�h�Location���)��N}�(hhhKu��bu��bh#�DefineTypeConstraint���)��}�(h(�igmp_interval_type��fullName��2srlinux::types::srl_nokia_igmp::igmp_interval_type��type��inmanta.ast.type��ConstraintType���)��}�(�basetype�N�_constraint�Nh(h;hh �srlinux::types::srl_nokia_igmp���Q�comment�N�
expression�Nu}�h0h)��N}�(hK	hK	hKhhhK	u��bs��bhH��
Interval at which the router sends the IGMP query message toward
the upstream neighbor.
Source type expression:

    srl_nokia-igmp.yang:
    L50:    type uint32;

�hDh
)��}�(h�srlinux::types::uint32�hh)��N}�(hKhK	hK5hhhK	u��bhK	hK	hK5hKhK�hh �srlinux::types::srl_nokia_igmp���Qub�!_DefineTypeConstraint__expression��!inmanta.ast.constraint.expression��Equals���)��N}�(�_Operator__number_arguments�K�
_arguments�]�(�inmanta.ast.variables��	Reference���)��N}�(�locatable_name�h
)��}�(h�self�hh)��N}�(hK?hK	hKChhhK	u��bhK	hK	hKChK?hK�hh �srlinux::types::srl_nokia_igmp���Qubh(hi�	full_name�hi�_own_eager_promises�]�hh �srlinux::types::srl_nokia_igmp���Qh.]�hNh0hju��bhc)��N}�(hfh
)��}�(h�self�hh)��N}�(hKGhK	hKKhhhK	u��bhK	hK	hKKhKGhK�hh �srlinux::types::srl_nokia_igmp���Qubh(hzhohzhp]�hh �srlinux::types::srl_nokia_igmp���Qh.]�hNh0h{u��be�_Operator__name��equality��children�h`hp]�hh �srlinux::types::srl_nokia_igmp���Qh.]�hK�h0h2)��N}�(hhhK	u��bu��bu}�(hh �srlinux::types::srl_nokia_igmp���Qh.]�h�TypeReferenceAnchor���)��}�(�range�hShh �srlinux::types::srl_nokia_igmp���Qh>hPubahK�h0h2)��N}�(hhhK	u��bu��bh8)��}�(h(�igmp_version�h<�,srlinux::types::srl_nokia_igmp::igmp_version�h>hA)��}�(hDNhENh(h�hh �srlinux::types::srl_nokia_igmp���QhHNhINu}�h0h)��N}�(hK	hKhKhhhKu��bs��bhH��
IGMP Version.
Source type expression:

    srl_nokia-igmp.yang:
    L40:    type uint8 {
    L41:      range "1..3";
    L42:    }

�hDh
)��}�(h�srlinux::types::uint8�hh)��N}�(hKhKhK.hhhKu��bhKhKhK.hKhM�hh �srlinux::types::srl_nokia_igmp���QubhXhY�And���)��N}�(�_Operator__number_arguments�Kh_]�(hY�GreaterThanOrEqual���)��N}�(�_Operator__number_arguments�Kh_]�(hc)��N}�(hfh
)��}�(h�self�hh)��N}�(hK8hKhK<hhhKu��bhKhKhK<hK8hM�hh �srlinux::types::srl_nokia_igmp���Qubh(h�hoh�hp]�hh �srlinux::types::srl_nokia_igmp���Qh.]�hNh0h�u��b�inmanta.ast.statements��Literal���)��N}�(hKhp]�hh �srlinux::types::srl_nokia_igmp���Qh.]�hM�h0h2)��N}�(hhhKu��bu��be�_Operator__name��greater than or equal�h�h�hp]�hh �srlinux::types::srl_nokia_igmp���Qh.]�hM�h0h2)��N}�(hhhKu��bu��bhY�LessThanOrEqual���)��N}�(�_Operator__number_arguments�Kh_]�(hc)��N}�(hfh
)��}�(h�self�hh)��N}�(hKFhKhKJhhhKu��bhKhKhKJhKFhM�hh �srlinux::types::srl_nokia_igmp���Qubh(h�hoh�hp]�hh �srlinux::types::srl_nokia_igmp���Qh.]�hNh0h�u��bh�)��N}�(hKhp]�hh �srlinux::types::srl_nokia_igmp���Qh.]�hM�h0h2)��N}�(hhhKu��bu��be�_Operator__name��less than or equal�h�h�hp]�hh �srlinux::types::srl_nokia_igmp���Qh.]�hM�h0h2)��N}�(hhhKu��bu��be�_Operator__name��and�h�h�hp]�hh �srlinux::types::srl_nokia_igmp���Qh.]�hM�h0h2)��N}�(hhhKu��bu��bu}�(hh �srlinux::types::srl_nokia_igmp���Qh.]�h�)��}�(h�h�hh �srlinux::types::srl_nokia_igmp���Qh>h�ubahM�h0h2)��N}�(hhhKu��bu��beub.