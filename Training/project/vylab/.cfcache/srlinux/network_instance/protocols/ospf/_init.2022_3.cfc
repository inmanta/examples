���      �inmanta.parser.cache��CacheEnvelope���)��}�(�	timestamp�GA��s�;��
statements�]�(�inmanta.ast��LocatableString���)��}�(�value��m
    :copyright: 2022 Inmanta
    :contact: code@inmanta.com
    :author: Inmanta
    :license: Inmanta EULA
��location�h�Range���)��N}�(�
start_char�K�end_lnr�K�end_char�K�file��x/home/dariush/.local/lib/python3.10/site-packages/inmanta_plugins/srlinux/model/network_instance/protocols/ospf/_init.cf��lnr�Ku��bhK�elnr�K�end�K�start�K�lexpos�Ks�	namespace��	Namespace��*srlinux::network_instance::protocols::ospf���Qub�inmanta.ast.statements.define��DefineImport���)��}�(�name��srlinux��toname�h)u}�(hh �*srlinux::network_instance::protocols::ospf���Q�anchors�]�hKt�	_location�h�Location���)��N}�(hhhKu��bu��bh%)��}�(h(�$srlinux::network_instance::protocols�h*h9u}�(hh �*srlinux::network_instance::protocols::ospf���Qh.]�hK�h0h2)��N}�(hhhKu��bu��bh%)��}�(h(�srlinux::types�h*hDu}�(hh �*srlinux::network_instance::protocols::ospf���Qh.]�hK�h0h2)��N}�(hhhK	u��bu��bh%)��}�(h(�srlinux::types::ietf_yang_types�h*hOu}�(hh �*srlinux::network_instance::protocols::ospf���Qh.]�hK�h0h2)��N}�(hhhK
u��bu��bh%)��}�(h(� srlinux::types::srl_nokia_common�h*hZu}�(hh �*srlinux::network_instance::protocols::ospf���Qh.]�hK�h0h2)��N}�(hhhKu��bu��bh%)��}�(h(�$srlinux::types::srl_nokia_ospf_types�h*heu}�(hh �*srlinux::network_instance::protocols::ospf���Qh.]�hMh0h2)��N}�(hhhKu��bu��bh%)��}�(h(�yang�h*hpu}�(hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM@h0h2)��N}�(hhhKu��bu��bh#�DefineTypeConstraint���)��}�(h(�&instance_advertise_router_capability_t��fullName��Rsrlinux::network_instance::protocols::ospf::instance_advertise_router_capability_t��type��inmanta.ast.type��ConstraintType���)��}�(�basetype�N�_constraint�Nh(h}hh �*srlinux::network_instance::protocols::ospf���Q�comment�N�
expression�Nu}�h0h)��N}�(hK	hKhK/hhhKu��bs��bh�X�  
Scope to advertise router-capability.
Source type expression:

    srl_nokia-ospf.yang:
    L1251:    type enumeration {
    L1252:      enum false {
    L1253:        value 0;
    L1254:      }
    L1255:      enum link {
    L1256:        value 1;
    L1257:      }
    L1258:      enum area {
    L1259:        value 2;
    L1260:      }
    L1261:      enum as {
    L1262:        value 3;
    L1263:      }
    L1264:    }

�h�h
)��}�(h�string�hh)��N}�(hK3hKhK9hhhKu��bhKhKhK9hK3hM�hh �*srlinux::network_instance::protocols::ospf���Qub�!_DefineTypeConstraint__expression��!inmanta.ast.constraint.expression��In���)��N}�(�_Operator__number_arguments�K�
_arguments�]�(�inmanta.ast.variables��	Reference���)��N}�(�locatable_name�h
)��}�(h�self�hh)��N}�(hKChKhKGhhhKu��bhKhKhKGhKChM�hh �*srlinux::network_instance::protocols::ospf���Qubh(h��	full_name�h��_own_eager_promises�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0h�u��b�inmanta.ast.statements.assign��
CreateList���)��N}�(�items�]�(�inmanta.ast.statements��Literal���)��N}�(h�false�h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhKu��bu��bh�)��N}�(h�link�h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhKu��bu��bh�)��N}�(h�area�h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhKu��bu��bh�)��N}�(h�as�h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhKu��bu��be�children�h�h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhKu��bu��be�_Operator__name��in�h�h�h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhKu��bu��bu}�(hh �*srlinux::network_instance::protocols::ospf���Qh.]�h�TypeReferenceAnchor���)��}�(�range�h�hh �*srlinux::network_instance::protocols::ospf���Qh�h�ubahMUh0h2)��N}�(hhhKu��bu��bhz)��}�(h(�instance_instance_id_t�h~�Bsrlinux::network_instance::protocols::ospf::instance_instance_id_t�h�h�)��}�(h�Nh�Nh(j  hh �*srlinux::network_instance::protocols::ospf���Qh�Nh�Nu}�h0h)��N}�(hK	hK&hKhhhK&u��bs��bh�X�  
The OSPF multi instance identity as defined in RFC6549 or RFC5838.
Supported values are:
  For OSPFv2 it is between 0 and 31, default is 0.
  For OSPFv3 address-family ipv6-unicast it is between 0 and 31,
  default is 0.
  For OSPFv3 address-family ipv4-unicast it is between 64 and 95,
  default is 64.
Source type expression:

    srl_nokia-ospf.yang:
    L1222:    type uint32 {
    L1223:      range "0..255";
    L1224:    }

�h�h
)��}�(h�srlinux::types::uint32�hh)��N}�(hK#hK&hK9hhhK&u��bhK&hK&hK9hK#hM�hh �*srlinux::network_instance::protocols::ospf���Qubh�h��And���)��N}�(�_Operator__number_arguments�Kh�]�(h��GreaterThanOrEqual���)��N}�(�_Operator__number_arguments�Kh�]�(h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKChK&hKGhhhK&u��bhK&hK&hKGhKChM�hh �*srlinux::network_instance::protocols::ospf���Qubh(j6  h�j6  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0j7  u��bh�)��N}�(hK h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhK&u��bu��be�_Operator__name��greater than or equal�h�j1  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhK&u��bu��bh��LessThanOrEqual���)��N}�(�_Operator__number_arguments�Kh�]�(h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKQhK&hKUhhhK&u��bhK&hK&hKUhKQhM�hh �*srlinux::network_instance::protocols::ospf���Qubh(j_  h�j_  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0j`  u��bh�)��N}�(hK�h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhK&u��bu��be�_Operator__name��less than or equal�h�jZ  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhK&u��bu��be�_Operator__name��and�h�j+  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhK&u��bu��bu}�(hh �*srlinux::network_instance::protocols::ospf���Qh.]�j  )��}�(j	  j!  hh �*srlinux::network_instance::protocols::ospf���Qh�j  ubahMuh0h2)��N}�(hhhK&u��bu��bhz)��}�(h(�instance_preference_t�h~�Asrlinux::network_instance::protocols::ospf::instance_preference_t�h�h�)��}�(h�Nh�Nh(j�  hh �*srlinux::network_instance::protocols::ospf���Qh�Nh�Nu}�h0h)��N}�(hK	hK8hKhhhK8u��bs��bh���
Sets the route prefence for OSPF sourced routes
Source type expression:

    srl_nokia-ospf.yang:
    L1380:    type uint8 {
    L1381:      range "1..255";
    L1382:    }

�h�h
)��}�(h�srlinux::types::uint8�hh)��N}�(hK"hK8hK7hhhK8u��bhK8hK8hK7hK"hM�hh �*srlinux::network_instance::protocols::ospf���Qubh�j'  )��N}�(j*  Kh�]�(j-  )��N}�(j0  Kh�]�(h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKAhK8hKEhhhK8u��bhK8hK8hKEhKAhM�hh �*srlinux::network_instance::protocols::ospf���Qubh(j�  h�j�  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0j�  u��bh�)��N}�(hKh�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhK8u��bu��bejK  jL  h�j�  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhK8u��bu��bjV  )��N}�(jY  Kh�]�(h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKOhK8hKShhhK8u��bhK8hK8hKShKOhM�hh �*srlinux::network_instance::protocols::ospf���Qubh(j�  h�j�  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0j�  u��bh�)��N}�(hK�h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhK8u��bu��bejt  ju  h�j�  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhK8u��bu��bej~  j  h�j�  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhK8u��bu��bu}�(hh �*srlinux::network_instance::protocols::ospf���Qh.]�j  )��}�(j	  j�  hh �*srlinux::network_instance::protocols::ospf���Qh�j�  ubahM�h0h2)��N}�(hhhK8u��bu��bhz)��}�(h(�instance_reference_bandwidth_t�h~�Jsrlinux::network_instance::protocols::ospf::instance_reference_bandwidth_t�h�h�)��}�(h�Nh�Nh(j  hh �*srlinux::network_instance::protocols::ospf���Qh�Nh�Nu}�h0h)��N}�(hK	hKDhK'hhhKDu��bs��bh�X`  
Configures the reference bandwidth that provides the basis for
interface metrics based on link Bandwidth

If the reference bandwidth is defined, then the cost is calculated
using the following formula:
   cost = reference-bandwidth / bandwidth

When a large reference-bandwidth value is configured, a metric
calculation may result in a value higher than the supported protocol
cost value. If this occurs, OSPF automatically reverts to the
maximum configurable cost metric.
Source type expression:

    srl_nokia-ospf.yang:
    L1371:    type uint64 {
    L1372:      range "1..8000000000";
    L1373:    }

�h�h
)��}�(h�srlinux::types::uint64�hh)��N}�(hK+hKDhKAhhhKDu��bhKDhKDhKAhK+hM�hh �*srlinux::network_instance::protocols::ospf���Qubh�j'  )��N}�(j*  Kh�]�(j-  )��N}�(j0  Kh�]�(h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKKhKDhKOhhhKDu��bhKDhKDhKOhKKhM�hh �*srlinux::network_instance::protocols::ospf���Qubh(j)  h�j)  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0j*  u��bh�)��N}�(hKh�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhKDu��bu��bejK  jL  h�j$  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhKDu��bu��bjV  )��N}�(jY  Kh�]�(h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKYhKDhK]hhhKDu��bhKDhKDhK]hKYhM�hh �*srlinux::network_instance::protocols::ospf���Qubh(jM  h�jM  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0jN  u��bh�)��N}�(h� P��h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhKDu��bu��bejt  ju  h�jH  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhKDu��bu��bej~  j  h�j!  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhKDu��bu��bu}�(hh �*srlinux::network_instance::protocols::ospf���Qh.]�j  )��}�(j	  j  hh �*srlinux::network_instance::protocols::ospf���Qh�j  ubahM�h0h2)��N}�(hhhKDu��bu��bh#�DefineEntity���)��}�(h(�Instance�h~�4srlinux::network_instance::protocols::ospf::Instance�h��inmanta.ast.entity��Entity���)��}�(�_Entity__name�j�  �_Entity__namespace�h �*srlinux::network_instance::protocols::ospf���Q�parent_entities�]��child_entities�]��_attributes�}��implementations�]��
implements�]��implements_inherits���_Entity__default_values�}��
_index_def�]��_index�}��index_queue�}��_instance_list���h�X�
  
    List of OSPF protocol instances associated with this
    network-instance.
    Yang definition can be found here: srl_nokia-ospf.yang:L1992

    :attr address_family: The address family that this instance supports.
    Only valid for OSPFv3.
    :attr admin_state: Used to administratively enable or disable the OSPF instance
    :attr advertise_router_capability: Scope to advertise router-capability.
    :attr export_policy: Apply an export policy to redistribute routes into OSPF
    :attr external_preference: Configure the route preference associated with OSPF external routes
    :attr instance_id: The OSPF multi instance identity as defined in RFC6549 or RFC5838.
    Supported values are:
      For OSPFv2 it is between 0 and 31, default is 0.
      For OSPFv3 address-family ipv6-unicast it is between 0 and 31,
      default is 0.
      For OSPFv3 address-family ipv4-unicast it is between 64 and 95,
      default is 64.
    :attr max_ecmp_paths: The maximum number of ECMP next-hops to program into the FIB
    for every IP prefix
    :attr name: The name of the OSPF instance
    :attr preference: Sets the route prefence for OSPF sourced routes
    :attr reference_bandwidth: Configures the reference bandwidth that provides the basis for
    interface metrics based on link Bandwidth

    If the reference bandwidth is defined, then the cost is calculated
    using the following formula:
       cost = reference-bandwidth / bandwidth

    When a large reference-bandwidth value is configured, a metric
    calculation may result in a value higher than the supported protocol
    cost value. If this occurs, OSPF automatically reverts to the
    maximum configurable cost metric.
    :attr router_id: 
    :attr version: The version that this ospf instance supports.
    :rel area: The OSPF areas within which the local system exists
    :rel asbr: Configure the router as an ASBR (Autonomous System Boundary Router)
    :rel export_limit: Enter the export-limit context
    :rel external_db_overflow: 
    :rel graceful_restart: Container for options related to OSPF graceful restart
    :rel ldp_synchronization: Enable LDP-IGP synchronization procedures on all P2P interfaces and all LAN interfaces with a single adjancency, except on interfaces where the functionality is explicitly disabled.
    :rel overload: 
    :rel parent_ospf: Relation to parent container
    :rel te_database_install: When present, topology and TE information related to this protocol instance is installed into the TE database
    :rel timers: Enter the timers context
    :rel trace_options: Enter the trace-options context
    :rel traffic_engineering: Container with options for controlling the link-state advertisement of the TE properties of this network instance's TE interfaces
    ��
normalized��u}�h0h)��N}�(hKhKZhKhhhKZu��bs��bh�j�  �
attributes�]�(h#�DefineAttribute���)��}�(h�h#�TypeDeclaration���)��}�(h�h
)��}�(h�string�hh)��N}�(hKhK�hKhhhK�u��bhK�hK�hKhKhM�hh �*srlinux::network_instance::protocols::ospf���Qub�multi���nullable��u}�(hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0j�  u��bh(h
)��}�(h�address_family�hh)��N}�(hKhK�hKhhhK�u��bhK�hK�hKhKhM�hh �*srlinux::network_instance::protocols::ospf���Qub�default�h�)��N}�(h�inmanta.execute.util��	NoneValue���)��h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��b�remove_default��u}�(hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0j�  u��bj�  )��}�(h�j�  )��}�(h�h
)��}�(h�-srlinux::types::srl_nokia_common::admin_state�hh)��N}�(hKhK�hK2hhhK�u��bhK�hK�hK2hKhM�hh �*srlinux::network_instance::protocols::ospf���Qubj�  �j�  �u}�(hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0j�  u��bh(h
)��}�(h�admin_state�hh)��N}�(hK4hK�hK?hhhK�u��bhK�hK�hK?hK4hM�hh �*srlinux::network_instance::protocols::ospf���Qubj�  h�)��N}�(hj�  )��h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��bj�  �u}�(hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0j�  u��bj�  )��}�(h�j�  )��}�(h�h
)��}�(h�&instance_advertise_router_capability_t�hh)��N}�(hKhK�hK+hhhK�u��bhK�hK�hK+hKhMhh �*srlinux::network_instance::protocols::ospf���Qubj�  �j�  �u}�(hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0j  u��bh(h
)��}�(h�advertise_router_capability�hh)��N}�(hK-hK�hKHhhhK�u��bhK�hK�hKHhK-hM4hh �*srlinux::network_instance::protocols::ospf���Qubj�  h�)��N}�(hj�  )��h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM7h0h2)��N}�(hhhK�u��bu��bj�  �u}�(hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0j  u��bj�  )��}�(h�j�  )��}�(h�h
)��}�(h�string�hh)��N}�(hKhK�hKhhhK�u��bhK�hK�hKhKhMFhh �*srlinux::network_instance::protocols::ospf���Qubj�  �j�  �u}�(hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0j8  u��bh(h
)��}�(h�export_policy�hh)��N}�(hKhK�hKhhhK�u��bhK�hK�hKhKhMUhh �*srlinux::network_instance::protocols::ospf���Qubj�  h�)��N}�(hj�  )��h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hMXh0h2)��N}�(hhhK�u��bu��bj�  �u}�(hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0jE  u��bj�  )��}�(h�j�  )��}�(h�h
)��}�(h�srlinux::types::uint8�hh)��N}�(hKhK�hKhhhK�u��bhK�hK�hKhKhMqhh �*srlinux::network_instance::protocols::ospf���Qubj�  �j�  �u}�(hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0ja  u��bh(h
)��}�(h�external_preference�hh)��N}�(hKhK�hK/hhhK�u��bhK�hK�hK/hKhM�hh �*srlinux::network_instance::protocols::ospf���Qubj�  h�)��N}�(hj�  )��h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��bj�  �u}�(hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0jn  u��bj�  )��}�(h�j�  )��}�(h�h
)��}�(h�instance_instance_id_t�hh)��N}�(hKhK�hKhhhK�u��bhK�hK�hKhKhM�hh �*srlinux::network_instance::protocols::ospf���Qubj�  �j�  �u}�(hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0j�  u��bh(h
)��}�(h�instance_id�hh)��N}�(hKhK�hK(hhhK�u��bhK�hK�hK(hKhM�hh �*srlinux::network_instance::protocols::ospf���Qubj�  h�)��N}�(hj�  )��h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��bj�  �u}�(hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0j�  u��bj�  )��}�(h�j�  )��}�(h�h
)��}�(h�/srlinux::types::srl_nokia_ospf_types::ospf_ecmp�hh)��N}�(hKhK�hK4hhhK�u��bhK�hK�hK4hKhM�hh �*srlinux::network_instance::protocols::ospf���Qubj�  �j�  �u}�(hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0j�  u��bh(h
)��}�(h�max_ecmp_paths�hh)��N}�(hK6hK�hKDhhhK�u��bhK�hK�hKDhK6hMhh �*srlinux::network_instance::protocols::ospf���Qubj�  h�)��N}�(hj�  )��h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hMh0h2)��N}�(hhhK�u��bu��bj�  �u}�(hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0j�  u��bj�  )��}�(h�j�  )��}�(h�h
)��}�(h�&srlinux::types::srl_nokia_common::name�hh)��N}�(hKhK�hK+hhhK�u��bhK�hK�hK+hKhM3hh �*srlinux::network_instance::protocols::ospf���Qubj�  �j�  �u}�(hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0j�  u��bh(h
)��}�(h�name�hh)��N}�(hK,hK�hK0hhhK�u��bhK�hK�hK0hK,hM<hh �*srlinux::network_instance::protocols::ospf���Qubj�  Nj�  �u}�(hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0j�  u��bj�  )��}�(h�j�  )��}�(h�h
)��}�(h�instance_preference_t�hh)��N}�(hKhK�hKhhhK�u��bhK�hK�hKhKhMVhh �*srlinux::network_instance::protocols::ospf���Qubj�  �j�  �u}�(hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0j�  u��bh(h
)��}�(h�
preference�hh)��N}�(hKhK�hK&hhhK�u��bhK�hK�hK&hKhMbhh �*srlinux::network_instance::protocols::ospf���Qubj�  h�)��N}�(hj�  )��h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hMeh0h2)��N}�(hhhK�u��bu��bj�  �u}�(hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0j  u��bj�  )��}�(h�j�  )��}�(h�h
)��}�(h�instance_reference_bandwidth_t�hh)��N}�(hKhK�hK#hhhK�u��bhK�hK�hK#hKhM�hh �*srlinux::network_instance::protocols::ospf���Qubj�  �j�  �u}�(hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0j#  u��bh(h
)��}�(h�reference_bandwidth�hh)��N}�(hK%hK�hK8hhhK�u��bhK�hK�hK8hK%hM�hh �*srlinux::network_instance::protocols::ospf���Qubj�  h�)��N}�(hj�  )��h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��bj�  �u}�(hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0j0  u��bj�  )��}�(h�j�  )��}�(h�h
)��}�(h�,srlinux::types::ietf_yang_types::dotted_quad�hh)��N}�(hKhK�hK1hhhK�u��bhK�hK�hK1hKhM�hh �*srlinux::network_instance::protocols::ospf���Qubj�  �j�  �u}�(hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0jL  u��bh(h
)��}�(h�	router_id�hh)��N}�(hK3hK�hK<hhhK�u��bhK�hK�hK<hK3hM�hh �*srlinux::network_instance::protocols::ospf���Qubj�  h�)��N}�(hj�  )��h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��bj�  �u}�(hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0jY  u��bj�  )��}�(h�j�  )��}�(h�h
)��}�(h�string�hh)��N}�(hKhK�hKhhhK�u��bhK�hK�hKhKhM�hh �*srlinux::network_instance::protocols::ospf���Qubj�  �j�  �u}�(hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0ju  u��bh(h
)��}�(h�version�hh)��N}�(hKhK�hKhhhK�u��bhK�hK�hKhKhM�hh �*srlinux::network_instance::protocols::ospf���Qubj�  Nj�  �u}�(hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0j�  u��be�parents�]�h
)��}�(h�srlinux::Base�hh)��N}�(hKhKZhK&hhhKZu��bhKZhKZhK&hKhM�	hh �*srlinux::network_instance::protocols::ospf���Qubau}�(hh �*srlinux::network_instance::protocols::ospf���Qh.]�j  )��}�(j	  j�  hh �*srlinux::network_instance::protocols::ospf���Qh�j�  ubahMk	h0h2)��N}�(hhhKZu��bu��bh#�DefineRelation���)��}�(�annotation_expression�]��annotations�]��left�h
)��}�(h�Instance�hh)��N}�(hKhK�hK	hhhK�u��bhK�hK�hK	hKhMhh �*srlinux::network_instance::protocols::ospf���Qubh
)��}�(h�instance�hh)��N}�(hKHhK�hKPhhhK�u��bhK�hK�hKPhKHhMShh �*srlinux::network_instance::protocols::ospf���QubK K�����right�h
)��}�(h�*srlinux::network_instance::protocols::Ospf�hh)��N}�(hKhK�hKGhhhK�u��bhK�hK�hKGhKhMFhh �*srlinux::network_instance::protocols::ospf���Qubh
)��}�(h�parent_ospf�hh)��N}�(hK
hK�hKhhhK�u��bhK�hK�hKhK
hMhh �*srlinux::network_instance::protocols::ospf���QubKK����h��t
Relation to parent container
Peer relation: List of OSPF protocol instances associated with this
network-instance.
�u}�(hh �*srlinux::network_instance::protocols::ospf���Qh.]�(j  )��}�(j	  j�  hh �*srlinux::network_instance::protocols::ospf���Qh�j�  ubj  )��}�(j	  j�  hh �*srlinux::network_instance::protocols::ospf���Qh�j�  ubehMh0h2)��N}�(hhhK�u��bu��bh#�DefineIndex���)��}�(h�h
)��}�(h�Instance�hh)��N}�(hKhK�hKhhhK�u��bhK�hK�hKhKhM�hh �*srlinux::network_instance::protocols::ospf���Qubj�  ]�(�name��parent_ospf�eu}�(hh �*srlinux::network_instance::protocols::ospf���Qh.]�(j  )��}�(j	  j�  hh �*srlinux::network_instance::protocols::ospf���Qh�j�  ubh�AttributeReferenceAnchor���)��}�(j	  h)��N}�(hKhK�hKhhhK�u��bhh �*srlinux::network_instance::protocols::ospf���Qh�j�  �	attribute�j�  ubj�  )��}�(j	  h)��N}�(hKhK�hK!hhhK�u��bhh �*srlinux::network_instance::protocols::ospf���Qh�j�  j  j�  ubehM�h0h2)��N}�(hhhK�u��bu��bh#�DefineImplement���)��}�(�entity�h
)��}�(h�Instance�hh)��N}�(hKhK�hKhhhK�u��bhK�hK�hKhKhMhh �*srlinux::network_instance::protocols::ospf���Qub�entity_location�j  j�  ]�h
)��}�(h�setupInstanceYangContainer�hh)��N}�(hKhK�hK4hhhK�u��bhK�hK�hK4hKhM,hh �*srlinux::network_instance::protocols::ospf���Quba�select�h�)��N}�(h�h�]�hNh.]�hNh0h2)��N}�(hhhK�u��bu��b�inherit��h�Nu}�(hh �*srlinux::network_instance::protocols::ospf���Qh.]�(j  )��}�(j	  j  hh �*srlinux::network_instance::protocols::ospf���Qh�j  ubj  )��}�(j	  j  hh �*srlinux::network_instance::protocols::ospf���Qh�j  ubehM�h0j)  u��bh#�DefineImplementation���)��}�(h(�setupInstanceYangContainer�h~�Fsrlinux::network_instance::protocols::ospf::setupInstanceYangContainer�h�j�  �Implementation���)��}�(h(j?  h�inmanta.ast.blocks��
BasicBlock���)��}�(�_BasicBlock__stmts�]�(h��SetAttribute���)��N}�(�instance�h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhK�hK	hhhK�u��bhK�hK�hK	hKhM8hh �*srlinux::network_instance::protocols::ospf���Qubh(jU  h�jU  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0jV  u��b�attribute_name��device�hh��AttributeReference���)��N}�(j  h
)��}�(h�device�hh)��N}�(hK$hK�hK*hhhK�u��bhK�hK�hK*hK$hMYhh �*srlinux::network_instance::protocols::ospf���QubjP  jc  )��N}�(j  h
)��}�(h�parent_ospf�hh)��N}�(hKhK�hK#hhhK�u��bhK�hK�hK#hKhMRhh �*srlinux::network_instance::protocols::ospf���QubjP  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhK�hKhhhK�u��bhK�hK�hKhKhMFhh �*srlinux::network_instance::protocols::ospf���Qubh(j|  h�j|  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0j}  u��bh�h
)��}�(h�self.parent_ospf�hh)��N}�(hKhK�hK#hhhK�u��bhK�hK�hK#hKhMFhh �*srlinux::network_instance::protocols::ospf���Qubh(j�  h�j�  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hMFh0h2)��N}�(hhhK�u��bu��bh�h
)��}�(h�self.parent_ospf.device�hh)��N}�(hKhK�hK*hhhK�u��bhK�hK�hK*hKhMFhh �*srlinux::network_instance::protocols::ospf���Qubh(j�  h�j�  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hMRh0h2)��N}�(hhhK�u��bu��b�	list_only���_assignment_promise�h��StaticEagerPromise���)��}�(jP  jQ  j  ja  �	statement�jN  ub�lhs�jQ  �rhs�jd  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM@h0h2)��N}�(hhhK�u��bu��bjM  )��N}�(jP  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhK�hK	hhhK�u��bhK�hK�hK	hKhMwhh �*srlinux::network_instance::protocols::ospf���Qubh(j�  h�j�  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0j�  u��bj`  �yang_container�h� inmanta.ast.statements.generator��Constructor���)��N}�(�
class_type�h
)��}�(h�yang::ListContainer�hh)��N}�(hKhK�hK.hhhK�u��bhK�hK�hK.hKhM�hh �*srlinux::network_instance::protocols::ospf���Qub�_Constructor__attributes�}�(�module�h�)��N}�(h�srl_nokia-ospf�h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��b�name�h�)��N}�(h�instance�h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��b�parent�jc  )��N}�(j  h
)��}�(h�yang_container�hh)��N}�(hK!hK�hK/hhhK�u��bhK�hK�hK/hK!hMhh �*srlinux::network_instance::protocols::ospf���QubjP  jc  )��N}�(j  h
)��}�(h�parent_ospf�hh)��N}�(hKhK�hK hhhK�u��bhK�hK�hK hKhM�hh �*srlinux::network_instance::protocols::ospf���QubjP  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhK�hKhhhK�u��bhK�hK�hKhKhM�hh �*srlinux::network_instance::protocols::ospf���Qubh(j  h�j  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0j  u��bh�h
)��}�(h�self.parent_ospf�hh)��N}�(hKhK�hK hhhK�u��bhK�hK�hK hKhM�hh �*srlinux::network_instance::protocols::ospf���Qubh(j  h�j  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��bh�h
)��}�(h�self.parent_ospf.yang_container�hh)��N}�(hKhK�hK/hhhK�u��bhK�hK�hK/hKhM�hh �*srlinux::network_instance::protocols::ospf���Qubh(j(  h�j(  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��b�subs�h��
CreateDict���)��N}�(h�]�(�address-family�jc  )��N}�(j  h
)��}�(h�address_family�hh)��N}�(hK$hK�hK2hhhK�u��bhK�hK�hK2hK$hMHhh �*srlinux::network_instance::protocols::ospf���QubjP  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhK�hK#hhhK�u��bhK�hK�hK#hKhM9hh �*srlinux::network_instance::protocols::ospf���Qubh(jK  h�jK  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0jL  u��bh�h
)��}�(h�self.address_family�hh)��N}�(hKhK�hK2hhhK�u��bhK�hK�hK2hKhM9hh �*srlinux::network_instance::protocols::ospf���Qubh(jX  h�jX  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM9h0h2)��N}�(hhhK�u��bu��b���admin-state�jc  )��N}�(j  h
)��}�(h�admin_state�hh)��N}�(hK!hK�hK,hhhK�u��bhK�hK�hK,hK!hMuhh �*srlinux::network_instance::protocols::ospf���QubjP  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhK�hK hhhK�u��bhK�hK�hK hKhMihh �*srlinux::network_instance::protocols::ospf���Qubh(jv  h�jv  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0jw  u��bh�h
)��}�(h�self.admin_state�hh)��N}�(hKhK�hK,hhhK�u��bhK�hK�hK,hKhMihh �*srlinux::network_instance::protocols::ospf���Qubh(j�  h�j�  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hMih0h2)��N}�(hhhK�u��bu��b���advertise-router-capability�jc  )��N}�(j  h
)��}�(h�advertise_router_capability�hh)��N}�(hK1hK�hKLhhhK�u��bhK�hK�hKLhK1hM�hh �*srlinux::network_instance::protocols::ospf���QubjP  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hK,hK�hK0hhhK�u��bhK�hK�hK0hK,hM�hh �*srlinux::network_instance::protocols::ospf���Qubh(j�  h�j�  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0j�  u��bh�h
)��}�(h� self.advertise_router_capability�hh)��N}�(hK,hK�hKLhhhK�u��bhK�hK�hKLhK,hM�hh �*srlinux::network_instance::protocols::ospf���Qubh(j�  h�j�  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��b���export-policy�jc  )��N}�(j  h
)��}�(h�export_policy�hh)��N}�(hK#hK�hK0hhhK�u��bhK�hK�hK0hK#hM�hh �*srlinux::network_instance::protocols::ospf���QubjP  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhK�hK"hhhK�u��bhK�hK�hK"hKhM�hh �*srlinux::network_instance::protocols::ospf���Qubh(j�  h�j�  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0j�  u��bh�h
)��}�(h�self.export_policy�hh)��N}�(hKhK�hK0hhhK�u��bhK�hK�hK0hKhM�hh �*srlinux::network_instance::protocols::ospf���Qubh(j�  h�j�  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��b���external-preference�jc  )��N}�(j  h
)��}�(h�external_preference�hh)��N}�(hK)hK�hK<hhhK�u��bhK�hK�hK<hK)hM0hh �*srlinux::network_instance::protocols::ospf���QubjP  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hK$hK�hK(hhhK�u��bhK�hK�hK(hK$hMhh �*srlinux::network_instance::protocols::ospf���Qubh(j�  h�j�  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0j�  u��bh�h
)��}�(h�self.external_preference�hh)��N}�(hK$hK�hK<hhhK�u��bhK�hK�hK<hK$hMhh �*srlinux::network_instance::protocols::ospf���Qubh(j  h�j  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hMh0h2)��N}�(hhhK�u��bu��b���instance-id�jc  )��N}�(j  h
)��}�(h�instance_id�hh)��N}�(hK!hK�hK,hhhK�u��bhK�hK�hK,hK!hM]hh �*srlinux::network_instance::protocols::ospf���QubjP  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhK�hK hhhK�u��bhK�hK�hK hKhMQhh �*srlinux::network_instance::protocols::ospf���Qubh(j"  h�j"  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0j#  u��bh�h
)��}�(h�self.instance_id�hh)��N}�(hKhK�hK,hhhK�u��bhK�hK�hK,hKhMQhh �*srlinux::network_instance::protocols::ospf���Qubh(j/  h�j/  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hMQh0h2)��N}�(hhhK�u��bu��b���max-ecmp-paths�jc  )��N}�(j  h
)��}�(h�max_ecmp_paths�hh)��N}�(hK$hK�hK2hhhK�u��bhK�hK�hK2hK$hM�hh �*srlinux::network_instance::protocols::ospf���QubjP  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhK�hK#hhhK�u��bhK�hK�hK#hKhM�hh �*srlinux::network_instance::protocols::ospf���Qubh(jM  h�jM  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0jN  u��bh�h
)��}�(h�self.max_ecmp_paths�hh)��N}�(hKhK�hK2hhhK�u��bhK�hK�hK2hKhM�hh �*srlinux::network_instance::protocols::ospf���Qubh(jZ  h�jZ  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��b���name�jc  )��N}�(j  h
)��}�(h�name�hh)��N}�(hKhK�hKhhhK�u��bhK�hK�hKhKhM�hh �*srlinux::network_instance::protocols::ospf���QubjP  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhK�hKhhhK�u��bhK�hK�hKhKhM�hh �*srlinux::network_instance::protocols::ospf���Qubh(jx  h�jx  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0jy  u��bh�h
)��}�(h�	self.name�hh)��N}�(hKhK�hKhhhK�u��bhK�hK�hKhKhM�hh �*srlinux::network_instance::protocols::ospf���Qubh(j�  h�j�  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��b���
preference�jc  )��N}�(j  h
)��}�(h�
preference�hh)��N}�(hK hK�hK*hhhK�u��bhK�hK�hK*hK hM�hh �*srlinux::network_instance::protocols::ospf���QubjP  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhK�hKhhhK�u��bhK�hK�hKhKhM�hh �*srlinux::network_instance::protocols::ospf���Qubh(j�  h�j�  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0j�  u��bh�h
)��}�(h�self.preference�hh)��N}�(hKhK�hK*hhhK�u��bhK�hK�hK*hKhM�hh �*srlinux::network_instance::protocols::ospf���Qubh(j�  h�j�  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��b���reference-bandwidth�jc  )��N}�(j  h
)��}�(h�reference_bandwidth�hh)��N}�(hK)hK�hK<hhhK�u��bhK�hK�hK<hK)hMhh �*srlinux::network_instance::protocols::ospf���QubjP  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hK$hK�hK(hhhK�u��bhK�hK�hK(hK$hMhh �*srlinux::network_instance::protocols::ospf���Qubh(j�  h�j�  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0j�  u��bh�h
)��}�(h�self.reference_bandwidth�hh)��N}�(hK$hK�hK<hhhK�u��bhK�hK�hK<hK$hMhh �*srlinux::network_instance::protocols::ospf���Qubh(j�  h�j�  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hMh0h2)��N}�(hhhK�u��bu��b���	router-id�jc  )��N}�(j  h
)��}�(h�	router_id�hh)��N}�(hKhK�hK(hhhK�u��bhK�hK�hK(hKhM@hh �*srlinux::network_instance::protocols::ospf���QubjP  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhK�hKhhhK�u��bhK�hK�hKhKhM6hh �*srlinux::network_instance::protocols::ospf���Qubh(j�  h�j�  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0j�  u��bh�h
)��}�(h�self.router_id�hh)��N}�(hKhK�hK(hhhK�u��bhK�hK�hK(hKhM6hh �*srlinux::network_instance::protocols::ospf���Qubh(j  h�j  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM6h0h2)��N}�(hhhK�u��bu��b���version�jc  )��N}�(j  h
)��}�(h�version�hh)��N}�(hKhK�hK$hhhK�u��bhK�hK�hK$hKhMehh �*srlinux::network_instance::protocols::ospf���QubjP  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhK�hKhhhK�u��bhK�hK�hKhKhM]hh �*srlinux::network_instance::protocols::ospf���Qubh(j$  h�j$  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0j%  u��bh�h
)��}�(h�self.version�hh)��N}�(hKhK�hK$hhhK�u��bhK�hK�hK$hKhM]hh �*srlinux::network_instance::protocols::ospf���Qubh(j1  h�j1  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM]h0h2)��N}�(hhhK�u��bu��b��eh�]�(j=  jh  j�  j�  j�  j  j?  jj  j�  j�  j�  j  eh�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hMh0h2)��N}�(hhhK�u��bu��b�key_attribute�h�)��N}�(h�]�h�)��N}�(h�name�h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��bah�jL  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��b�	is_actual�h�)��N}�(h�h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��b�requires�h�)��N}�(h�]�(jc  )��N}�(j  h
)��}�(h�yang_container�hh)��N}�(hK$hK�hK2hhhK�u��bhK�hK�hK2hK$hM�hh �*srlinux::network_instance::protocols::ospf���QubjP  jc  )��N}�(j  h
)��}�(h�parent_ospf�hh)��N}�(hKhK�hK#hhhK�u��bhK�hK�hK#hKhM�hh �*srlinux::network_instance::protocols::ospf���QubjP  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhK�hKhhhK�u��bhK�hK�hKhKhM�hh �*srlinux::network_instance::protocols::ospf���Qubh(j�  h�j�  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0j�  u��bh�h
)��}�(h�self.parent_ospf�hh)��N}�(hKhK�hK#hhhK�u��bhK�hK�hK#hKhM�hh �*srlinux::network_instance::protocols::ospf���Qubh(j�  h�j�  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��bh�h
)��}�(h�self.parent_ospf.yang_container�hh)��N}�(hKhK�hK2hhhK�u��bhK�hK�hK2hKhM�hh �*srlinux::network_instance::protocols::ospf���Qubh(j�  h�j�  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��bjc  )��N}�(j  h
)��}�(h�requires�hh)��N}�(hK9hK�hKAhhhK�u��bhK�hK�hKAhK9hM�hh �*srlinux::network_instance::protocols::ospf���QubjP  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hK4hK�hK8hhhK�u��bhK�hK�hK8hK4hM�hh �*srlinux::network_instance::protocols::ospf���Qubh(j�  h�j�  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0j�  u��bh�h
)��}�(h�self.requires�hh)��N}�(hK4hK�hKAhhhK�u��bhK�hK�hKAhK4hM�hh �*srlinux::network_instance::protocols::ospf���Qubh(j�  h�j�  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��beh�jn  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��b�provides�jc  )��N}�(j  h
)��}�(h�provides�hh)��N}�(hKhK�hKhhhK�u��bhK�hK�hKhKhMhh �*srlinux::network_instance::protocols::ospf���QubjP  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhK�hKhhhK�u��bhK�hK�hKhKhMhh �*srlinux::network_instance::protocols::ospf���Qubh(j�  h�j�  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0j�  u��bh�h
)��}�(h�self.provides�hh)��N}�(hKhK�hKhhhK�u��bhK�hK�hKhKhMhh �*srlinux::network_instance::protocols::ospf���Qubh(j�  h�j�  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hMh0h2)��N}�(hhhK�u��bu��b�purged�jc  )��N}�(j  h
)��}�(h�purged�hh)��N}�(hKhK�hKhhhK�u��bhK�hK�hKhKhM'hh �*srlinux::network_instance::protocols::ospf���QubjP  h�)��N}�(h�h
)��}�(h�self�hh)��N}�(hKhK�hKhhhK�u��bhK�hK�hKhKhM hh �*srlinux::network_instance::protocols::ospf���Qubh(j	  h�j	  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hNh0j	  u��bh�h
)��}�(h�self.purged�hh)��N}�(hKhK�hKhhhK�u��bhK�hK�hKhKhM hh �*srlinux::network_instance::protocols::ospf���Qubh(j)	  h�j)	  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�hM h0h2)��N}�(hhhK�u��bu��bu�&_Constructor__wrapped_kwarg_attributes�]�hh2)��N}�(hhhK�u��bh�N�required_kwargs�]��_direct_attributes�}��_indirect_attributes�}�h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�(j  )��}�(j	  j�  hh �*srlinux::network_instance::protocols::ospf���Qh�j�  ubj�  )��}�(j	  h)��N}�(hK	hK�hKhhhK�u��bhh �*srlinux::network_instance::protocols::ospf���Qh�j�  j  j�  ubj�  )��}�(j	  h)��N}�(hK	hK�hKhhhK�u��bhh �*srlinux::network_instance::protocols::ospf���Qh�j�  j  j�  ubj�  )��}�(j	  h)��N}�(hK	hK�hKhhhK�u��bhh �*srlinux::network_instance::protocols::ospf���Qh�j�  j  j�  ubj�  )��}�(j	  h)��N}�(hK	hK�hKhhhK�u��bhh �*srlinux::network_instance::protocols::ospf���Qh�j�  j  j6  ubj�  )��}�(j	  h)��N}�(hK	hK�hKhhhK�u��bhh �*srlinux::network_instance::protocols::ospf���Qh�j�  j  jI  ubj�  )��}�(j	  h)��N}�(hK	hK�hKhhhK�u��bhh �*srlinux::network_instance::protocols::ospf���Qh�j�  j  j`  ubj�  )��}�(j	  h)��N}�(hK	hK�hKhhhK�u��bhh �*srlinux::network_instance::protocols::ospf���Qh�j�  j  jk  ubj�  )��}�(j	  h)��N}�(hK	hK�hKhhhK�u��bhh �*srlinux::network_instance::protocols::ospf���Qh�j�  j  j�  ubj�  )��}�(j	  h)��N}�(hK	hK�hKhhhK�u��bhh �*srlinux::network_instance::protocols::ospf���Qh�j�  j  j	  ubehNh0Nu��bj�  �j�  j�  )��}�(jP  j�  j  j�  j�  j�  ubj�  j�  j�  j�  h�]�hh �*srlinux::network_instance::protocols::ospf���Qh.]�(jF	  jJ	  jQ	  jX	  j_	  jf	  jm	  jt	  j{	  j�	  ehM�h0h2)��N}�(hhhK�u��bu��be�_BasicBlock__definition_stmts�]��_BasicBlock__variables�]�hh �*srlinux::network_instance::protocols::ospf���Q�context�Nubhh �*srlinux::network_instance::protocols::ospf���Q�target_type��Instance�h�Nu}�h0h)��N}�(hKhK�hK*hhhK�u��bs��bh�N�block�jH  j  h
)��}�(hj�	  hh)��N}�(hK/hK�hK7hhhK�u��bhK�hK�hK7hK/hMmhh �*srlinux::network_instance::protocols::ospf���Qubu}�(hh �*srlinux::network_instance::protocols::ospf���Qh.]�(j  )��}�(j	  j�	  hh �*srlinux::network_instance::protocols::ospf���Qh�j�	  ubjF	  jJ	  jQ	  jX	  j_	  jf	  jm	  jt	  j{	  j�	  ehNh0j�	  u��beub.