���"      �inmanta.parser.cache��CacheEnvelope���)��}�(�	timestamp�GA��s�s*�
statements�]�(�inmanta.ast��LocatableString���)��}�(�value��m
    :copyright: 2022 Inmanta
    :contact: code@inmanta.com
    :author: Inmanta
    :license: Inmanta EULA
��location�h�Range���)��N}�(�
start_char�K�end_lnr�K�end_char�K�file��w/home/dariush/.local/lib/python3.10/site-packages/inmanta_plugins/srlinux/model/types/srl_nokia_interfaces_lag/_init.cf��lnr�Ku��bhK�elnr�K�end�K�start�K�lexpos�Ks�	namespace��	Namespace��(srlinux::types::srl_nokia_interfaces_lag���Qub�inmanta.ast.statements.define��DefineTypeConstraint���)��}�(�name��lacp_fallback_type��fullName��<srlinux::types::srl_nokia_interfaces_lag::lacp_fallback_type��type��inmanta.ast.type��ConstraintType���)��}�(�basetype�N�_constraint�Nh(h)hh �(srlinux::types::srl_nokia_interfaces_lag���Q�comment�N�
expression�Nu}��	_location�h)��N}�(hK	hK	hKhhhK	u��bs��bh6��

Source type expression:

    srl_nokia-interfaces-lag.yang:
    L117:    type enumeration {
    L118:      enum static {
    L119:        description
    L120:          "Set the LACP-fallback mode as static";
    L121:      }
    L122:    }

�h2h
)��}�(h�string�hh)��N}�(hKhK	hK%hhhK	u��bhK	hK	hK%hKhK�hh �(srlinux::types::srl_nokia_interfaces_lag���Qub�!_DefineTypeConstraint__expression��!inmanta.ast.constraint.expression��Equals���)��N}�(�_Operator__number_arguments�K�
_arguments�]�(�inmanta.ast.variables��	Reference���)��N}�(�locatable_name�h
)��}�(h�self�hh)��N}�(hK/hK	hK3hhhK	u��bhK	hK	hK3hK/hK�hh �(srlinux::types::srl_nokia_interfaces_lag���Qubh(hX�	full_name�hX�_own_eager_promises�]�hh �(srlinux::types::srl_nokia_interfaces_lag���Q�anchors�]�hNh9hYu��b�inmanta.ast.statements��Literal���)��N}�(h�static�h_]�hh �(srlinux::types::srl_nokia_interfaces_lag���Qhc]�hK�h9h�Location���)��N}�(hhhK	u��bu��be�_Operator__name��equality��children�hOh_]�hh �(srlinux::types::srl_nokia_interfaces_lag���Qhc]�hK�h9hq)��N}�(hhhK	u��bu��bu}�(hh �(srlinux::types::srl_nokia_interfaces_lag���Qhc]�h�TypeReferenceAnchor���)��}�(�range�hBhh �(srlinux::types::srl_nokia_interfaces_lag���Qh,h?ubahK~h9hq)��N}�(hhhK	u��bu��bh%)��}�(h(�lag_type�h*�2srlinux::types::srl_nokia_interfaces_lag::lag_type�h,h/)��}�(h2Nh3Nh(h�hh �(srlinux::types::srl_nokia_interfaces_lag���Qh6Nh7Nu}�h9h)��N}�(hK	hKhKhhhKu��bs��bh6X�  
Type to define the lag-type, i.e., how the LAG is
defined and managed
Source type expression:

    srl_nokia-interfaces-lag.yang:
    L101:    type enumeration {
    L102:      enum lacp {
    L103:        description
    L104:          "LAG managed by LACP";
    L105:      }
    L106:      enum static {
    L107:        description
    L108:          "Statically configured bundle / LAG";
    L109:      }
    L110:    }

�h2h
)��}�(h�string�hh)��N}�(hKhKhKhhhKu��bhKhKhKhKhM�hh �(srlinux::types::srl_nokia_interfaces_lag���QubhGhH�In���)��N}�(�_Operator__number_arguments�KhN]�(hR)��N}�(hUh
)��}�(h�self�hh)��N}�(hK%hKhK)hhhKu��bhKhKhK)hK%hM�hh �(srlinux::types::srl_nokia_interfaces_lag���Qubh(h�h^h�h_]�hh �(srlinux::types::srl_nokia_interfaces_lag���Qhc]�hNh9h�u��b�inmanta.ast.statements.assign��
CreateList���)��N}�(�items�]�(hh)��N}�(h�lacp�h_]�hh �(srlinux::types::srl_nokia_interfaces_lag���Qhc]�hM�h9hq)��N}�(hhhKu��bu��bhh)��N}�(h�static�h_]�hh �(srlinux::types::srl_nokia_interfaces_lag���Qhc]�hM�h9hq)��N}�(hhhKu��bu��behxh�h_]�hh �(srlinux::types::srl_nokia_interfaces_lag���Qhc]�hM�h9hq)��N}�(hhhKu��bu��be�_Operator__name��in�hxh�h_]�hh �(srlinux::types::srl_nokia_interfaces_lag���Qhc]�hM�h9hq)��N}�(hhhKu��bu��bu}�(hh �(srlinux::types::srl_nokia_interfaces_lag���Qhc]�h�)��}�(h�h�hh �(srlinux::types::srl_nokia_interfaces_lag���Qh,h�ubahM�h9hq)��N}�(hhhKu��bu��bh%)��}�(h(�member_speed_type�h*�;srlinux::types::srl_nokia_interfaces_lag::member_speed_type�h,h/)��}�(h2Nh3Nh(h�hh �(srlinux::types::srl_nokia_interfaces_lag���Qh6Nh7Nu}�h9h)��N}�(hK	hK,hKhhhK,u��bs��bh6XB  
Enumeration for LAG member-link speeds
Source type expression:

    srl_nokia-interfaces-lag.yang:
    L48:    type enumeration {
    L49:      enum 10M {
    L50:        if-feature "srl_nokia-feat:platform-7220-d1";
    L51:        value 1;
    L52:        description
    L53:          "Indicates the the LAG member-links must be 10M to be active";
    L54:      }
    L55:      enum 100M {
    L56:        if-feature "srl_nokia-feat:platform-7220-d1";
    L57:        value 2;
    L58:        description
    L59:          "Indicates the the LAG member-links must be 100M to be active";
    L60:      }
    L61:      enum 1G {
    L62:        if-feature "srl_nokia-feat:platform-7220-d1 or srl_nokia-feat:platform-7220-d2 or srl_nokia-feat:platform-7220-d3 or srl_nokia-feat:platform-7220-h3 or srl_nokia-feat:platform-vsrl";
    L63:        value 3;
    L64:        description
    L65:          "Indicates the the LAG member-links must be 1G to be active";
    L66:      }
    L67:      enum 10G {
    L68:        if-feature "srl_nokia-feat:platform-7250-j2 or srl_nokia-feat:platform-7220-d1 or srl_nokia-feat:platform-7220-d2 or srl_nokia-feat:platform-7220-d3 or srl_nokia-feat:platform-7220-h3 or srl_nokia-feat:platform-vsrl or srl_nokia-feat:platform-7220-bcmsvk or srl_nokia-feat:platform-7210-sas24g or srl_nokia-feat:platform-7220-d5";
    L69:        value 4;
    L70:        description
    L71:          "Indicates the the LAG member-links must be 10G to be active";
    L72:      }
    L73:      enum 25G {
    L74:        if-feature "srl_nokia-feat:platform-7220-d2 or (srl_nokia-feat:port-breakout and srl_nokia-feat:platform-7220-d3) or srl_nokia-feat:platform-vsrl";
    L75:        value 5;
    L76:        description
    L77:          "Indicates the the LAG member-links must be 25G to be active";
    L78:      }
    L79:      enum 40G {
    L80:        if-feature "srl_nokia-feat:platform-7250-ixr or srl_nokia-feat:platform-7220-d2 or srl_nokia-feat:platform-7220-d3 or srl_nokia-feat:platform-7220-h3 or srl_nokia-feat:platform-vsrl";
    L81:        value 6;
    L82:        description
    L83:          "Indicates the the LAG member-links must be 40G to be active";
    L84:      }
    L85:      enum 100G {
    L86:        if-feature "srl_nokia-feat:platform-7250-ixr or srl_nokia-feat:platform-7220-d2 or srl_nokia-feat:platform-7220-d3 or srl_nokia-feat:platform-7220-h2 or srl_nokia-feat:platform-7220-h3 or srl_nokia-feat:platform-vsrl or srl_nokia-feat:platform-7220-bcmsvk or srl_nokia-feat:platform-7210-sas24g or srl_nokia-feat:platform-7220-d5";
    L87:        value 7;
    L88:        description
    L89:          "Indicates the the LAG member-links must be 100G to be active";
    L90:      }
    L91:      enum 400G {
    L92:        if-feature "srl_nokia-feat:platform-7250-ixr or srl_nokia-feat:platform-7250-ixr-e or srl_nokia-feat:platform-7250-j2 or srl_nokia-feat:platform-7220-h3 or srl_nokia-feat:platform-7220-d5";
    L93:        value 8;
    L94:        description
    L95:          "Indicates the the LAG member-links must be 400G to be active";
    L96:      }
    L97:    }

�h2h
)��}�(h�string�hh)��N}�(hKhK,hK$hhhK,u��bhK,hK,hK$hKhM�hh �(srlinux::types::srl_nokia_interfaces_lag���QubhGh�)��N}�(h�KhN]�(hR)��N}�(hUh
)��}�(h�self�hh)��N}�(hK.hK,hK2hhhK,u��bhK,hK,hK2hK.hM�hh �(srlinux::types::srl_nokia_interfaces_lag���Qubh(j  h^j  h_]�hh �(srlinux::types::srl_nokia_interfaces_lag���Qhc]�hNh9j  u��bh�)��N}�(h�]�(hh)��N}�(h�10M�h_]�hh �(srlinux::types::srl_nokia_interfaces_lag���Qhc]�hM�h9hq)��N}�(hhhK-u��bu��bhh)��N}�(h�100M�h_]�hh �(srlinux::types::srl_nokia_interfaces_lag���Qhc]�hM�h9hq)��N}�(hhhK.u��bu��bhh)��N}�(h�1G�h_]�hh �(srlinux::types::srl_nokia_interfaces_lag���Qhc]�hM�h9hq)��N}�(hhhK/u��bu��bhh)��N}�(h�10G�h_]�hh �(srlinux::types::srl_nokia_interfaces_lag���Qhc]�hMh9hq)��N}�(hhhK0u��bu��bhh)��N}�(h�25G�h_]�hh �(srlinux::types::srl_nokia_interfaces_lag���Qhc]�hMh9hq)��N}�(hhhK1u��bu��bhh)��N}�(h�40G�h_]�hh �(srlinux::types::srl_nokia_interfaces_lag���Qhc]�hMh9hq)��N}�(hhhK2u��bu��bhh)��N}�(h�100G�h_]�hh �(srlinux::types::srl_nokia_interfaces_lag���Qhc]�hM%h9hq)��N}�(hhhK3u��bu��bhh)��N}�(h�400G�h_]�hh �(srlinux::types::srl_nokia_interfaces_lag���Qhc]�hM1h9hq)��N}�(hhhK4u��bu��behxj   h_]�hh �(srlinux::types::srl_nokia_interfaces_lag���Qhc]�hM�h9hq)��N}�(hhhK,u��bu��beh�h�hxj  h_]�hh �(srlinux::types::srl_nokia_interfaces_lag���Qhc]�hM�h9hq)��N}�(hhhK,u��bu��bu}�(hh �(srlinux::types::srl_nokia_interfaces_lag���Qhc]�h�)��}�(h�j  hh �(srlinux::types::srl_nokia_interfaces_lag���Qh,j  ubahM�h9hq)��N}�(hhhK,u��bu��beub.