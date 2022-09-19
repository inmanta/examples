���      �inmanta.parser.cache��CacheEnvelope���)��}�(�	timestamp�GA��s����
statements�]�(�inmanta.ast��LocatableString���)��}�(�value��m
    :copyright: 2022 Inmanta
    :contact: code@inmanta.com
    :author: Inmanta
    :license: Inmanta EULA
��location�h�Range���)��N}�(�
start_char�K�end_lnr�K�end_char�K�file��l/home/dariush/.local/lib/python3.10/site-packages/inmanta_plugins/srlinux/model/types/srl_nokia_mld/_init.cf��lnr�Ku��bhK�elnr�K�end�K�start�K�lexpos�Ks�	namespace��	Namespace��srlinux::types::srl_nokia_mld���Qub�inmanta.ast.statements.define��DefineImport���)��}�(�name��srlinux::types��toname�h)u}�(hh �srlinux::types::srl_nokia_mld���Q�anchors�]�hKt�	_location�h�Location���)��N}�(hhhKu��bu��bh#�DefineTypeConstraint���)��}�(h(�mld_interval_type��fullName��0srlinux::types::srl_nokia_mld::mld_interval_type��type��inmanta.ast.type��ConstraintType���)��}�(�basetype�N�_constraint�Nh(h;hh �srlinux::types::srl_nokia_mld���Q�comment�N�
expression�Nu}�h0h)��N}�(hK	hK	hKhhhK	u��bs��bhH��
Interval at which the router sends the MLD query message toward
the upstream neighbor.
Source type expression:

    srl_nokia-mld.yang:
    L50:    type uint32;

�hDh
)��}�(h�srlinux::types::uint32�hh)��N}�(hKhK	hK4hhhK	u��bhK	hK	hK4hKhK�hh �srlinux::types::srl_nokia_mld���Qub�!_DefineTypeConstraint__expression��!inmanta.ast.constraint.expression��Equals���)��N}�(�_Operator__number_arguments�K�
_arguments�]�(�inmanta.ast.variables��	Reference���)��N}�(�locatable_name�h
)��}�(h�self�hh)��N}�(hK>hK	hKBhhhK	u��bhK	hK	hKBhK>hK�hh �srlinux::types::srl_nokia_mld���Qubh(hi�	full_name�hi�_own_eager_promises�]�hh �srlinux::types::srl_nokia_mld���Qh.]�hNh0hju��bhc)��N}�(hfh
)��}�(h�self�hh)��N}�(hKFhK	hKJhhhK	u��bhK	hK	hKJhKFhK�hh �srlinux::types::srl_nokia_mld���Qubh(hzhohzhp]�hh �srlinux::types::srl_nokia_mld���Qh.]�hNh0h{u��be�_Operator__name��equality��children�h`hp]�hh �srlinux::types::srl_nokia_mld���Qh.]�hK�h0h2)��N}�(hhhK	u��bu��bu}�(hh �srlinux::types::srl_nokia_mld���Qh.]�h�TypeReferenceAnchor���)��}�(�range�hShh �srlinux::types::srl_nokia_mld���Qh>hPubahK�h0h2)��N}�(hhhK	u��bu��bh8)��}�(h(�mld_version�h<�*srlinux::types::srl_nokia_mld::mld_version�h>hA)��}�(hDNhENh(h�hh �srlinux::types::srl_nokia_mld���QhHNhINu}�h0h)��N}�(hK	hKhKhhhKu��bs��bhH��
MLD Version.
Source type expression:

    srl_nokia-mld.yang:
    L40:    type uint8 {
    L41:      range "1..2";
    L42:    }

�hDh
)��}�(h�srlinux::types::uint8�hh)��N}�(hKhKhK-hhhKu��bhKhKhK-hKhM�hh �srlinux::types::srl_nokia_mld���QubhXhY�And���)��N}�(�_Operator__number_arguments�Kh_]�(hY�GreaterThanOrEqual���)��N}�(�_Operator__number_arguments�Kh_]�(hc)��N}�(hfh
)��}�(h�self�hh)��N}�(hK7hKhK;hhhKu��bhKhKhK;hK7hM�hh �srlinux::types::srl_nokia_mld���Qubh(h�hoh�hp]�hh �srlinux::types::srl_nokia_mld���Qh.]�hNh0h�u��b�inmanta.ast.statements��Literal���)��N}�(hKhp]�hh �srlinux::types::srl_nokia_mld���Qh.]�hM�h0h2)��N}�(hhhKu��bu��be�_Operator__name��greater than or equal�h�h�hp]�hh �srlinux::types::srl_nokia_mld���Qh.]�hM�h0h2)��N}�(hhhKu��bu��bhY�LessThanOrEqual���)��N}�(�_Operator__number_arguments�Kh_]�(hc)��N}�(hfh
)��}�(h�self�hh)��N}�(hKEhKhKIhhhKu��bhKhKhKIhKEhM�hh �srlinux::types::srl_nokia_mld���Qubh(h�hoh�hp]�hh �srlinux::types::srl_nokia_mld���Qh.]�hNh0h�u��bh�)��N}�(hKhp]�hh �srlinux::types::srl_nokia_mld���Qh.]�hM�h0h2)��N}�(hhhKu��bu��be�_Operator__name��less than or equal�h�h�hp]�hh �srlinux::types::srl_nokia_mld���Qh.]�hM�h0h2)��N}�(hhhKu��bu��be�_Operator__name��and�h�h�hp]�hh �srlinux::types::srl_nokia_mld���Qh.]�hM�h0h2)��N}�(hhhKu��bu��bu}�(hh �srlinux::types::srl_nokia_mld���Qh.]�h�)��}�(h�h�hh �srlinux::types::srl_nokia_mld���Qh>h�ubahM�h0h2)��N}�(hhhKu��bu��beub.