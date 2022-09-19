���      �inmanta.parser.cache��CacheEnvelope���)��}�(�	timestamp�GA���S��
statements�]�(�inmanta.ast��LocatableString���)��}�(�value��m
    :copyright: 2022 Inmanta
    :contact: code@inmanta.com
    :author: Inmanta
    :license: Inmanta EULA
��location�h�Range���)��N}�(�
start_char�K�end_lnr�K�end_char�K�file��|/home/dariush/.virtualenvs/srlinux/lib/python3.9/site-packages/inmanta_plugins/srlinux/model/types/srl_nokia_common/_init.cf��lnr�Ku��bhK�elnr�K�end�K�start�K�lexpos�Ks�	namespace��	Namespace�� srlinux::types::srl_nokia_common���Qub�inmanta.ast.statements.define��DefineImport���)��}�(�name��srlinux��toname�h)u}�(hh � srlinux::types::srl_nokia_common���Q�anchors�]�hKt�	_location�h�Location���)��N}�(hhhKu��bu��bh%)��}�(h(�srlinux::types�h*h9u}�(hh � srlinux::types::srl_nokia_common���Qh.]�hK�h0h2)��N}�(hhhKu��bu��bh%)��}�(h(� srlinux::types::srl_nokia_common�h*hDu}�(hh � srlinux::types::srl_nokia_common���Qh.]�hK�h0h2)��N}�(hhhK	u��bu��bh#�DefineTypeConstraint���)��}�(h(�admin_state��fullName��-srlinux::types::srl_nokia_common::admin_state��type��inmanta.ast.type��ConstraintType���)��}�(�basetype�N�_constraint�Nh(hQhh � srlinux::types::srl_nokia_common���Q�comment�N�
expression�Nu}�h0h)��N}�(hK	hKhKhhhKu��bs��bh^X  
general admin-state option.
Source type expression:

    srl_nokia-common.yang:
    L509:    type enumeration {
    L510:      enum enable {
    L511:        value 1;
    L512:      }
    L513:      enum disable {
    L514:        value 2;
    L515:      }
    L516:    }

�hZh
)��}�(h�string�hh)��N}�(hKhKhKhhhKu��bhKhKhKhKhK�hh � srlinux::types::srl_nokia_common���Qub�!_DefineTypeConstraint__expression��!inmanta.ast.constraint.expression��In���)��N}�(�_Operator__number_arguments�K�
_arguments�]�(�inmanta.ast.variables��	Reference���)��N}�(�locatable_name�h
)��}�(h�self�hh)��N}�(hK(hKhK,hhhKu��bhKhKhK,hK(hK�hh � srlinux::types::srl_nokia_common���Qubh(h�	full_name�h�_own_eager_promises�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0h�u��b�inmanta.ast.statements.assign��
CreateList���)��N}�(�items�]�(�inmanta.ast.statements��Literal���)��N}�(h�enable�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hK�h0h2)��N}�(hhhKu��bu��bh�)��N}�(h�disable�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hK�h0h2)��N}�(hhhKu��bu��be�children�h�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hK�h0h2)��N}�(hhhKu��bu��be�_Operator__name��in�h�hvh�]�hh � srlinux::types::srl_nokia_common���Qh.]�hK�h0h2)��N}�(hhhKu��bu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�h�TypeReferenceAnchor���)��}�(�range�hihh � srlinux::types::srl_nokia_common���QhThfubahK�h0h2)��N}�(hhhKu��bu��bhN)��}�(h(�alphanumeric�hR�.srlinux::types::srl_nokia_common::alphanumeric�hThW)��}�(hZNh[Nh(h�hh � srlinux::types::srl_nokia_common���Qh^Nh_Nu}�h0h)��N}�(hK	hKhKhhhKu��bs��bh^X  
A simple, one-line string that does not contain any control characters
Source type expression:

    srl_nokia-common.yang:
    L881:    type string {
    L882:      pattern "[A-Za-z0-9!@#$%^&()|+=`~.,'/_:;?-][A-Za-z0-9 !@#$%^&()|+=`~.,'/_:;?-]*";
    L883:    }

�hZh
)��}�(h�string�hh)��N}�(hKhKhKhhhKu��bhKhKhKhKhM?hh � srlinux::types::srl_nokia_common���Qubhnho�Equals���)��N}�(�_Operator__number_arguments�Khu]�(�inmanta.ast.statements.call��FunctionCall���)��N}�(h(h
)��}�(h�std::validate_type�hh)��N}�(hK)hKhK;hhhKu��bhKhKhK;hK)hMNhh � srlinux::types::srl_nokia_common���Qub�	arguments�]�(h�)��N}�(h�pydantic.constr�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM\h0h2)��N}�(hhhKu��bu��bhy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKOhKhKShhhKu��bhKhKhKShKOhMshh � srlinux::types::srl_nokia_common���Qubh(j  h�j  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j	  u��bh��
CreateDict���)��N}�(h�]��regex�h�)��N}�(h�>^(?:[!#-\)\+-;=\?-Z\^-z\|~][ !#-\)\+-;=\?-Z\^-z\|~]*)$(?!\n\Z)�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMh0h2)��N}�(hhhKu��bu��b��ah�]�j  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMuh0h2)��N}�(hhhKu��bu��be�wrapped_kwargs�]�hh2)��N}�(hhhKu��b�kwargs�}��function�Nh�]�(h�j  j  eh�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�h�hh � srlinux::types::srl_nokia_common���QhTh�ubahNh0Nu��bh�)��N}�(h�h�]�hNh.]�hNh0Nu��be�_Operator__name��equality�h�h�h�]�hNh.]�j;  ahNh0Nu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�(h�)��}�(h�h�hh � srlinux::types::srl_nokia_common���QhTh�ubj;  ehM)h0h2)��N}�(hhhKu��bu��bhN)��}�(h(�	as_number�hR�+srlinux::types::srl_nokia_common::as_number�hThW)��}�(hZNh[Nh(jX  hh � srlinux::types::srl_nokia_common���Qh^Nh_Nu}�h0h)��N}�(hK	hK(hKhhhK(u��bs��bh^X�  
The as-number type represents autonomous system numbers
which identify an Autonomous System (AS).  An AS is a set
of routers under a single technical administration, using
an interior gateway protocol and common metrics to route
packets within the AS, and using an exterior gateway
protocol to route packets to other ASes.  IANA maintains
the AS number space and has delegated large parts to the
regional registries.

Autonomous system numbers were originally limited to 16
bits.  BGP extensions have enlarged the autonomous system
number space to 32 bits.  This type therefore uses an uint32
base type without a range restriction in order to support
a larger autonomous system number space.

In the value set and its semantics, this type is equivalent
to the InetAutonomousSystemNumber textual convention of
the SMIv2.
Source type expression:

    srl_nokia-common.yang:
    L49:    type uint32 {
    L50:      range "1..4294967295";
    L51:    }

�hZh
)��}�(h�srlinux::types::uint32�hh)��N}�(hKhK(hK,hhhK(u��bhK(hK(hK,hKhMhh � srlinux::types::srl_nokia_common���Qubhnho�And���)��N}�(�_Operator__number_arguments�Khu]�(ho�GreaterThanOrEqual���)��N}�(�_Operator__number_arguments�Khu]�(hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hK6hK(hK:hhhK(u��bhK(hK(hK:hK6hMhh � srlinux::types::srl_nokia_common���Qubh(j|  h�j|  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j}  u��bh�)��N}�(hKh�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMh0h2)��N}�(hhhK(u��bu��be�_Operator__name��greater than or equal�h�jw  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMh0h2)��N}�(hhhK(u��bu��bho�LessThanOrEqual���)��N}�(�_Operator__number_arguments�Khu]�(hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKDhK(hKHhhhK(u��bhK(hK(hKHhKDhM'hh � srlinux::types::srl_nokia_common���Qubh(j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j�  u��bh�)��N}�(h����� h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM+h0h2)��N}�(hhhK(u��bu��be�_Operator__name��less than or equal�h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM(h0h2)��N}�(hhhK(u��bu��be�_Operator__name��and�h�jq  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMh0h2)��N}�(hhhK(u��bu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�jg  hh � srlinux::types::srl_nokia_common���QhTjd  ubahM�h0h2)��N}�(hhhK(u��bu��bhN)��}�(h(�description�hR�-srlinux::types::srl_nokia_common::description�hThW)��}�(hZNh[Nh(j�  hh � srlinux::types::srl_nokia_common���Qh^Nh_Nu}�h0h)��N}�(hK	hKEhKhhhKEu��bs��bh^��
A user provided description string
Source type expression:

    srl_nokia-common.yang:
    L889:    type alphanumeric {
    L890:      length "1..255";
    L891:    }

�hZh
)��}�(h�alphanumeric�hh)��N}�(hKhKEhK$hhhKEu��bhKEhKEhK$hKhMhh � srlinux::types::srl_nokia_common���Qubhnjm  )��N}�(jp  Khu]�(js  )��N}�(jv  Khu]�(h�)��N}�(h(h
)��}�(h�std::length�hh)��N}�(hK.hKEhK9hhhKEu��bhKEhKEhK9hK.hM)hh � srlinux::types::srl_nokia_common���Qubh�]�hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hK:hKEhK>hhhKEu��bhKEhKEhK>hK:hM4hh � srlinux::types::srl_nokia_common���Qubh(j  h�j  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j  u��baj.  ]�hh2)��N}�(hhhKEu��bj3  }�j5  Nh�]�j  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj�  ubahNh0Nu��bh�)��N}�(hKh�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM9h0h2)��N}�(hhhKEu��bu��bej�  j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�j  ahM6h0h2)��N}�(hhhKEu��bu��bj�  )��N}�(j�  Khu]�(h�)��N}�(h(h
)��}�(h�std::length�hh)��N}�(hKIhKEhKThhhKEu��bhKEhKEhKThKIhMDhh � srlinux::types::srl_nokia_common���Qubh�]�hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKUhKEhKYhhhKEu��bhKEhKEhKYhKUhMOhh � srlinux::types::srl_nokia_common���Qubh(jC  h�jC  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0jD  u��baj.  ]�hh2)��N}�(hhhKEu��bj3  }�j5  Nh�]�j?  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j9  hh � srlinux::types::srl_nokia_common���QhTj6  ubahNh0Nu��bh�)��N}�(hK�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMTh0h2)��N}�(hhhKEu��bu��bej�  j�  h�j3  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�jX  ahMQh0h2)��N}�(hhhKEu��bu��bej�  j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�(j  jX  ehM;h0h2)��N}�(hhhKEu��bu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�(h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj�  ubj  jX  ehM�h0h2)��N}�(hhhKEu��bu��bhN)��}�(h(�domain_name�hR�-srlinux::types::srl_nokia_common::domain_name�hThW)��}�(hZNh[Nh(j�  hh � srlinux::types::srl_nokia_common���Qh^Nh_Nu}�h0h)��N}�(hK	hKQhKhhhKQu��bs��bh^X�  
The domain-name type represents a DNS domain name.  The
name SHOULD be fully qualified whenever possible.

Internet domain names are only loosely specified.  Section
3.5 of RFC 1034 recommends a syntax (modified in Section
2.1 of RFC 1123).  The pattern above is intended to allow
for current practice in domain name use, and some possible
future expansion.  It is designed to hold various types of
domain names, including names used for A or AAAA records
(host names) and other records, such as SRV records.  Note
that Internet host names have a stricter syntax (described
in RFC 952) than the DNS recommendations in RFCs 1034 and
1123, and that systems that want to store host names in
schema nodes using the domain-name type are recommended to
adhere to this stricter standard to ensure interoperability.

The encoding of DNS names in the DNS protocol is limited
to 255 characters.  Since the encoding consists of labels
prefixed by a length bytes and there is a trailing NULL
byte, only 253 characters can appear in the textual dotted
notation.

The description clause of schema nodes using the domain-name
type MUST describe when and how these names are resolved to
IP addresses.  Note that the resolution of a domain-name value
may require to query multiple DNS records (e.g., A for IPv4
and AAAA for IPv6).  The order of the resolution process and
which DNS record takes precedence can either be defined
explicitly or may depend on the configuration of the
resolver.

Domain-name values use the US-ASCII encoding.  Their canonical
format uses lowercase US-ASCII characters.  Internationalized
domain names MUST be A-labels as per RFC 5890.
Source type expression:

    srl_nokia-common.yang:
    L363:    type string {
    L364:      length "1..253";
    L365:      pattern '((([a-zA-Z0-9_]([a-zA-Z0-9\-_]){0,61})?[a-zA-Z0-9]\.)*'
    L366:            + '([a-zA-Z0-9_]([a-zA-Z0-9\-_]){0,61})?[a-zA-Z0-9]\.?)'
    L367:            + '|\.';
    L368:    }

�hZh
)��}�(h�string�hh)��N}�(hKhKQhKhhhKQu��bhKQhKQhKhKhM(	hh � srlinux::types::srl_nokia_common���Qubhnjm  )��N}�(jp  Khu]�(jm  )��N}�(jp  Khu]�(js  )��N}�(jv  Khu]�(h�)��N}�(h(h
)��}�(h�std::length�hh)��N}�(hK(hKQhK3hhhKQu��bhKQhKQhK3hK(hM7	hh � srlinux::types::srl_nokia_common���Qubh�]�hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hK4hKQhK8hhhKQu��bhKQhKQhK8hK4hMB	hh � srlinux::types::srl_nokia_common���Qubh(j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j�  u��baj.  ]�hh2)��N}�(hhhKQu��bj3  }�j5  Nh�]�j�  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj�  ubahNh0Nu��bh�)��N}�(hKh�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMG	h0h2)��N}�(hhhKQu��bu��bej�  j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�j�  ahMD	h0h2)��N}�(hhhKQu��bu��bj�  )��N}�(j�  Khu]�(h�)��N}�(h(h
)��}�(h�std::length�hh)��N}�(hKChKQhKNhhhKQu��bhKQhKQhKNhKChMR	hh � srlinux::types::srl_nokia_common���Qubh�]�hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKOhKQhKShhhKQu��bhKQhKQhKShKOhM]	hh � srlinux::types::srl_nokia_common���Qubh(j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j�  u��baj.  ]�hh2)��N}�(hhhKQu��bj3  }�j5  Nh�]�j�  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj�  ubahNh0Nu��bh�)��N}�(hK�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMb	h0h2)��N}�(hhhKQu��bu��bej�  j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�j  ahM_	h0h2)��N}�(hhhKQu��bu��bej�  j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�(j�  j  ehMI	h0h2)��N}�(hhhKQu��bu��bh�)��N}�(h(h
)��}�(h�std::validate_type�hh)��N}�(hK`hKQhKrhhhKQu��bhKQhKQhKrhK`hMo	hh � srlinux::types::srl_nokia_common���Qubh�]�(h�)��N}�(h�pydantic.constr�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM}	h0h2)��N}�(hhhKQu��bu��bhy)��N}�(h|h
)��}�(h�self�hh)��N}�(hK�hKQhK�hhhKQu��bhKQhKQhK�hK�hM�	hh � srlinux::types::srl_nokia_common���Qubh(j=  h�j=  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j>  u��bj  )��N}�(h�]��regex�h�)��N}�(h��^(?:(?:(?:(?:[0-9A-Z_a-z](?:[\-0-9A-Z_a-z]){0,61})?[0-9A-Za-z]\.)*(?:[0-9A-Z_a-z](?:[\-0-9A-Z_a-z]){0,61})?[0-9A-Za-z]\.?)|\.)$(?!\n\Z)�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�	h0h2)��N}�(hhhKQu��bu��b��ah�]�jL  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�	h0h2)��N}�(hhhKQu��bu��bej.  ]�hh2)��N}�(hhhKQu��bj3  }�j5  Nh�]�(j.  j9  jH  eh�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j(  hh � srlinux::types::srl_nokia_common���QhTj%  ubahNh0Nu��bej�  j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�(j�  j  jk  ehMf	h0h2)��N}�(hhhKQu��bu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�(h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj�  ubj�  j  jk  ehM	h0h2)��N}�(hhhKQu��bu��bhN)��}�(h(�dotted_quad�hR�-srlinux::types::srl_nokia_common::dotted_quad�hThW)��}�(hZNh[Nh(j�  hh � srlinux::types::srl_nokia_common���Qh^Nh_Nu}�h0h)��N}�(hK	hK�hKhhhK�u��bs��bh^X�  
An unsigned 32-bit number expressed in the dotted-quad
notation, i.e., four octets written as decimal numbers
and separated with the '.' (full stop) character.
Source type expression:

    srl_nokia-common.yang:
    L81:    type string {
    L82:      pattern '(([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.){3}'
    L83:            + '([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])';
    L84:    }

�hZh
)��}�(h�string�hh)��N}�(hKhK�hKhhhK�u��bhK�hK�hKhKhMhh � srlinux::types::srl_nokia_common���Qubhnh�)��N}�(h�Khu]�(h�)��N}�(h(h
)��}�(h�std::validate_type�hh)��N}�(hK(hK�hK:hhhK�u��bhK�hK�hK:hK(hMhh � srlinux::types::srl_nokia_common���Qubh�]�(h�)��N}�(h�pydantic.constr�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM"h0h2)��N}�(hhhK�u��bu��bhy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKNhK�hKRhhhK�u��bhK�hK�hKRhKNhM9hh � srlinux::types::srl_nokia_common���Qubh(j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j�  u��bj  )��N}�(h�]��regex�h�)��N}�(h�^(?:(?:(?:[0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.){3}(?:[0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5]))$(?!\n\Z)�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMEh0h2)��N}�(hhhK�u��bu��b��ah�]�j�  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM;h0h2)��N}�(hhhK�u��bu��bej.  ]�hh2)��N}�(hhhK�u��bj3  }�j5  Nh�]�(j�  j�  j�  eh�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj�  ubahNh0Nu��bh�)��N}�(h�h�]�hNh.]�hNh0Nu��bejE  jF  h�j�  h�]�hNh.]�j�  ahNh0Nu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�(h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj�  ubj�  ehM�h0h2)��N}�(hhhK�u��bu��bhN)��}�(h(�dscp�hR�&srlinux::types::srl_nokia_common::dscp�hThW)��}�(hZNh[Nh(j   hh � srlinux::types::srl_nokia_common���Qh^Nh_Nu}�h0h)��N}�(hK	hK�hKhhhK�u��bs��bh^��
A DiffServ Code Point represented numerically or by a PHB name.
Source type expression:

    srl_nokia-common.yang:
    L94:    type union {
    L95:      type dscp-value;
    L96:      type dscp-name;
    L97:    }

�hZh
)��}�(h�string�hh)��N}�(hKhK�hKhhhK�u��bhK�hK�hKhKhM�hh � srlinux::types::srl_nokia_common���Qubhnho�Or���)��N}�(�_Operator__number_arguments�Khu]�(jm  )��N}�(jp  Khu]�(h�)��N}�(h(h
)��}�(h�srlinux::is_int�hh)��N}�(hKhK�hKhhhK�u��bhK�hK�hKhKhM�hh � srlinux::types::srl_nokia_common���Qubh�]�hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKhK�hKhhhK�u��bhK�hK�hKhKhM�hh � srlinux::types::srl_nokia_common���Qubh(j,  h�j,  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j-  u��baj.  ]�hh2)��N}�(hhhK�u��bj3  }�j5  Nh�]�j(  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j"  hh � srlinux::types::srl_nokia_common���QhTj  ubahNh0Nu��bh�)��N}�(h(h
)��}�(h�srlinux::validate_type�hh)��N}�(hKhK�hK5hhhK�u��bhK�hK�hK5hKhM�hh � srlinux::types::srl_nokia_common���Qubh�]�(h�)��N}�(h(h
)��}�(h�int�hh)��N}�(hK6hK�hK9hhhK�u��bhK�hK�hK9hK6hM�hh � srlinux::types::srl_nokia_common���Qubh�]�hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hK:hK�hK>hhhK�u��bhK�hK�hK>hK:hM�hh � srlinux::types::srl_nokia_common���Qubh(j`  h�j`  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0ja  u��baj.  ]�hh2)��N}�(hhhK�u��bj3  }�j5  Nh�]�j\  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�jV  hh � srlinux::types::srl_nokia_common���QhTjS  ubahNh0Nu��bh�)��N}�(h�,srlinux::types::srl_nokia_common::dscp_value�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��bej.  ]�hh2)��N}�(hhhK�u��bj3  }�j5  Nh�]�(jQ  jz  eh�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�jK  hh � srlinux::types::srl_nokia_common���QhTjH  ubahNh0Nu��bej�  j�  h�j  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�(jA  j�  ehM�h0h2)��N}�(hhhK�u��bu��bh�)��N}�(h(h
)��}�(h�srlinux::validate_type�hh)��N}�(hKhK�hKhhhK�u��bhK�hK�hKhKhMhh � srlinux::types::srl_nokia_common���Qubh�]�(hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKhK�hK#hhhK�u��bhK�hK�hK#hKhM$hh � srlinux::types::srl_nokia_common���Qubh(j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j�  u��bh�)��N}�(h�+srlinux::types::srl_nokia_common::dscp_name�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM&h0h2)��N}�(hhhK�u��bu��bej.  ]�hh2)��N}�(hhhK�u��bj3  }�j5  Nh�]�(j�  j�  eh�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj�  ubahNh0Nu��be�_Operator__name��or�h�j  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�(jA  j�  j�  ehMh0h2)��N}�(hhhK�u��bu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�(h�)��}�(h�j  hh � srlinux::types::srl_nokia_common���QhTj  ubjA  j�  j�  ehMxh0h2)��N}�(hhhK�u��bu��bhN)��}�(h(�	dscp_name�hR�+srlinux::types::srl_nokia_common::dscp_name�hThW)��}�(hZNh[Nh(j�  hh � srlinux::types::srl_nokia_common���Qh^Nh_Nu}�h0h)��N}�(hK	hK�hKhhhK�u��bs��bh^X�  
A DiffServ Code Point represented by PHB name.
Source type expression:

    srl_nokia-common.yang:
    L111:    type enumeration {
    L112:      enum CS0 {
    L113:        value 0;
    L114:      }
    L115:      enum LE {
    L116:        value 1;
    L117:        reference
    L118:          "RFC 8622";
    L119:      }
    L120:      enum CS1 {
    L121:        value 8;
    L122:      }
    L123:      enum AF11 {
    L124:        value 10;
    L125:      }
    L126:      enum AF12 {
    L127:        value 12;
    L128:      }
    L129:      enum AF13 {
    L130:        value 14;
    L131:      }
    L132:      enum CS2 {
    L133:        value 16;
    L134:      }
    L135:      enum AF21 {
    L136:        value 18;
    L137:      }
    L138:      enum AF22 {
    L139:        value 20;
    L140:      }
    L141:      enum AF23 {
    L142:        value 22;
    L143:      }
    L144:      enum CS3 {
    L145:        value 24;
    L146:      }
    L147:      enum AF31 {
    L148:        value 26;
    L149:      }
    L150:      enum AF32 {
    L151:        value 28;
    L152:      }
    L153:      enum AF33 {
    L154:        value 30;
    L155:      }
    L156:      enum CS4 {
    L157:        value 32;
    L158:      }
    L159:      enum AF41 {
    L160:        value 34;
    L161:      }
    L162:      enum AF42 {
    L163:        value 36;
    L164:      }
    L165:      enum AF43 {
    L166:        value 38;
    L167:      }
    L168:      enum CS5 {
    L169:        value 40;
    L170:      }
    L171:      enum EF {
    L172:        value 46;
    L173:      }
    L174:      enum CS6 {
    L175:        value 48;
    L176:      }
    L177:      enum CS7 {
    L178:        value 56;
    L179:      }
    L180:    }

�hZh
)��}�(h�string�hh)��N}�(hKhK�hKhhhK�u��bhK�hK�hKhKhMThh � srlinux::types::srl_nokia_common���Qubhnhq)��N}�(htKhu]�(hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hK&hK�hK*hhhK�u��bhK�hK�hK*hK&hMbhh � srlinux::types::srl_nokia_common���Qubh(j  h�j  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j  u��bh�)��N}�(h�]�(h�)��N}�(h�CS0�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMlh0h2)��N}�(hhhK�u��bu��bh�)��N}�(h�LE�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMwh0h2)��N}�(hhhK�u��bu��bh�)��N}�(h�CS1�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��bh�)��N}�(h�AF11�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��bh�)��N}�(h�AF12�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��bh�)��N}�(h�AF13�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��bh�)��N}�(h�CS2�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��bh�)��N}�(h�AF21�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��bh�)��N}�(h�AF22�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��bh�)��N}�(h�AF23�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��bh�)��N}�(h�CS3�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��bh�)��N}�(h�AF31�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��bh�)��N}�(h�AF32�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�h0h2)��N}�(hhhK�u��bu��bh�)��N}�(h�AF33�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMh0h2)��N}�(hhhK�u��bu��bh�)��N}�(h�CS4�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMh0h2)��N}�(hhhK�u��bu��bh�)��N}�(h�AF41�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMh0h2)��N}�(hhhK�u��bu��bh�)��N}�(h�AF42�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM%h0h2)��N}�(hhhK�u��bu��bh�)��N}�(h�AF43�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM1h0h2)��N}�(hhhK�u��bu��bh�)��N}�(h�CS5�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM=h0h2)��N}�(hhhK�u��bu��bh�)��N}�(h�EF�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMHh0h2)��N}�(hhhK�u��bu��bh�)��N}�(h�CS6�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMRh0h2)��N}�(hhhK�u��bu��bh�)��N}�(h�CS7�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM]h0h2)��N}�(hhhK�u��bu��beh�j  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMfh0h2)��N}�(hhhK�u��bu��beh�h�h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMch0h2)��N}�(hhhK�u��bu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj�  ubahMAh0h2)��N}�(hhhK�u��bu��bhN)��}�(h(�
dscp_value�hR�,srlinux::types::srl_nokia_common::dscp_value�hThW)��}�(hZNh[Nh(j!  hh � srlinux::types::srl_nokia_common���Qh^Nh_Nu}�h0h)��N}�(hK	hMhKhhhMu��bs��bh^��
A DiffServ Code Point represented numerically.
Source type expression:

    srl_nokia-common.yang:
    L103:    type uint8 {
    L104:      range "0..63";
    L105:    }

�hZh
)��}�(h�srlinux::types::uint8�hh)��N}�(hKhMhK,hhhMu��bhMhMhK,hKhMnhh � srlinux::types::srl_nokia_common���Qubhnjm  )��N}�(jp  Khu]�(js  )��N}�(jv  Khu]�(hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hK6hMhK:hhhMu��bhMhMhK:hK6hM�hh � srlinux::types::srl_nokia_common���Qubh(j?  h�j?  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j@  u��bh�)��N}�(hK h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�h0h2)��N}�(hhhMu��bu��bej�  j�  h�j:  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�h0h2)��N}�(hhhMu��bu��bj�  )��N}�(j�  Khu]�(hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKDhMhKHhhhMu��bhMhMhKHhKDhM�hh � srlinux::types::srl_nokia_common���Qubh(jc  h�jc  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0jd  u��bh�)��N}�(hK?h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�h0h2)��N}�(hhhMu��bu��bej�  j�  h�j^  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�h0h2)��N}�(hhhMu��bu��bej�  j�  h�j7  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�h0h2)��N}�(hhhMu��bu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j0  hh � srlinux::types::srl_nokia_common���QhTj-  ubahMPh0h2)��N}�(hhhMu��bu��bhN)��}�(h(�
encap_type�hR�,srlinux::types::srl_nokia_common::encap_type�hThW)��}�(hZNh[Nh(j�  hh � srlinux::types::srl_nokia_common���Qh^Nh_Nu}�h0h)��N}�(hK	hMhKhhhMu��bs��bh^��
Encap type destination in the system
Source type expression:

    srl_nokia-common.yang:
    L1305:    type enumeration {
    L1306:      enum vxlan {
    L1307:        value 1;
    L1308:      }
    L1309:    }

�hZh
)��}�(h�string�hh)��N}�(hKhMhKhhhMu��bhMhMhKhKhMhhh � srlinux::types::srl_nokia_common���Qubhnh�)��N}�(h�Khu]�(hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hK'hMhK+hhhMu��bhMhMhK+hK'hMvhh � srlinux::types::srl_nokia_common���Qubh(j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j�  u��bh�)��N}�(h�vxlan�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMzh0h2)��N}�(hhhMu��bu��bejE  jF  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMwh0h2)��N}�(hhhMu��bu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj�  ubahMTh0h2)��N}�(hhhMu��bu��bhN)��}�(h(�esi�hR�%srlinux::types::srl_nokia_common::esi�hThW)��}�(hZNh[Nh(j�  hh � srlinux::types::srl_nokia_common���Qh^Nh_Nu}�h0h)��N}�(hK	hM hKhhhM u��bs��bh^Xo  
Ethernet Segment Identifier that can be configured or autoderived.
Its length is always 10 bytes and it is used by BGP-EVPN to identify objects in the control plane that
belong to the same Ethernet Segment.
Source type expression:

    srl_nokia-common.yang:
    L1274:    type string {
    L1275:      pattern '[0-9a-fA-F]{2}(:[0-9a-fA-F]{2}){9}';
    L1276:    }

�hZh
)��}�(h�string�hh)��N}�(hKhM hKhhhM u��bhM hM hKhKhMu hh � srlinux::types::srl_nokia_common���Qubhnh�)��N}�(h�Khu]�(h�)��N}�(h(h
)��}�(h�std::validate_type�hh)��N}�(hK hM hK2hhhM u��bhM hM hK2hK hM� hh � srlinux::types::srl_nokia_common���Qubh�]�(h�)��N}�(h�pydantic.constr�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM� h0h2)��N}�(hhhM u��bu��bhy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKFhM hKJhhhM u��bhM hM hKJhKFhM� hh � srlinux::types::srl_nokia_common���Qubh(j  h�j  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j  u��bj  )��N}�(h�]��regex�h�)��N}�(h�2^(?:[0-9A-Fa-f]{2}(?::[0-9A-Fa-f]{2}){9})$(?!\n\Z)�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM� h0h2)��N}�(hhhM u��bu��b��ah�]�j  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM� h0h2)��N}�(hhhM u��bu��bej.  ]�hh2)��N}�(hhhM u��bj3  }�j5  Nh�]�(j�  j
  j  eh�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj�  ubahNh0Nu��bh�)��N}�(h�h�]�hNh.]�hNh0Nu��bejE  jF  h�j�  h�]�hNh.]�j<  ahNh0Nu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�(h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj�  ubj<  ehMh h0h2)��N}�(hhhM u��bu��bhN)��}�(h(�forwarding_class�hR�2srlinux::types::srl_nokia_common::forwarding_class�hThW)��}�(hZNh[Nh(jW  hh � srlinux::types::srl_nokia_common���Qh^Nh_Nu}�h0h)��N}�(hK	hM.hKhhhM.u��bs��bh^X.  

Source type expression:

    srl_nokia-common.yang:
    L184:    type enumeration {
    L185:      enum fc0;
    L186:      enum fc1;
    L187:      enum fc2;
    L188:      enum fc3;
    L189:      enum fc4;
    L190:      enum fc5;
    L191:      enum fc6;
    L192:      enum fc7;
    L193:    }

�hZh
)��}�(h�string�hh)��N}�(hKhM.hK#hhhM.u��bhM.hM.hK#hKhM�"hh � srlinux::types::srl_nokia_common���Qubhnhq)��N}�(htKhu]�(hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hK-hM.hK1hhhM.u��bhM.hM.hK1hK-hM�"hh � srlinux::types::srl_nokia_common���Qubh(jr  h�jr  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0js  u��bh�)��N}�(h�]�(h�)��N}�(h�fc0�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�"h0h2)��N}�(hhhM/u��bu��bh�)��N}�(h�fc1�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�"h0h2)��N}�(hhhM0u��bu��bh�)��N}�(h�fc2�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�"h0h2)��N}�(hhhM1u��bu��bh�)��N}�(h�fc3�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�"h0h2)��N}�(hhhM2u��bu��bh�)��N}�(h�fc4�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�"h0h2)��N}�(hhhM3u��bu��bh�)��N}�(h�fc5�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�"h0h2)��N}�(hhhM4u��bu��bh�)��N}�(h�fc6�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�"h0h2)��N}�(hhhM5u��bu��bh�)��N}�(h�fc7�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�"h0h2)��N}�(hhhM6u��bu��beh�j  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�"h0h2)��N}�(hhhM.u��bu��beh�h�h�jm  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�"h0h2)��N}�(hhhM.u��bu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�jf  hh � srlinux::types::srl_nokia_common���QhTjc  ubahMm"h0h2)��N}�(hhhM.u��bu��bhN)��}�(h(�host�hR�&srlinux::types::srl_nokia_common::host�hThW)��}�(hZNh[Nh(j�  hh � srlinux::types::srl_nokia_common���Qh^Nh_Nu}�h0h)��N}�(hK	hMJhKhhhMJu��bs��bh^��
The host type represents either an IP address or a DNS domain name.
Source type expression:

    srl_nokia-common.yang:
    L416:    type union {
    L417:      type ip-address;
    L418:      type domain-name;
    L419:    }

�hZh
)��}�(h�string�hh)��N}�(hKhMJhKhhhMJu��bhMJhMJhKhKhM@$hh � srlinux::types::srl_nokia_common���Qubhnj  )��N}�(j  Khu]�(jm  )��N}�(jp  Khu]�(h�)��N}�(h(h
)��}�(h�srlinux::validate_type�hh)��N}�(hKhMKhKhhhMKu��bhMKhMKhKhKhMY$hh � srlinux::types::srl_nokia_common���Qubh�]�(hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKhMKhK hhhMKu��bhMKhMKhK hKhMk$hh � srlinux::types::srl_nokia_common���Qubh(j  h�j  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j   u��bh�)��N}�(h�,srlinux::types::srl_nokia_common::ip_address�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMm$h0h2)��N}�(hhhMKu��bu��bej.  ]�hh2)��N}�(hhhMKu��bj3  }�j5  Nh�]�(j  j*  eh�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j  hh � srlinux::types::srl_nokia_common���QhTj  ubahNh0Nu��bj  )��N}�(j  Khu]�(h�)��N}�(h(h
)��}�(h�srlinux::validate_type�hh)��N}�(hK	hMLhKhhhMLu��bhMLhMLhKhK	hM�$hh � srlinux::types::srl_nokia_common���Qubh�]�(hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hK hMLhK$hhhMLu��bhMLhMLhK$hK hM�$hh � srlinux::types::srl_nokia_common���Qubh(jV  h�jV  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0jW  u��bh�)��N}�(h�.srlinux::types::srl_nokia_common::ipv4_address�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�$h0h2)��N}�(hhhMLu��bu��bej.  ]�hh2)��N}�(hhhMLu��bj3  }�j5  Nh�]�(jR  ja  eh�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�jL  hh � srlinux::types::srl_nokia_common���QhTjI  ubahNh0Nu��bh�)��N}�(h(h
)��}�(h�srlinux::validate_type�hh)��N}�(hKhMMhK"hhhMMu��bhMMhMMhK"hKhM%hh � srlinux::types::srl_nokia_common���Qubh�]�(hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hK#hMMhK'hhhMMu��bhMMhMMhK'hK#hM %hh � srlinux::types::srl_nokia_common���Qubh(j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j�  u��bh�)��N}�(h�.srlinux::types::srl_nokia_common::ipv6_address�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM"%h0h2)��N}�(hhhMMu��bu��bej.  ]�hh2)��N}�(hhhMMu��bj3  }�j5  Nh�]�(j�  j�  eh�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj}  ubahNh0Nu��bej�  j�  h�jF  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�(jv  j�  ehM%h0h2)��N}�(hhhMMu��bu��bej�  j�  h�j  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�(j?  jv  j�  ehM�$h0h2)��N}�(hhhMKu��bu��bh�)��N}�(h(h
)��}�(h�srlinux::validate_type�hh)��N}�(hKhMOhKhhhMOu��bhMOhMOhKhKhMj%hh � srlinux::types::srl_nokia_common���Qubh�]�(hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKhMOhK#hhhMOu��bhMOhMOhK#hKhM|%hh � srlinux::types::srl_nokia_common���Qubh(j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j�  u��bh�)��N}�(h�-srlinux::types::srl_nokia_common::domain_name�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM~%h0h2)��N}�(hhhMOu��bu��bej.  ]�hh2)��N}�(hhhMOu��bj3  }�j5  Nh�]�(j�  j�  eh�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj�  ubahNh0Nu��bej�  j�  h�j  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�(j?  jv  j�  j�  ehM^%h0h2)��N}�(hhhMOu��bu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�(h�)��}�(h�j  hh � srlinux::types::srl_nokia_common���QhTj  ubj?  jv  j�  j�  ehM2$h0h2)��N}�(hhhMJu��bu��bhN)��}�(h(�interface_all�hR�/srlinux::types::srl_nokia_common::interface_all�hThW)��}�(hZNh[Nh(j		  hh � srlinux::types::srl_nokia_common���Qh^Nh_Nu}�h0h)��N}�(hK	hM]hKhhhM]u��bs��bh^XV  

Source type expression:

    srl_nokia-common.yang:
    L458:    type interface-name {
    L459:      length "3..20";
    L460:      pattern '(mgmt0|'
    L461:            + 'mgmt0-standby|'
    L462:            + 'system0|'
    L463:            + 'lo(0|1[0-9][0-9]|2([0-4][0-9]|5[0-5])|[1-9][0-9]|[1-9])|'
    L464:            + 'ethernet-([1-9](\d){0,1}(/[abcd])?(/[1-9](\d){0,1})?/(([1-9](\d){0,1})|(1[0-1]\d)|(12[0-8])))|'
    L465:            + 'irb(0|1[0-9][0-9]|2([0-4][0-9]|5[0-5])|[1-9][0-9]|[1-9])|'
    L466:            + 'lag(([1-9](\d){0,1})|(1[0-1]\d)|(12[0-8])))';
    L467:    }

�hZh
)��}�(h�interface_name�hh)��N}�(hKhM]hK(hhhM]u��bhM]hM]hK(hKhM�&hh � srlinux::types::srl_nokia_common���Qubhnjm  )��N}�(jp  Khu]�(jm  )��N}�(jp  Khu]�(js  )��N}�(jv  Khu]�(h�)��N}�(h(h
)��}�(h�std::length�hh)��N}�(hK2hM]hK=hhhM]u��bhM]hM]hK=hK2hM�&hh � srlinux::types::srl_nokia_common���Qubh�]�hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hK>hM]hKBhhhM]u��bhM]hM]hKBhK>hM�&hh � srlinux::types::srl_nokia_common���Qubh(j5	  h�j5	  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j6	  u��baj.  ]�hh2)��N}�(hhhM]u��bj3  }�j5  Nh�]�j1	  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j+	  hh � srlinux::types::srl_nokia_common���QhTj(	  ubahNh0Nu��bh�)��N}�(hKh�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�&h0h2)��N}�(hhhM]u��bu��bej�  j�  h�j%	  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�jJ	  ahM�&h0h2)��N}�(hhhM]u��bu��bj�  )��N}�(j�  Khu]�(h�)��N}�(h(h
)��}�(h�std::length�hh)��N}�(hKMhM]hKXhhhM]u��bhM]hM]hKXhKMhM�&hh � srlinux::types::srl_nokia_common���Qubh�]�hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKYhM]hK]hhhM]u��bhM]hM]hK]hKYhM�&hh � srlinux::types::srl_nokia_common���Qubh(js	  h�js	  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0jt	  u��baj.  ]�hh2)��N}�(hhhM]u��bj3  }�j5  Nh�]�jo	  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�ji	  hh � srlinux::types::srl_nokia_common���QhTjf	  ubahNh0Nu��bh�)��N}�(hKh�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�&h0h2)��N}�(hhhM]u��bu��bej�  j�  h�jc	  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�j�	  ahM�&h0h2)��N}�(hhhM]u��bu��bej�  j�  h�j"	  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�(jJ	  j�	  ehM�&h0h2)��N}�(hhhM]u��bu��bh�)��N}�(h(h
)��}�(h�std::validate_type�hh)��N}�(hKihM]hK{hhhM]u��bhM]hM]hK{hKihM
'hh � srlinux::types::srl_nokia_common���Qubh�]�(h�)��N}�(h�pydantic.constr�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM'h0h2)��N}�(hhhM]u��bu��bhy)��N}�(h|h
)��}�(h�self�hh)��N}�(hK�hM]hK�hhhM]u��bhM]hM]hK�hK�hM/'hh � srlinux::types::srl_nokia_common���Qubh(j�	  h�j�	  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j�	  u��bj  )��N}�(h�]��regex�h�)��N}�(hXJ  ^(?:(?:mgmt0|mgmt0-standby|system0|lo(?:0|1[0-9][0-9]|2(?:[0-4][0-9]|5[0-5])|[1-9][0-9]|[1-9])|ethernet-(?:[1-9](?:\d){0,1}(?:/[a-d])?(?:/[1-9](?:\d){0,1})?/(?:(?:[1-9](?:\d){0,1})|(?:1[01]\d)|(?:12[0-8])))|irb(?:0|1[0-9][0-9]|2(?:[0-4][0-9]|5[0-5])|[1-9][0-9]|[1-9])|lag(?:(?:[1-9](?:\d){0,1})|(?:1[01]\d)|(?:12[0-8]))))$(?!\n\Z)�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM;'h0h2)��N}�(hhhM]u��bu��b��ah�]�j�	  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM1'h0h2)��N}�(hhhM]u��bu��bej.  ]�hh2)��N}�(hhhM]u��bj3  }�j5  Nh�]�(j�	  j�	  j�	  eh�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j�	  hh � srlinux::types::srl_nokia_common���QhTj�	  ubahNh0Nu��bej�  j�  h�j	  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�(jJ	  j�	  j�	  ehM'h0h2)��N}�(hhhM]u��bu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�(h�)��}�(h�j	  hh � srlinux::types::srl_nokia_common���QhTj	  ubjJ	  j�	  j�	  ehM�&h0h2)��N}�(hhhM]u��bu��bhN)��}�(h(�interface_eth_lag�hR�3srlinux::types::srl_nokia_common::interface_eth_lag�hThW)��}�(hZNh[Nh(j

  hh � srlinux::types::srl_nokia_common���Qh^Nh_Nu}�h0h)��N}�(hK	hMphKhhhMpu��bs��bh^XG  

Source type expression:

    srl_nokia-common.yang:
    L471:    type interface-name {
    L472:      length "3..20";
    L473:      pattern '(ethernet-([1-9](\d){0,1}(/[abcd])?(/[1-9](\d){0,1})?/(([1-9](\d){0,1})|(1[0-1]\d)|(12[0-8])))|'
    L474:            + 'lag(([1-9](\d){0,1})|(1[0-1]\d)|(12[0-8])))';
    L475:    }

�hZh
)��}�(h�interface_name�hh)��N}�(hKhMphK,hhhMpu��bhMphMphK,hKhM+hh � srlinux::types::srl_nokia_common���Qubhnjm  )��N}�(jp  Khu]�(jm  )��N}�(jp  Khu]�(js  )��N}�(jv  Khu]�(h�)��N}�(h(h
)��}�(h�std::length�hh)��N}�(hK6hMphKAhhhMpu��bhMphMphKAhK6hM,+hh � srlinux::types::srl_nokia_common���Qubh�]�hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKBhMphKFhhhMpu��bhMphMphKFhKBhM7+hh � srlinux::types::srl_nokia_common���Qubh(j6
  h�j6
  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j7
  u��baj.  ]�hh2)��N}�(hhhMpu��bj3  }�j5  Nh�]�j2
  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j,
  hh � srlinux::types::srl_nokia_common���QhTj)
  ubahNh0Nu��bh�)��N}�(hKh�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM<+h0h2)��N}�(hhhMpu��bu��bej�  j�  h�j&
  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�jK
  ahM9+h0h2)��N}�(hhhMpu��bu��bj�  )��N}�(j�  Khu]�(h�)��N}�(h(h
)��}�(h�std::length�hh)��N}�(hKQhMphK\hhhMpu��bhMphMphK\hKQhMG+hh � srlinux::types::srl_nokia_common���Qubh�]�hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hK]hMphKahhhMpu��bhMphMphKahK]hMR+hh � srlinux::types::srl_nokia_common���Qubh(jt
  h�jt
  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0ju
  u��baj.  ]�hh2)��N}�(hhhMpu��bj3  }�j5  Nh�]�jp
  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�jj
  hh � srlinux::types::srl_nokia_common���QhTjg
  ubahNh0Nu��bh�)��N}�(hKh�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMW+h0h2)��N}�(hhhMpu��bu��bej�  j�  h�jd
  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�j�
  ahMT+h0h2)��N}�(hhhMpu��bu��bej�  j�  h�j#
  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�(jK
  j�
  ehM>+h0h2)��N}�(hhhMpu��bu��bh�)��N}�(h(h
)��}�(h�std::validate_type�hh)��N}�(hKmhMphKhhhMpu��bhMphMphKhKmhMc+hh � srlinux::types::srl_nokia_common���Qubh�]�(h�)��N}�(h�pydantic.constr�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMq+h0h2)��N}�(hhhMpu��bu��bhy)��N}�(h|h
)��}�(h�self�hh)��N}�(hK�hMphK�hhhMpu��bhMphMphK�hK�hM�+hh � srlinux::types::srl_nokia_common���Qubh(j�
  h�j�
  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j�
  u��bj  )��N}�(h�]��regex�h�)��N}�(h��^(?:(?:ethernet-(?:[1-9](?:\d){0,1}(?:/[a-d])?(?:/[1-9](?:\d){0,1})?/(?:(?:[1-9](?:\d){0,1})|(?:1[01]\d)|(?:12[0-8])))|lag(?:(?:[1-9](?:\d){0,1})|(?:1[01]\d)|(?:12[0-8]))))$(?!\n\Z)�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�+h0h2)��N}�(hhhMpu��bu��b��ah�]�j�
  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�+h0h2)��N}�(hhhMpu��bu��bej.  ]�hh2)��N}�(hhhMpu��bj3  }�j5  Nh�]�(j�
  j�
  j�
  eh�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j�
  hh � srlinux::types::srl_nokia_common���QhTj�
  ubahNh0Nu��bej�  j�  h�j 
  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�(jK
  j�
  j�
  ehMZ+h0h2)��N}�(hhhMpu��bu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�(h�)��}�(h�j
  hh � srlinux::types::srl_nokia_common���QhTj
  ubjK
  j�
  j�
  ehM�*h0h2)��N}�(hhhMpu��bu��bhN)��}�(h(�interface_name�hR�0srlinux::types::srl_nokia_common::interface_name�hThW)��}�(hZNh[Nh(j  hh � srlinux::types::srl_nokia_common���Qh^Nh_Nu}�h0h)��N}�(hK	hM~hKhhhM~u��bs��bh^�Q

Source type expression:

    srl_nokia-common.yang:
    L449:    type string;

�hZh
)��}�(h�string�hh)��N}�(hKhM~hK!hhhM~u��bhM~hM~hK!hKhM�-hh � srlinux::types::srl_nokia_common���Qubhnh�)��N}�(h�Khu]�(hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hK+hM~hK/hhhM~u��bhM~hM~hK/hK+hM�-hh � srlinux::types::srl_nokia_common���Qubh(j&  h�j&  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j'  u��bhy)��N}�(h|h
)��}�(h�self�hh)��N}�(hK3hM~hK7hhhM~u��bhM~hM~hK7hK3hM�-hh � srlinux::types::srl_nokia_common���Qubh(j5  h�j5  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j6  u��bejE  jF  h�j!  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�-h0h2)��N}�(hhhM~u��bu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j  hh � srlinux::types::srl_nokia_common���QhTj  ubahM�-h0h2)��N}�(hhhM~u��bu��bhN)��}�(h(�
ip_address�hR�,srlinux::types::srl_nokia_common::ip_address�hThW)��}�(hZNh[Nh(jV  hh � srlinux::types::srl_nokia_common���Qh^Nh_Nu}�h0h)��N}�(hK	hM�hKhhhM�u��bs��bh^��
An IPv4 or IPv6 address with no prefix specified.
Source type expression:

    srl_nokia-common.yang:
    L283:    type union {
    L284:      type ipv4-address;
    L285:      type ipv6-address;
    L286:    }

�hZh
)��}�(h�string�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhMS.hh � srlinux::types::srl_nokia_common���Qubhnj  )��N}�(j  Khu]�(h�)��N}�(h(h
)��}�(h�srlinux::validate_type�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhMl.hh � srlinux::types::srl_nokia_common���Qubh�]�(hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKhM�hK hhhM�u��bhM�hM�hK hKhM~.hh � srlinux::types::srl_nokia_common���Qubh(j|  h�j|  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j}  u��bh�)��N}�(h�.srlinux::types::srl_nokia_common::ipv4_address�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�.h0h2)��N}�(hhhM�u��bu��bej.  ]�hh2)��N}�(hhhM�u��bj3  }�j5  Nh�]�(jx  j�  eh�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�jr  hh � srlinux::types::srl_nokia_common���QhTjo  ubahNh0Nu��bh�)��N}�(h(h
)��}�(h�srlinux::validate_type�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM�.hh � srlinux::types::srl_nokia_common���Qubh�]�(hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKhM�hK#hhhM�u��bhM�hM�hK#hKhM�.hh � srlinux::types::srl_nokia_common���Qubh(j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j�  u��bh�)��N}�(h�.srlinux::types::srl_nokia_common::ipv6_address�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�.h0h2)��N}�(hhhM�u��bu��bej.  ]�hh2)��N}�(hhhM�u��bj3  }�j5  Nh�]�(j�  j�  eh�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj�  ubahNh0Nu��bej�  j�  h�jl  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�(j�  j�  ehM�.h0h2)��N}�(hhhM�u��bu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�(h�)��}�(h�je  hh � srlinux::types::srl_nokia_common���QhTjb  ubj�  j�  ehM?.h0h2)��N}�(hhhM�u��bu��bhN)��}�(h(�ip_address_with_zone�hR�6srlinux::types::srl_nokia_common::ip_address_with_zone�hThW)��}�(hZNh[Nh(j�  hh � srlinux::types::srl_nokia_common���Qh^Nh_Nu}�h0h)��N}�(hK	hM�hKhhhM�u��bs��bh^��
An IPv4 or IPv6 address with zone with no prefix specified.
Source type expression:

    srl_nokia-common.yang:
    L303:    type union {
    L304:      type ipv4-address;
    L305:      type ipv6-address-with-zone;
    L306:    }

�hZh
)��}�(h�string�hh)��N}�(hK!hM�hK'hhhM�u��bhM�hM�hK'hK!hM0hh � srlinux::types::srl_nokia_common���Qubhnj  )��N}�(j  Khu]�(h�)��N}�(h(h
)��}�(h�srlinux::validate_type�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM&0hh � srlinux::types::srl_nokia_common���Qubh�]�(hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKhM�hK hhhM�u��bhM�hM�hK hKhM80hh � srlinux::types::srl_nokia_common���Qubh(j  h�j  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j  u��bh�)��N}�(h�.srlinux::types::srl_nokia_common::ipv4_address�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM:0h0h2)��N}�(hhhM�u��bu��bej.  ]�hh2)��N}�(hhhM�u��bj3  }�j5  Nh�]�(j  j  eh�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j  hh � srlinux::types::srl_nokia_common���QhTj  ubahNh0Nu��bh�)��N}�(h(h
)��}�(h�srlinux::validate_type�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM|0hh � srlinux::types::srl_nokia_common���Qubh�]�(hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKhM�hK#hhhM�u��bhM�hM�hK#hKhM�0hh � srlinux::types::srl_nokia_common���Qubh(jE  h�jE  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0jF  u��bh�)��N}�(h�8srlinux::types::srl_nokia_common::ipv6_address_with_zone�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�0h0h2)��N}�(hhhM�u��bu��bej.  ]�hh2)��N}�(hhhM�u��bj3  }�j5  Nh�]�(jA  jP  eh�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j;  hh � srlinux::types::srl_nokia_common���QhTj8  ubahNh0Nu��bej�  j�  h�j  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�(j1  je  ehMp0h0h2)��N}�(hhhM�u��bu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�(h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj�  ubj1  je  ehM�/h0h2)��N}�(hhhM�u��bu��bhN)��}�(h(�	ip_prefix�hR�+srlinux::types::srl_nokia_common::ip_prefix�hThW)��}�(hZNh[Nh(j�  hh � srlinux::types::srl_nokia_common���Qh^Nh_Nu}�h0h)��N}�(hK	hM�hKhhhM�u��bs��bh^��
An IPv4 or IPv6 prefix.
Source type expression:

    srl_nokia-common.yang:
    L293:    type union {
    L294:      type ipv4-prefix;
    L295:      type ipv6-prefix;
    L296:    }

�hZh
)��}�(h�string�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM�1hh � srlinux::types::srl_nokia_common���Qubhnj  )��N}�(j  Khu]�(h�)��N}�(h(h
)��}�(h�srlinux::validate_type�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM�1hh � srlinux::types::srl_nokia_common���Qubh�]�(hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKhM�hK hhhM�u��bhM�hM�hK hKhM2hh � srlinux::types::srl_nokia_common���Qubh(j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j�  u��bh�)��N}�(h�-srlinux::types::srl_nokia_common::ipv4_prefix�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM2h0h2)��N}�(hhhM�u��bu��bej.  ]�hh2)��N}�(hhhM�u��bj3  }�j5  Nh�]�(j�  j�  eh�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj�  ubahNh0Nu��bh�)��N}�(h(h
)��}�(h�srlinux::validate_type�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhMH2hh � srlinux::types::srl_nokia_common���Qubh�]�(hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKhM�hK#hhhM�u��bhM�hM�hK#hKhMZ2hh � srlinux::types::srl_nokia_common���Qubh(j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j�  u��bh�)��N}�(h�-srlinux::types::srl_nokia_common::ipv6_prefix�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM\2h0h2)��N}�(hhhM�u��bu��bej.  ]�hh2)��N}�(hhhM�u��bj3  }�j5  Nh�]�(j�  j�  eh�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj�  ubahNh0Nu��bej�  j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�(j�  j�  ehM<2h0h2)��N}�(hhhM�u��bu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�(h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj�  ubj�  j�  ehM�1h0h2)��N}�(hhhM�u��bu��bhN)��}�(h(�ipv4_address�hR�.srlinux::types::srl_nokia_common::ipv4_address�hThW)��}�(hZNh[Nh(j  hh � srlinux::types::srl_nokia_common���Qh^Nh_Nu}�h0h)��N}�(hK	hM�hKhhhM�u��bs��bh^XC  
An IPv4 address in dotted quad notation.
Source type expression:

    srl_nokia-common.yang:
    L198:    type string {
    L199:      pattern '(([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|'
    L200:            + '25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4]'
    L201:            + '[0-9]|25[0-5])';
    L202:    }

�hZh
)��}�(h�string�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhMn3hh � srlinux::types::srl_nokia_common���Qubhnh�)��N}�(h�Khu]�(h�)��N}�(h(h
)��}�(h�std::validate_type�hh)��N}�(hK)hM�hK;hhhM�u��bhM�hM�hK;hK)hM}3hh � srlinux::types::srl_nokia_common���Qubh�]�(h�)��N}�(h�pydantic.constr�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�3h0h2)��N}�(hhhM�u��bu��bhy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKOhM�hKShhhM�u��bhM�hM�hKShKOhM�3hh � srlinux::types::srl_nokia_common���Qubh(jF  h�jF  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0jG  u��bj  )��N}�(h�]��regex�h�)��N}�(h�^(?:(?:(?:[0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.){3}(?:[0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5]))$(?!\n\Z)�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�3h0h2)��N}�(hhhM�u��bu��b��ah�]�jU  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�3h0h2)��N}�(hhhM�u��bu��bej.  ]�hh2)��N}�(hhhM�u��bj3  }�j5  Nh�]�(j7  jB  jQ  eh�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j1  hh � srlinux::types::srl_nokia_common���QhTj.  ubahNh0Nu��bh�)��N}�(h�h�]�hNh.]�hNh0Nu��bejE  jF  h�j+  h�]�hNh.]�jt  ahNh0Nu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�(h�)��}�(h�j$  hh � srlinux::types::srl_nokia_common���QhTj!  ubjt  ehMX3h0h2)��N}�(hhhM�u��bu��bhN)��}�(h(�ipv4_prefix�hR�-srlinux::types::srl_nokia_common::ipv4_prefix�hThW)��}�(hZNh[Nh(j�  hh � srlinux::types::srl_nokia_common���Qh^Nh_Nu}�h0h)��N}�(hK	hM�hKhhhM�u��bs��bh^X�  
An IPv4 prefix represented in dotted quad notation followed by
a slash and a CIDR mask (0 <= mask <= 32).
Source type expression:

    srl_nokia-common.yang:
    L256:    type string {
    L257:      pattern '(([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|'
    L258:            + '25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4]'
    L259:            + '[0-9]|25[0-5])/(([0-9])|([1-2][0-9])|(3[0-2]))';
    L260:    }

�hZh
)��}�(h�string�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM�5hh � srlinux::types::srl_nokia_common���Qubhnh�)��N}�(h�Khu]�(h�)��N}�(h(h
)��}�(h�std::validate_type�hh)��N}�(hK(hM�hK:hhhM�u��bhM�hM�hK:hK(hM�5hh � srlinux::types::srl_nokia_common���Qubh�]�(h�)��N}�(h�pydantic.constr�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�5h0h2)��N}�(hhhM�u��bu��bhy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKNhM�hKRhhhM�u��bhM�hM�hKRhKNhM�5hh � srlinux::types::srl_nokia_common���Qubh(j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j�  u��bj  )��N}�(h�]��regex�h�)��N}�(h��^(?:(?:(?:[0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.){3}(?:[0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])/(?:(?:[0-9])|(?:[12][0-9])|(?:3[0-2])))$(?!\n\Z)�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�5h0h2)��N}�(hhhM�u��bu��b��ah�]�j�  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�5h0h2)��N}�(hhhM�u��bu��bej.  ]�hh2)��N}�(hhhM�u��bj3  }�j5  Nh�]�(j�  j�  j�  eh�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj�  ubahNh0Nu��bh�)��N}�(h�h�]�hNh.]�hNh0Nu��bejE  jF  h�j�  h�]�hNh.]�j�  ahNh0Nu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�(h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj�  ubj�  ehM�5h0h2)��N}�(hhhM�u��bu��bhN)��}�(h(�ipv4_prefix_with_host_bits�hR�<srlinux::types::srl_nokia_common::ipv4_prefix_with_host_bits�hThW)��}�(hZNh[Nh(j	  hh � srlinux::types::srl_nokia_common���Qh^Nh_Nu}�h0h)��N}�(hK	hM�hK#hhhM�u��bs��bh^�t
An IPv4 prefix with host bits.
Source type expression:

    srl_nokia-common.yang:
    L313:    type ipv4-prefix;

�hZh
)��}�(h�ipv4_prefix�hh)��N}�(hK'hM�hK2hhhM�u��bhM�hM�hK2hK'hMh8hh � srlinux::types::srl_nokia_common���Qubhnh�)��N}�(h�Khu]�(hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hK<hM�hK@hhhM�u��bhM�hM�hK@hK<hMv8hh � srlinux::types::srl_nokia_common���Qubh(j$  h�j$  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j%  u��bhy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKDhM�hKHhhhM�u��bhM�hM�hKHhKDhM~8hh � srlinux::types::srl_nokia_common���Qubh(j3  h�j3  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j4  u��bejE  jF  h�j  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMw8h0h2)��N}�(hhhM�u��bu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j  hh � srlinux::types::srl_nokia_common���QhTj  ubahM?8h0h2)��N}�(hhhM�u��bu��bhN)��}�(h(�ipv6_address�hR�.srlinux::types::srl_nokia_common::ipv6_address�hThW)��}�(hZNh[Nh(jT  hh � srlinux::types::srl_nokia_common���Qh^Nh_Nu}�h0h)��N}�(hK	hM�hKhhhM�u��bs��bh^X�  
An IPv6 address represented as either a full address; shortened
or mixed-shortened formats.
Source type expression:

    srl_nokia-common.yang:
    L209:    type string {
    L210:      pattern '((:|[0-9a-fA-F]{0,4}):)([0-9a-fA-F]{0,4}:){0,5}'
    L211:            + '((([0-9a-fA-F]{0,4}:)?(:|[0-9a-fA-F]{0,4}))|'
    L212:            + '(((25[0-5]|2[0-4][0-9]|[01]?[0-9]?[0-9])\.){3}'
    L213:            + '(25[0-5]|2[0-4][0-9]|[01]?[0-9]?[0-9])))';
    L214:    }

�hZh
)��}�(h�string�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM9hh � srlinux::types::srl_nokia_common���Qubhnh�)��N}�(h�Khu]�(h�)��N}�(h(h
)��}�(h�std::validate_type�hh)��N}�(hK)hM�hK;hhhM�u��bhM�hM�hK;hK)hM(9hh � srlinux::types::srl_nokia_common���Qubh�]�(h�)��N}�(h�pydantic.constr�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM69h0h2)��N}�(hhhM�u��bu��bhy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKOhM�hKShhhM�u��bhM�hM�hKShKOhMM9hh � srlinux::types::srl_nokia_common���Qubh(j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j�  u��bj  )��N}�(h�]��regex�h�)��N}�(h��^(?:(?:(?::|[0-9A-Fa-f]{0,4}):)(?:[0-9A-Fa-f]{0,4}:){0,5}(?:(?:(?:[0-9A-Fa-f]{0,4}:)?(?::|[0-9A-Fa-f]{0,4}))|(?:(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9]?[0-9])\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9]?[0-9]))))$(?!\n\Z)�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMY9h0h2)��N}�(hhhM�u��bu��b��ah�]�j�  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMO9h0h2)��N}�(hhhM�u��bu��bej.  ]�hh2)��N}�(hhhM�u��bj3  }�j5  Nh�]�(jv  j�  j�  eh�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�jp  hh � srlinux::types::srl_nokia_common���QhTjm  ubahNh0Nu��bh�)��N}�(h�h�]�hNh.]�hNh0Nu��bejE  jF  h�jj  h�]�hNh.]�j�  ahNh0Nu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�(h�)��}�(h�jc  hh � srlinux::types::srl_nokia_common���QhTj`  ubj�  ehM9h0h2)��N}�(hhhM�u��bu��bhN)��}�(h(�ipv6_address_with_zone�hR�8srlinux::types::srl_nokia_common::ipv6_address_with_zone�hThW)��}�(hZNh[Nh(j�  hh � srlinux::types::srl_nokia_common���Qh^Nh_Nu}�h0h)��N}�(hK	hM�hKhhhM�u��bs��bh^X
  
The ipv6-address-with-zone type represents an IPv6 address in full, mixed, shortened, and
shortened-mixed notation.  The IPv6 address may include a zone index, separated by
a % sign. The zone index is used to disambiguate identical address values.  For link-local
addresses, the zone index is expected to be the name of a subinterface. An example of
a link-local address is:

fe80::1234%ethernet-1/1.1
Source type expression:

    srl_nokia-common.yang:
    L222:    type string {
    L223:      pattern '((:|[0-9a-fA-F]{0,4}):)([0-9a-fA-F]{0,4}:){0,5}'
    L224:            + '((([0-9a-fA-F]{0,4}:)?(:|[0-9a-fA-F]{0,4}))|'
    L225:            + '(((25[0-5]|2[0-4][0-9]|[01]?[0-9]?[0-9])\.){3}'
    L226:            + '(25[0-5]|2[0-4][0-9]|[01]?[0-9]?[0-9])))'
    L227:            + '(%.+)?';
    L228:      pattern '(([^:]+:){6}(([^:]+:[^:]+)|(.*\..*)))|'
    L229:            + '((([^:]+:)*[^:]+)?::(([^:]+:)*[^:]+)?)'
    L230:            + '(%.+)?';
    L231:      pattern '([^%]+)(%'
    L232:            + '(mgmt0\.0|'
    L233:            + 'system0\.0|'
    L234:            + 'lo(0|1[0-9][0-9]|2([0-4][0-9]|5[0-5])|[1-9][0-9]|[1-9])\.(0|[1-9](\d){0,3})|'
    L235:            + 'ethernet-([1-9](\d){0,1}(/[abcd])?(/[1-9](\d){0,1})?/(([1-9](\d){0,1})|(1[0-1]\d)|(12[0-8])))\.([0]|[1-9](\d){0,3})|'
    L236:            + 'irb(0|1[0-9][0-9]|2([0-4][0-9]|5[0-5])|[1-9][0-9]|[1-9])\.(0|[1-9](\d){0,3})|'
    L237:            + 'lag(([1-9](\d){0,1})|(1[0-1]\d)|(12[0-8]))\.(0|[1-9](\d){0,3}))'
    L238:            + ')?';
    L239:    }

�hZh
)��}�(h�string�hh)��N}�(hK#hM�hK)hhhM�u��bhM�hM�hK)hK#hM<<hh � srlinux::types::srl_nokia_common���Qubhnjm  )��N}�(jp  Khu]�(jm  )��N}�(jp  Khu]�(h�)��N}�(h(h
)��}�(h�std::validate_type�hh)��N}�(hK3hM�hKEhhhM�u��bhM�hM�hKEhK3hMK<hh � srlinux::types::srl_nokia_common���Qubh�]�(h�)��N}�(h�pydantic.constr�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMY<h0h2)��N}�(hhhM�u��bu��bhy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKYhM�hK]hhhM�u��bhM�hM�hK]hKYhMp<hh � srlinux::types::srl_nokia_common���Qubh(j  h�j  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j  u��bj  )��N}�(h�]��regex�h�)��N}�(h��^(?:(?:(?::|[0-9A-Fa-f]{0,4}):)(?:[0-9A-Fa-f]{0,4}:){0,5}(?:(?:(?:[0-9A-Fa-f]{0,4}:)?(?::|[0-9A-Fa-f]{0,4}))|(?:(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9]?[0-9])\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9]?[0-9])))(?:%[^
]+)?)$(?!\n\Z)�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM|<h0h2)��N}�(hhhM�u��bu��b��ah�]�j  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMr<h0h2)��N}�(hhhM�u��bu��bej.  ]�hh2)��N}�(hhhM�u��bj3  }�j5  Nh�]�(j�  j�  j  eh�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj�  ubahNh0Nu��bh�)��N}�(h(h
)��}�(h�std::validate_type�hh)��N}�(hMXhM�hMjhhhM�u��bhM�hM�hMjhMXhMp=hh � srlinux::types::srl_nokia_common���Qubh�]�(h�)��N}�(h�pydantic.constr�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM~=h0h2)��N}�(hhhM�u��bu��bhy)��N}�(h|h
)��}�(h�self�hh)��N}�(hM~hM�hM�hhhM�u��bhM�hM�hM�hM~hM�=hh � srlinux::types::srl_nokia_common���Qubh(jO  h�jO  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0jP  u��bj  )��N}�(h�]��regex�h�)��N}�(h��^(?:(?:(?:[^:]+:){6}(?:(?:[^:]+:[^:]+)|(?:[^
]*\.[^
]*)))|(?:(?:(?:[^:]+:)*[^:]+)?::(?:(?:[^:]+:)*[^:]+)?)(?:%[^
]+)?)$(?!\n\Z)�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�=h0h2)��N}�(hhhM�u��bu��b��ah�]�j^  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�=h0h2)��N}�(hhhM�u��bu��bej.  ]�hh2)��N}�(hhhM�u��bj3  }�j5  Nh�]�(j@  jK  jZ  eh�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j:  hh � srlinux::types::srl_nokia_common���QhTj7  ubahNh0Nu��bej�  j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�(j0  j}  ehMg=h0h2)��N}�(hhhM�u��bu��bh�)��N}�(h(h
)��}�(h�std::validate_type�hh)��N}�(hM"hM�hM4hhhM�u��bhM�hM�hM4hM"hM:>hh � srlinux::types::srl_nokia_common���Qubh�]�(h�)��N}�(h�pydantic.constr�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMH>h0h2)��N}�(hhhM�u��bu��bhy)��N}�(h|h
)��}�(h�self�hh)��N}�(hMHhM�hMLhhhM�u��bhM�hM�hMLhMHhM_>hh � srlinux::types::srl_nokia_common���Qubh(j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j�  u��bj  )��N}�(h�]��regex�h�)��N}�(hX�  ^(?:(?:[^%]+)(?:%(?:mgmt0\.0|system0\.0|lo(?:0|1[0-9][0-9]|2(?:[0-4][0-9]|5[0-5])|[1-9][0-9]|[1-9])\.(?:0|[1-9](?:\d){0,3})|ethernet-(?:[1-9](?:\d){0,1}(?:/[a-d])?(?:/[1-9](?:\d){0,1})?/(?:(?:[1-9](?:\d){0,1})|(?:1[01]\d)|(?:12[0-8])))\.(?:[0]|[1-9](?:\d){0,3})|irb(?:0|1[0-9][0-9]|2(?:[0-4][0-9]|5[0-5])|[1-9][0-9]|[1-9])\.(?:0|[1-9](?:\d){0,3})|lag(?:(?:[1-9](?:\d){0,1})|(?:1[01]\d)|(?:12[0-8]))\.(?:0|[1-9](?:\d){0,3})))?)$(?!\n\Z)�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMk>h0h2)��N}�(hhhM�u��bu��b��ah�]�j�  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMa>h0h2)��N}�(hhhM�u��bu��bej.  ]�hh2)��N}�(hhhM�u��bj3  }�j5  Nh�]�(j�  j�  j�  eh�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj�  ubahNh0Nu��bej�  j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�(j0  j}  j�  ehM1>h0h2)��N}�(hhhM�u��bu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�(h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj�  ubj0  j}  j�  ehM<h0h2)��N}�(hhhM�u��bu��bhN)��}�(h(�ipv6_prefix�hR�-srlinux::types::srl_nokia_common::ipv6_prefix�hThW)��}�(hZNh[Nh(j�  hh � srlinux::types::srl_nokia_common���Qh^Nh_Nu}�h0h)��N}�(hK	hMhKhhhMu��bs��bh^XB  
An IPv6 prefix represented in full, shortened, or mixed
shortened format followed by a slash and CIDR mask (0 <= mask <=
128).
Source type expression:

    srl_nokia-common.yang:
    L268:    type string {
    L269:      pattern '((:|[0-9a-fA-F]{0,4}):)([0-9a-fA-F]{0,4}:){0,5}'
    L270:            + '((([0-9a-fA-F]{0,4}:)?(:|[0-9a-fA-F]{0,4}))|'
    L271:            + '(((25[0-5]|2[0-4][0-9]|[01]?[0-9]?[0-9])\.){3}'
    L272:            + '(25[0-5]|2[0-4][0-9]|[01]?[0-9]?[0-9])))'
    L273:            + '(/(([0-9])|([0-9]{2})|(1[0-1][0-9])|(12[0-8])))';
    L274:    }

�hZh
)��}�(h�string�hh)��N}�(hKhMhKhhhMu��bhMhMhKhKhMdFhh � srlinux::types::srl_nokia_common���Qubhnh�)��N}�(h�Khu]�(h�)��N}�(h(h
)��}�(h�std::validate_type�hh)��N}�(hK(hMhK:hhhMu��bhMhMhK:hK(hMsFhh � srlinux::types::srl_nokia_common���Qubh�]�(h�)��N}�(h�pydantic.constr�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�Fh0h2)��N}�(hhhMu��bu��bhy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKNhMhKRhhhMu��bhMhMhKRhKNhM�Fhh � srlinux::types::srl_nokia_common���Qubh(j  h�j  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j  u��bj  )��N}�(h�]��regex�h�)��N}�(hX  ^(?:(?:(?::|[0-9A-Fa-f]{0,4}):)(?:[0-9A-Fa-f]{0,4}:){0,5}(?:(?:(?:[0-9A-Fa-f]{0,4}:)?(?::|[0-9A-Fa-f]{0,4}))|(?:(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9]?[0-9])\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9]?[0-9])))(?:/(?:(?:[0-9])|(?:[0-9]{2})|(?:1[01][0-9])|(?:12[0-8]))))$(?!\n\Z)����      h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�Fh0h2)��N}�(hhhMu��bu��b��ah�]�j-  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�Fh0h2)��N}�(hhhMu��bu��bej.  ]�hh2)��N}�(hhhMu��bj3  }�j5  Nh�]�(j  j  j)  eh�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j	  hh � srlinux::types::srl_nokia_common���QhTj  ubahNh0Nu��bh�)��N}�(h�h�]�hNh.]�hNh0Nu��bejE  jF  h�j  h�]�hNh.]�jL  ahNh0Nu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�(h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj�  ubjL  ehMOFh0h2)��N}�(hhhMu��bu��bhN)��}�(h(�ipv6_prefix_with_host_bits�hR�<srlinux::types::srl_nokia_common::ipv6_prefix_with_host_bits�hThW)��}�(hZNh[Nh(jg  hh � srlinux::types::srl_nokia_common���Qh^Nh_Nu}�h0h)��N}�(hK	hM"hK#hhhM"u��bs��bh^�t
An IPv6 prefix with host bits.
Source type expression:

    srl_nokia-common.yang:
    L320:    type ipv6-prefix;

�hZh
)��}�(h�ipv6_prefix�hh)��N}�(hK'hM"hK2hhhM"u��bhM"hM"hK2hK'hM6Jhh � srlinux::types::srl_nokia_common���Qubhnh�)��N}�(h�Khu]�(hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hK<hM"hK@hhhM"u��bhM"hM"hK@hK<hMDJhh � srlinux::types::srl_nokia_common���Qubh(j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j�  u��bhy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKDhM"hKHhhhM"u��bhM"hM"hKHhKDhMLJhh � srlinux::types::srl_nokia_common���Qubh(j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j�  u��bejE  jF  h�j}  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMEJh0h2)��N}�(hhhM"u��bu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�jv  hh � srlinux::types::srl_nokia_common���QhTjs  ubahMJh0h2)��N}�(hhhM"u��bu��bhN)��}�(h(�
local_file�hR�,srlinux::types::srl_nokia_common::local_file�hThW)��}�(hZNh[Nh(j�  hh � srlinux::types::srl_nokia_common���Qh^Nh_Nu}�h0h)��N}�(hK	hM,hKhhhM,u��bs��bh^��
A regular expression matching a local file
Source type expression:

    srl_nokia-common.yang:
    L957:    type string {
    L958:      pattern '(/[0-9A-Za-z_\-\.]+)+';
    L959:    }

�hZh
)��}�(h�string�hh)��N}�(hKhM,hKhhhM,u��bhM,hM,hKhKhM�Jhh � srlinux::types::srl_nokia_common���Qubhnh�)��N}�(h�Khu]�(h�)��N}�(h(h
)��}�(h�std::validate_type�hh)��N}�(hK'hM,hK9hhhM,u��bhM,hM,hK9hK'hM�Jhh � srlinux::types::srl_nokia_common���Qubh�]�(h�)��N}�(h�pydantic.constr�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMKh0h2)��N}�(hhhM,u��bu��bhy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKMhM,hKQhhhM,u��bhM,hM,hKQhKMhMKhh � srlinux::types::srl_nokia_common���Qubh(j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j�  u��bj  )��N}�(h�]��regex�h�)��N}�(h�%^(?:(?:/[\-\.0-9A-Z_a-z]+)+)$(?!\n\Z)�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM%Kh0h2)��N}�(hhhM,u��bu��b��ah�]�j�  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMKh0h2)��N}�(hhhM,u��bu��bej.  ]�hh2)��N}�(hhhM,u��bj3  }�j5  Nh�]�(j�  j�  j�  eh�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj�  ubahNh0Nu��bh�)��N}�(h�h�]�hNh.]�hNh0Nu��bejE  jF  h�j�  h�]�hNh.]�j  ahNh0Nu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�(h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj�  ubj  ehM�Jh0h2)��N}�(hhhM,u��bu��bhN)��}�(h(�mac_address�hR�-srlinux::types::srl_nokia_common::mac_address�hThW)��}�(hZNh[Nh(j,  hh � srlinux::types::srl_nokia_common���Qh^Nh_Nu}�h0h)��N}�(hK	hM8hKhhhM8u��bs��bh^X~  
The mac-address type represents an IEEE 802 MAC address.
The canonical representation uses lowercase characters.

In the value set and its semantics, this type is equivalent
to the MacAddress textual convention of the SMIv2.
Source type expression:

    srl_nokia-common.yang:
    L334:    type string {
    L335:      pattern '[0-9a-fA-F]{2}(:[0-9a-fA-F]{2}){5}';
    L336:    }

�hZh
)��}�(h�string�hh)��N}�(hKhM8hKhhhM8u��bhM8hM8hKhKhM3Lhh � srlinux::types::srl_nokia_common���Qubhnh�)��N}�(h�Khu]�(h�)��N}�(h(h
)��}�(h�std::validate_type�hh)��N}�(hK(hM8hK:hhhM8u��bhM8hM8hK:hK(hMBLhh � srlinux::types::srl_nokia_common���Qubh�]�(h�)��N}�(h�pydantic.constr�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMPLh0h2)��N}�(hhhM8u��bu��bhy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKNhM8hKRhhhM8u��bhM8hM8hKRhKNhMgLhh � srlinux::types::srl_nokia_common���Qubh(j]  h�j]  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j^  u��bj  )��N}�(h�]��regex�h�)��N}�(h�2^(?:[0-9A-Fa-f]{2}(?::[0-9A-Fa-f]{2}){5})$(?!\n\Z)�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMsLh0h2)��N}�(hhhM8u��bu��b��ah�]�jl  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMiLh0h2)��N}�(hhhM8u��bu��bej.  ]�hh2)��N}�(hhhM8u��bj3  }�j5  Nh�]�(jN  jY  jh  eh�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�jH  hh � srlinux::types::srl_nokia_common���QhTjE  ubahNh0Nu��bh�)��N}�(h�h�]�hNh.]�hNh0Nu��bejE  jF  h�jB  h�]�hNh.]�j�  ahNh0Nu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�(h�)��}�(h�j;  hh � srlinux::types::srl_nokia_common���QhTj8  ubj�  ehMLh0h2)��N}�(hhhM8u��bu��bhN)��}�(h(�mpls_label_non_reserved�hR�9srlinux::types::srl_nokia_common::mpls_label_non_reserved�hThW)��}�(hZNh[Nh(j�  hh � srlinux::types::srl_nokia_common���Qh^Nh_Nu}�h0h)��N}�(hK	hMHhK hhhMHu��bs��bh^��

Source type expression:

    srl_nokia-common.yang:
    L591:    type uint32 {
    L592:      range "16..1048575";
    L593:    }

�hZh
)��}�(h�srlinux::types::uint32�hh)��N}�(hK$hMHhK:hhhMHu��bhMHhMHhK:hK$hMeNhh � srlinux::types::srl_nokia_common���Qubhnjm  )��N}�(jp  Khu]�(js  )��N}�(jv  Khu]�(hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKDhMHhKHhhhMHu��bhMHhMHhKHhKDhMyNhh � srlinux::types::srl_nokia_common���Qubh(j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j�  u��bh�)��N}�(hKh�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM}Nh0h2)��N}�(hhhMHu��bu��bej�  j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMzNh0h2)��N}�(hhhMHu��bu��bj�  )��N}�(j�  Khu]�(hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKShMHhKWhhhMHu��bhMHhMHhKWhKShM�Nhh � srlinux::types::srl_nokia_common���Qubh(j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j�  u��bh�)��N}�(hJ�� h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�Nh0h2)��N}�(hhhMHu��bu��bej�  j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�Nh0h2)��N}�(hhhMHu��bu��bej�  j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�Nh0h2)��N}�(hhhMHu��bu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj�  ubahM:Nh0h2)��N}�(hhhMHu��bu��bhN)��}�(h(�*mpls_label_with_implicit_and_explicit_null�hR�Lsrlinux::types::srl_nokia_common::mpls_label_with_implicit_and_explicit_null�hThW)��}�(hZNh[Nh(j  hh � srlinux::types::srl_nokia_common���Qh^Nh_Nu}�h0h)��N}�(hK	hMThK3hhhMTu��bs��bh^X�  

Source type expression:

    srl_nokia-common.yang:
    L611:    type union {
    L612:      type mpls-label-non-reserved;
    L613:      type enumeration {
    L614:        enum IPV4_EXPLICIT_NULL {
    L615:          value 0;
    L616:        }
    L617:        enum IPV6_EXPLICIT_NULL {
    L618:          value 2;
    L619:        }
    L620:        enum IMPLICIT_NULL {
    L621:          value 3;
    L622:        }
    L623:      }
    L624:    }

�hZh
)��}�(h�string�hh)��N}�(hK7hMThK=hhhMTu��bhMThMThK=hK7hM_Ohh � srlinux::types::srl_nokia_common���Qubhnj  )��N}�(j  Khu]�(jm  )��N}�(jp  Khu]�(h�)��N}�(h(h
)��}�(h�srlinux::is_int�hh)��N}�(hKhMUhKhhhMUu��bhMUhMUhKhKhMxOhh � srlinux::types::srl_nokia_common���Qubh�]�hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKhMUhKhhhMUu��bhMUhMUhKhKhM�Ohh � srlinux::types::srl_nokia_common���Qubh(jD  h�jD  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0jE  u��baj.  ]�hh2)��N}�(hhhMUu��bj3  }�j5  Nh�]�j@  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j:  hh � srlinux::types::srl_nokia_common���QhTj7  ubahNh0Nu��bh�)��N}�(h(h
)��}�(h�srlinux::validate_type�hh)��N}�(hKhMUhK5hhhMUu��bhMUhMUhK5hKhM�Ohh � srlinux::types::srl_nokia_common���Qubh�]�(h�)��N}�(h(h
)��}�(h�int�hh)��N}�(hK6hMUhK9hhhMUu��bhMUhMUhK9hK6hM�Ohh � srlinux::types::srl_nokia_common���Qubh�]�hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hK:hMUhK>hhhMUu��bhMUhMUhK>hK:hM�Ohh � srlinux::types::srl_nokia_common���Qubh(jx  h�jx  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0jy  u��baj.  ]�hh2)��N}�(hhhMUu��bj3  }�j5  Nh�]�jt  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�jn  hh � srlinux::types::srl_nokia_common���QhTjk  ubahNh0Nu��bh�)��N}�(h�9srlinux::types::srl_nokia_common::mpls_label_non_reserved�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�Oh0h2)��N}�(hhhMUu��bu��bej.  ]�hh2)��N}�(hhhMUu��bj3  }�j5  Nh�]�(ji  j�  eh�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�jc  hh � srlinux::types::srl_nokia_common���QhTj`  ubahNh0Nu��bej�  j�  h�j4  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�(jY  j�  ehM�Oh0h2)��N}�(hhhMUu��bu��bhq)��N}�(htKhu]�(hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKhMVhKhhhMVu��bhMVhMVhKhKhM�Ohh � srlinux::types::srl_nokia_common���Qubh(j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j�  u��bh�)��N}�(h�]�(h�)��N}�(h�IPV4_EXPLICIT_NULL�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�Oh0h2)��N}�(hhhMVu��bu��bh�)��N}�(h�IPV6_EXPLICIT_NULL�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMPh0h2)��N}�(hhhMVu��bu��bh�)��N}�(h�IMPLICIT_NULL�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM$Ph0h2)��N}�(hhhMVu��bu��beh�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�Oh0h2)��N}�(hhhMVu��bu��beh�h�h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�Oh0h2)��N}�(hhhMVu��bu��bej�  j�  h�j1  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�(jY  j�  ehM�Oh0h2)��N}�(hhhMVu��bu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�(h�)��}�(h�j*  hh � srlinux::types::srl_nokia_common���QhTj'  ubjY  j�  ehM+Oh0h2)��N}�(hhhMTu��bu��bhN)��}�(h(�name�hR�&srlinux::types::srl_nokia_common::name�hThW)��}�(hZNh[Nh(j  hh � srlinux::types::srl_nokia_common���Qh^Nh_Nu}�h0h)��N}�(hK	hMnhKhhhMnu��bs��bh^��
A user provided name
Source type expression:

    srl_nokia-common.yang:
    L897:    type alphanumeric {
    L898:      length "1..255";
    L899:    }

�hZh
)��}�(h�alphanumeric�hh)��N}�(hKhMnhKhhhMnu��bhMnhMnhKhKhM$Rhh � srlinux::types::srl_nokia_common���Qubhnjm  )��N}�(jp  Khu]�(js  )��N}�(jv  Khu]�(h�)��N}�(h(h
)��}�(h�std::length�hh)��N}�(hK'hMnhK2hhhMnu��bhMnhMnhK2hK'hM3Rhh � srlinux::types::srl_nokia_common���Qubh�]�hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hK3hMnhK7hhhMnu��bhMnhMnhK7hK3hM>Rhh � srlinux::types::srl_nokia_common���Qubh(j9  h�j9  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j:  u��baj.  ]�hh2)��N}�(hhhMnu��bj3  }�j5  Nh�]�j5  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j/  hh � srlinux::types::srl_nokia_common���QhTj,  ubahNh0Nu��bh�)��N}�(hKh�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMCRh0h2)��N}�(hhhMnu��bu��bej�  j�  h�j)  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�jN  ahM@Rh0h2)��N}�(hhhMnu��bu��bj�  )��N}�(j�  Khu]�(h�)��N}�(h(h
)��}�(h�std::length�hh)��N}�(hKBhMnhKMhhhMnu��bhMnhMnhKMhKBhMNRhh � srlinux::types::srl_nokia_common���Qubh�]�hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKNhMnhKRhhhMnu��bhMnhMnhKRhKNhMYRhh � srlinux::types::srl_nokia_common���Qubh(jw  h�jw  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0jx  u��baj.  ]�hh2)��N}�(hhhMnu��bj3  }�j5  Nh�]�js  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�jm  hh � srlinux::types::srl_nokia_common���QhTjj  ubahNh0Nu��bh�)��N}�(hK�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM^Rh0h2)��N}�(hhhMnu��bu��bej�  j�  h�jg  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�j�  ahM[Rh0h2)��N}�(hhhMnu��bu��bej�  j�  h�j&  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�(jN  j�  ehMERh0h2)��N}�(hhhMnu��bu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�(h�)��}�(h�j  hh � srlinux::types::srl_nokia_common���QhTj  ubjN  j�  ehMRh0h2)��N}�(hhhMnu��bu��bhN)��}�(h(�next_hop_type�hR�/srlinux::types::srl_nokia_common::next_hop_type�hThW)��}�(hZNh[Nh(j�  hh � srlinux::types::srl_nokia_common���Qh^Nh_Nu}�h0h)��N}�(hK	hMzhKhhhMzu��bs��bh^X)  

Source type expression:

    srl_nokia-common.yang:
    L1008:    type union {
    L1009:      type enumeration {
    L1010:        enum use-system-ipv4-address {
    L1011:          value 0;
    L1012:        }
    L1013:      }
    L1014:      type srl_nokia-comm:ip-address;
    L1015:    }

�hZh
)��}�(h�string�hh)��N}�(hKhMzhK hhhMzu��bhMzhMzhK hKhM&Shh � srlinux::types::srl_nokia_common���Qubhnj  )��N}�(j  Khu]�(h�)��N}�(h�Khu]�(hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKhM{hK	hhhM{u��bhM{hM{hK	hKhM:Shh � srlinux::types::srl_nokia_common���Qubh(j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j�  u��bh�)��N}�(h�use-system-ipv4-address�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM>Sh0h2)��N}�(hhhM{u��bu��bejE  jF  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM;Sh0h2)��N}�(hhhM{u��bu��bjm  )��N}�(jp  Khu]�(h�)��N}�(h(h
)��}�(h�srlinux::validate_type�hh)��N}�(hKhM|hKhhhM|u��bhM|hM|hKhKhMhShh � srlinux::types::srl_nokia_common���Qubh�]�(hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKhM|hK#hhhM|u��bhM|hM|hK#hKhMzShh � srlinux::types::srl_nokia_common���Qubh(j  h�j  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j  u��bh�)��N}�(h�,srlinux::types::srl_nokia_common::ip_address�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM|Sh0h2)��N}�(hhhM|u��bu��bej.  ]�hh2)��N}�(hhhM|u��bj3  }�j5  Nh�]�(j  j  eh�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj�  ubahNh0Nu��bj  )��N}�(j  Khu]�(h�)��N}�(h(h
)��}�(h�srlinux::validate_type�hh)��N}�(hK	hM}hKhhhM}u��bhM}hM}hKhK	hM�Shh � srlinux::types::srl_nokia_common���Qubh�]�(hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hK hM}hK$hhhM}u��bhM}hM}hK$hK hM�Shh � srlinux::types::srl_nokia_common���Qubh(j>  h�j>  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j?  u��bh�)��N}�(h�.srlinux::types::srl_nokia_common::ipv4_address�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�Sh0h2)��N}�(hhhM}u��bu��bej.  ]�hh2)��N}�(hhhM}u��bj3  }�j5  Nh�]�(j:  jI  eh�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j4  hh � srlinux::types::srl_nokia_common���QhTj1  ubahNh0Nu��bh�)��N}�(h(h
)��}�(h�srlinux::validate_type�hh)��N}�(hKhM~hK"hhhM~u��bhM~hM~hK"hKhMThh � srlinux::types::srl_nokia_common���Qubh�]�(hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hK#hM~hK'hhhM~u��bhM~hM~hK'hK#hM/Thh � srlinux::types::srl_nokia_common���Qubh(jr  h�jr  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0js  u��bh�)��N}�(h�.srlinux::types::srl_nokia_common::ipv6_address�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM1Th0h2)��N}�(hhhM~u��bu��bej.  ]�hh2)��N}�(hhhM~u��bj3  }�j5  Nh�]�(jn  j}  eh�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�jh  hh � srlinux::types::srl_nokia_common���QhTje  ubahNh0Nu��bej�  j�  h�j.  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�(j^  j�  ehMTh0h2)��N}�(hhhM~u��bu��bej�  j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�(j'  j^  j�  ehM�Sh0h2)��N}�(hhhM|u��bu��bej�  j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�(j'  j^  j�  ehM\Sh0h2)��N}�(hhhM|u��bu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�(h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj�  ubj'  j^  j�  ehMSh0h2)��N}�(hhhMzu��bu��bhN)��}�(h(�
percentage�hR�,srlinux::types::srl_nokia_common::percentage�hThW)��}�(hZNh[Nh(j�  hh � srlinux::types::srl_nokia_common���Qh^Nh_Nu}�h0h)��N}�(hK	hM�hKhhhM�u��bs��bh^��
Integer indicating a percentage value
Source type expression:

    srl_nokia-common.yang:
    L808:    type uint8 {
    L809:      range "0..100";
    L810:    }

�hZh
)��}�(h�srlinux::types::uint8�hh)��N}�(hKhM�hK,hhhM�u��bhM�hM�hK,hKhM�Uhh � srlinux::types::srl_nokia_common���Qubhnjm  )��N}�(jp  Khu]�(js  )��N}�(jv  Khu]�(hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hK6hM�hK:hhhM�u��bhM�hM�hK:hK6hM�Uhh � srlinux::types::srl_nokia_common���Qubh(j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j�  u��bh�)��N}�(hK h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�Uh0h2)��N}�(hhhM�u��bu��bej�  j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�Uh0h2)��N}�(hhhM�u��bu��bj�  )��N}�(j�  Khu]�(hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKDhM�hKHhhhM�u��bhM�hM�hKHhKDhM�Uhh � srlinux::types::srl_nokia_common���Qubh(j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j   u��bh�)��N}�(hKdh�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�Uh0h2)��N}�(hhhM�u��bu��bej�  j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�Uh0h2)��N}�(hhhM�u��bu��bej�  j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�Uh0h2)��N}�(hhhM�u��bu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj�  ubahM�Uh0h2)��N}�(hhhM�u��bu��bhN)��}�(h(�port_number�hR�-srlinux::types::srl_nokia_common::port_number�hThW)��}�(hZNh[Nh(j2  hh � srlinux::types::srl_nokia_common���Qh^Nh_Nu}�h0h)��N}�(hK	hM�hKhhhM�u��bs��bh^X�  
The port-number type represents a 16-bit port number of an
Internet transport-layer protocol such as UDP, TCP, DCCP, or
SCTP.  Port numbers are assigned by IANA.  A current list of
all assignments is available from <http://www.iana.org/>.

Note that the port number value zero is reserved by IANA.  In
situations where the value zero does not make sense, it can
be excluded by subtyping the port-number type.
In the value set and its semantics, this type is equivalent
to the InetPortNumber textual convention of the SMIv2.
Source type expression:

    srl_nokia-common.yang:
    L425:    type uint16 {
    L426:      range "0..65535";
    L427:    }

�hZh
)��}�(h�srlinux::types::uint16�hh)��N}�(hKhM�hK.hhhM�u��bhM�hM�hK.hKhM�Vhh � srlinux::types::srl_nokia_common���Qubhnjm  )��N}�(jp  Khu]�(js  )��N}�(jv  Khu]�(hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hK8hM�hK<hhhM�u��bhM�hM�hK<hK8hM�Vhh � srlinux::types::srl_nokia_common���Qubh(jP  h�jP  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0jQ  u��bh�)��N}�(hK h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�Vh0h2)��N}�(hhhM�u��bu��bej�  j�  h�jK  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�Vh0h2)��N}�(hhhM�u��bu��bj�  )��N}�(j�  Khu]�(hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKFhM�hKJhhhM�u��bhM�hM�hKJhKFhM�Vhh � srlinux::types::srl_nokia_common���Qubh(jt  h�jt  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0ju  u��bh�)��N}�(hM��h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�Vh0h2)��N}�(hhhM�u��bu��bej�  j�  h�jo  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�Vh0h2)��N}�(hhhM�u��bu��bej�  j�  h�jH  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�Vh0h2)��N}�(hhhM�u��bu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�jA  hh � srlinux::types::srl_nokia_common���QhTj>  ubahM�Vh0h2)��N}�(hhhM�u��bu��bhN)��}�(h(�queue_index�hR�-srlinux::types::srl_nokia_common::queue_index�hThW)��}�(hZNh[Nh(j�  hh � srlinux::types::srl_nokia_common���Qh^Nh_Nu}�h0h)��N}�(hK	hM�hKhhhM�u��bs��bh^��

Source type expression:

    srl_nokia-common.yang:
    L1209:    type uint8 {
    L1210:      range "0..7";
    L1211:    }

�hZh
)��}�(h�srlinux::types::uint8�hh)��N}�(hKhM�hK-hhhM�u��bhM�hM�hK-hKhM�Yhh � srlinux::types::srl_nokia_common���Qubhnjm  )��N}�(jp  Khu]�(js  )��N}�(jv  Khu]�(hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hK7hM�hK;hhhM�u��bhM�hM�hK;hK7hM�Yhh � srlinux::types::srl_nokia_common���Qubh(j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j�  u��bh�)��N}�(hK h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�Yh0h2)��N}�(hhhM�u��bu��bej�  j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�Yh0h2)��N}�(hhhM�u��bu��bj�  )��N}�(j�  Khu]�(hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKEhM�hKIhhhM�u��bhM�hM�hKIhKEhM�Yhh � srlinux::types::srl_nokia_common���Qubh(j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j�  u��bh�)��N}�(hKh�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�Yh0h2)��N}�(hhhM�u��bu��bej�  j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�Yh0h2)��N}�(hhhM�u��bu��bej�  j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�Yh0h2)��N}�(hhhM�u��bu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj�  ubahM�Yh0h2)��N}�(hhhM�u��bu��bhN)��}�(h(�route_distinguisher�hR�5srlinux::types::srl_nokia_common::route_distinguisher�hThW)��}�(hZNh[Nh(j  hh � srlinux::types::srl_nokia_common���Qh^Nh_Nu}�h0h)��N}�(hK	hM�hKhhhM�u��bs��bh^X{  
A route distinguisher value
Source type expression:

    srl_nokia-common.yang:
    L0975:    type union {
    L0976:      type string {
    L0977:        pattern '(6553[0-5]|655[0-2][0-9]|654[0-9]{2}|65[0-4][0-9]{2}|6[0-4][0-9]{3}|[1-5][0-9]{4}|[1-9][0-9]{1,3}|[0-9])'
    L0978:              + ':'
    L0979:              + '(429496729[0-5]|42949672[0-8][0-9]|4294967[0-1][0-9]{2}|429496[0-6][0-9]{3}|42949[0-5][0-9]{4}'
    L0980:              + '|4294[0-8][0-9]{5}|429[0-3][0-9]{6}|42[0-8][0-9]{7}|4[0-1][0-9]{8}|[1-3][0-9]{9}|[1-9][0-9]{1,8}|[0-9])';
    L0981:      }
    L0982:      type string {
    L0983:        pattern '(([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])'
    L0984:              + ':'
    L0985:              + '(6553[0-5]|655[0-2][0-9]|654[0-9]{2}|65[0-4][0-9]{2}|6[0-4][0-9]{3}|[1-5][0-9]{4}|[1-9][0-9]{1,3}|[0-9])';
    L0986:      }
    L0987:      type string {
    L0988:        pattern '(429496729[0-5]|42949672[0-8][0-9]|4294967[0-1][0-9]{2}|429496[0-6][0-9]{3}|42949[0-5][0-9]{4}'
    L0989:              + '|4294[0-8][0-9]{5}|429[0-3][0-9]{6}|42[0-8][0-9]{7}|4[0-1][0-9]{8}|[1-3][0-9]{9}|[1-9][0-9]{1,8}|[0-9])'
    L0990:              + ':'
    L0991:              + '(6553[0-5]|655[0-2][0-9]|654[0-9]{2}|65[0-4][0-9]{2}|6[0-4][0-9]{3}|[1-5][0-9]{4}|[1-9][0-9]{1,3}|[0-9])';
    L0992:      }
    L0993:      type string {
    L0994:        pattern '(6553[0-5]|655[0-2][0-9]|654[0-9]{2}|65[0-4][0-9]{2}|6[0-4][0-9]{3}|[1-5][0-9]{4}|[1-9][0-9]{1,3}|[0-9])'
    L0995:              + '.'
    L0996:              + '(6553[0-5]|655[0-2][0-9]|654[0-9]{2}|65[0-4][0-9]{2}|6[0-4][0-9]{3}|[1-5][0-9]{4}|[1-9][0-9]{1,3}|[0-9])'
    L0997:              + ':'
    L0998:              + '(6553[0-5]|655[0-2][0-9]|654[0-9]{2}|65[0-4][0-9]{2}|6[0-4][0-9]{3}|[1-5][0-9]{4}|[1-9][0-9]{1,3}|[0-9])';
    L0999:      }
    L1000:    }

�hZh
)��}�(h�string�hh)��N}�(hK hM�hK&hhhM�u��bhM�hM�hK&hK hM�Zhh � srlinux::types::srl_nokia_common���Qubhnj  )��N}�(j  Khu]�(j  )��N}�(j  Khu]�(j  )��N}�(j  Khu]�(h�)��N}�(h(h
)��}�(h�std::validate_type�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM�Zhh � srlinux::types::srl_nokia_common���Qubh�]�(h�)��N}�(h�pydantic.constr�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�Zh0h2)��N}�(hhhM�u��bu��bhy)��N}�(h|h
)��}�(h�self�hh)��N}�(hK+hM�hK/hhhM�u��bhM�hM�hK/hK+hM�Zhh � srlinux::types::srl_nokia_common���Qubh(jS  h�jS  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0jT  u��bj  )��N}�(h�]��regex�h�)��N}�(hX>  ^(?:(?:6553[0-5]|655[0-2][0-9]|654[0-9]{2}|65[0-4][0-9]{2}|6[0-4][0-9]{3}|[1-5][0-9]{4}|[1-9][0-9]{1,3}|[0-9]):(?:429496729[0-5]|42949672[0-8][0-9]|4294967[01][0-9]{2}|429496[0-6][0-9]{3}|42949[0-5][0-9]{4}|4294[0-8][0-9]{5}|429[0-3][0-9]{6}|42[0-8][0-9]{7}|4[01][0-9]{8}|[1-3][0-9]{9}|[1-9][0-9]{1,8}|[0-9]))$(?!\n\Z)�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�Zh0h2)��N}�(hhhM�u��bu��b��ah�]�jb  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�Zh0h2)��N}�(hhhM�u��bu��bej.  ]�hh2)��N}�(hhhM�u��bj3  }�j5  Nh�]�(jD  jO  j^  eh�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j>  hh � srlinux::types::srl_nokia_common���QhTj;  ubahNh0Nu��bh�)��N}�(h(h
)��}�(h�std::validate_type�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM\hh � srlinux::types::srl_nokia_common���Qubh�]�(h�)��N}�(h�pydantic.constr�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM%\h0h2)��N}�(hhhM�u��bu��bhy)��N}�(h|h
)��}�(h�self�hh)��N}�(hK.hM�hK2hhhM�u��bhM�hM�hK2hK.hM<\hh � srlinux::types::srl_nokia_common���Qubh(j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j�  u��bj  )��N}�(h�]��regex�h�)��N}�(h��^(?:(?:(?:[0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.){3}(?:[0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5]):(?:6553[0-5]|655[0-2][0-9]|654[0-9]{2}|65[0-4][0-9]{2}|6[0-4][0-9]{3}|[1-5][0-9]{4}|[1-9][0-9]{1,3}|[0-9]))$(?!\n\Z)�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMH\h0h2)��N}�(hhhM�u��bu��b��ah�]�j�  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM>\h0h2)��N}�(hhhM�u��bu��bej.  ]�hh2)��N}�(hhhM�u��bj3  }�j5  Nh�]�(j�  j�  j�  eh�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj�  ubahNh0Nu��bej�  j�  h�j8  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�(j�  j�  ehM\h0h2)��N}�(hhhM�u��bu��bh�)��N}�(h(h
)��}�(h�std::validate_type�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhMF]hh � srlinux::types::srl_nokia_common���Qubh�]�(h�)��N}�(h�pydantic.constr�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMT]h0h2)��N}�(hhhM�u��bu��bhy)��N}�(h|h
)��}�(h�self�hh)��N}�(hK.hM�hK2hhhM�u��bhM�hM�hK2hK.hMk]hh � srlinux::types::srl_nokia_common���Qubh(j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j�  u��bj  )��N}�(h�]��regex�h�)��N}�(hX>  ^(?:(?:429496729[0-5]|42949672[0-8][0-9]|4294967[01][0-9]{2}|429496[0-6][0-9]{3}|42949[0-5][0-9]{4}|4294[0-8][0-9]{5}|429[0-3][0-9]{6}|42[0-8][0-9]{7}|4[01][0-9]{8}|[1-3][0-9]{9}|[1-9][0-9]{1,8}|[0-9]):(?:6553[0-5]|655[0-2][0-9]|654[0-9]{2}|65[0-4][0-9]{2}|6[0-4][0-9]{3}|[1-5][0-9]{4}|[1-9][0-9]{1,3}|[0-9]))$(?!\n\Z)�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMw]h0h2)��N}�(hhhM�u��bu��b��ah�]�j  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMm]h0h2)��N}�(hhhM�u��bu��bej.  ]�hh2)��N}�(hhhM�u��bj3  }�j5  Nh�]�(j�  j�  j   eh�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj�  ubahNh0Nu��bej�  j�  h�j5  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�(j�  j�  j#  ehM>]h0h2)��N}�(hhhM�u��bu��bh�)��N}�(h(h
)��}�(h�std::validate_type�hh)��N}�(hKhM�hKhhhM�u��bhM�hM�hKhKhM�^hh � srlinux::types::srl_nokia_common���Qubh�]�(h�)��N}�(h�pydantic.constr�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�^h0h2)��N}�(hhhM�u��bu��bhy)��N}�(h|h
)��}�(h�self�hh)��N}�(hK.hM�hK2hhhM�u��bhM�hM�hK2hK.hM�^hh � srlinux::types::srl_nokia_common���Qubh(jJ  h�jJ  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0jK  u��bj  )��N}�(h�]��regex�h�)��N}�(hXR  ^(?:(?:6553[0-5]|655[0-2][0-9]|654[0-9]{2}|65[0-4][0-9]{2}|6[0-4][0-9]{3}|[1-5][0-9]{4}|[1-9][0-9]{1,3}|[0-9])[^
](?:6553[0-5]|655[0-2][0-9]|654[0-9]{2}|65[0-4][0-9]{2}|6[0-4][0-9]{3}|[1-5][0-9]{4}|[1-9][0-9]{1,3}|[0-9]):(?:6553[0-5]|655[0-2][0-9]|654[0-9]{2}|65[0-4][0-9]{2}|6[0-4][0-9]{3}|[1-5][0-9]{4}|[1-9][0-9]{1,3}|[0-9]))$(?!\n\Z)�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�^h0h2)��N}�(hhhM�u��bu��b��ah�]�jY  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�^h0h2)��N}�(hhhM�u��bu��bej.  ]�hh2)��N}�(hhhM�u��bj3  }�j5  Nh�]�(j;  jF  jU  eh�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j5  hh � srlinux::types::srl_nokia_common���QhTj2  ubahNh0Nu��bej�  j�  h�j2  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�(j�  j�  j#  jx  ehM�^h0h2)��N}�(hhhM�u��bu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�(h�)��}�(h�j+  hh � srlinux::types::srl_nokia_common���QhTj(  ubj�  j�  j#  jx  ehMcZh0h2)��N}�(hhhM�u��bu��bhN)��}�(h(�routing_password�hR�2srlinux::types::srl_nokia_common::routing_password�hThW)��}�(hZNh[Nh(j�  hh � srlinux::types::srl_nokia_common���Qh^Nh_Nu}�h0h)��N}�(hK	hM�hKhhhM�u��bs��bh^X�  
This type is indicative of a password that is used within
a routing protocol which can be returned in plain text to the
NMS by the local system. Such passwords are typically stored
as encrypted strings. Since the encryption used is generally
well known, it is possible to extract the original value from
the string - and hence this format is not considered secure.
Leaves specified with this type should not be modified by
the system, and should be returned to the end-user in plain
text. This type exists to differentiate passwords, which
may be sensitive, from other string leaves. It could, for
example, be used by the NMS to censor this data when
viewed by particular users.
Source type expression:

    srl_nokia-common.yang:
    L1315:    type string;

�hZh
)��}�(h�string�hh)��N}�(hKhM�hK#hhhM�u��bhM�hM�hK#hKhM�ghh � srlinux::types::srl_nokia_common���Qubhnh�)��N}�(h�Khu]�(hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hK-hM�hK1hhhM�u��bhM�hM�hK1hK-hM	hhh � srlinux::types::srl_nokia_common���Qubh(j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j�  u��bhy)��N}�(h|h
)��}�(h�self�hh)��N}�(hK5hM�hK9hhhM�u��bhM�hM�hK9hK5hMhhh � srlinux::types::srl_nokia_common���Qubh(j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j�  u��bejE  jF  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM
hh0h2)��N}�(hhhM�u��bu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj�  ubahM�gh0h2)��N}�(hhhM�u��bu��bhN)��}�(h(�subinterface_all�hR�2srlinux::types::srl_nokia_common::subinterface_all�hThW)��}�(hZNh[Nh(j�  hh � srlinux::types::srl_nokia_common���Qh^Nh_Nu}�h0h)��N}�(hK	hM�hKhhhM�u��bs��bh^X�  

Source type expression:

    srl_nokia-common.yang:
    L479:    type subinterface-name {
    L480:      length "5..25";
    L481:      pattern '(mgmt0\.0|'
    L482:            + 'system0\.0|'
    L483:            + 'lo(0|1[0-9][0-9]|2([0-4][0-9]|5[0-5])|[1-9][0-9]|[1-9])\.(0|[1-9](\d){0,3})|'
    L484:            + 'ethernet-([1-9](\d){0,1}(/[abcd])?(/[1-9](\d){0,1})?/(([1-9](\d){0,1})|(1[0-1]\d)|(12[0-8])))\.([0]|[1-9](\d){0,3})|'
    L485:            + 'irb(0|1[0-9][0-9]|2([0-4][0-9]|5[0-5])|[1-9][0-9]|[1-9])\.(0|[1-9](\d){0,3})|'
    L486:            + 'lag(([1-9](\d){0,1})|(1[0-1]\d)|(12[0-8]))\.(0|[1-9](\d){0,3}))';
    L487:    }

�hZh
)��}�(h�subinterface_name�hh)��N}�(hKhM�hK.hhhM�u��bhM�hM�hK.hKhM?khh � srlinux::types::srl_nokia_common���Qubhnjm  )��N}�(jp  Khu]�(jm  )��N}�(jp  Khu]�(js  )��N}�(jv  Khu]�(h�)��N}�(h(h
)��}�(h�std::length�hh)��N}�(hK8hM�hKChhhM�u��bhM�hM�hKChK8hMNkhh � srlinux::types::srl_nokia_common���Qubh�]�hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKDhM�hKHhhhM�u��bhM�hM�hKHhKDhMYkhh � srlinux::types::srl_nokia_common���Qubh(j
  h�j
  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j  u��baj.  ]�hh2)��N}�(hhhM�u��bj3  }�j5  Nh�]�j  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j   hh � srlinux::types::srl_nokia_common���QhTj�  ubahNh0Nu��bh�)��N}�(hKh�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM^kh0h2)��N}�(hhhM�u��bu��bej�  j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�j  ahM[kh0h2)��N}�(hhhM�u��bu��bj�  )��N}�(j�  Khu]�(h�)��N}�(h(h
)��}�(h�std::length�hh)��N}�(hKShM�hK^hhhM�u��bhM�hM�hK^hKShMikhh � srlinux::types::srl_nokia_common���Qubh�]�hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hK_hM�hKchhhM�u��bhM�hM�hKchK_hMtkhh � srlinux::types::srl_nokia_common���Qubh(jH  h�jH  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0jI  u��baj.  ]�hh2)��N}�(hhhM�u��bj3  }�j5  Nh�]�jD  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j>  hh � srlinux::types::srl_nokia_common���QhTj;  ubahNh0Nu��bh�)��N}�(hKh�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMykh0h2)��N}�(hhhM�u��bu��bej�  j�  h�j8  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�j]  ahMvkh0h2)��N}�(hhhM�u��bu��bej�  j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�(j  j]  ehM`kh0h2)��N}�(hhhM�u��bu��bh�)��N}�(h(h
)��}�(h�std::validate_type�hh)��N}�(hKohM�hK�hhhM�u��bhM�hM�hK�hKohM�khh � srlinux::types::srl_nokia_common���Qubh�]�(h�)��N}�(h�pydantic.constr�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�kh0h2)��N}�(hhhM�u��bu��bhy)��N}�(h|h
)��}�(h�self�hh)��N}�(hK�hM�hK�hhhM�u��bhM�hM�hK�hK�hM�khh � srlinux::types::srl_nokia_common���Qubh(j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j�  u��bj  )��N}�(h�]��regex�h�)��N}�(hX�  ^(?:(?:mgmt0\.0|system0\.0|lo(?:0|1[0-9][0-9]|2(?:[0-4][0-9]|5[0-5])|[1-9][0-9]|[1-9])\.(?:0|[1-9](?:\d){0,3})|ethernet-(?:[1-9](?:\d){0,1}(?:/[a-d])?(?:/[1-9](?:\d){0,1})?/(?:(?:[1-9](?:\d){0,1})|(?:1[01]\d)|(?:12[0-8])))\.(?:[0]|[1-9](?:\d){0,3})|irb(?:0|1[0-9][0-9]|2(?:[0-4][0-9]|5[0-5])|[1-9][0-9]|[1-9])\.(?:0|[1-9](?:\d){0,3})|lag(?:(?:[1-9](?:\d){0,1})|(?:1[01]\d)|(?:12[0-8]))\.(?:0|[1-9](?:\d){0,3})))$(?!\n\Z)�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�kh0h2)��N}�(hhhM�u��bu��b��ah�]�j�  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�kh0h2)��N}�(hhhM�u��bu��bej.  ]�hh2)��N}�(hhhM�u��bj3  }�j5  Nh�]�(j�  j�  j�  eh�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj~  ubahNh0Nu��bej�  j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�(j  j]  j�  ehM|kh0h2)��N}�(hhhM�u��bu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�(h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj�  ubj  j]  j�  ehMkh0h2)��N}�(hhhM�u��bu��bhN)��}�(h(�subinterface_eth_lag�hR�6srlinux::types::srl_nokia_common::subinterface_eth_lag�hThW)��}�(hZNh[Nh(j�  hh � srlinux::types::srl_nokia_common���Qh^Nh_Nu}�h0h)��N}�(hK	hMhKhhhMu��bs��bh^XZ  

Source type expression:

    srl_nokia-common.yang:
    L491:    type subinterface-name {
    L492:      length "5..25";
    L493:      pattern '(ethernet-([1-9](\d){0,1}(/[abcd])?(/[1-9](\d){0,1})?/(([1-9](\d){0,1})|(1[0-1]\d)|(12[0-8])))\.([0]|[1-9](\d){0,3})|lag(([1-9](\d){0,1})|(1[0-1]\d)|(12[0-8]))\.(0|[1-9](\d){0,3}))';
    L494:    }

�hZh
)��}�(h�subinterface_name�hh)��N}�(hK!hMhK2hhhMu��bhMhMhK2hK!hM5phh � srlinux::types::srl_nokia_common���Qubhnjm  )��N}�(jp  Khu]�(jm  )��N}�(jp  Khu]�(js  )��N}�(jv  Khu]�(h�)��N}�(h(h
)��}�(h�std::length�hh)��N}�(hK<hMhKGhhhMu��bhMhMhKGhK<hMDphh � srlinux::types::srl_nokia_common���Qubh�]�hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKHhMhKLhhhMu��bhMhMhKLhKHhMOphh � srlinux::types::srl_nokia_common���Qubh(j  h�j  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j  u��baj.  ]�hh2)��N}�(hhhMu��bj3  }�j5  Nh�]�j  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j  hh � srlinux::types::srl_nokia_common���QhTj�  ubahNh0Nu��bh�)��N}�(hKh�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMTph0h2)��N}�(hhhMu��bu��bej�  j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�j   ahMQph0h2)��N}�(hhhMu��bu��bj�  )��N}�(j�  Khu]�(h�)��N}�(h(h
)��}�(h�std::length�hh)��N}�(hKWhMhKbhhhMu��bhMhMhKbhKWhM_phh � srlinux::types::srl_nokia_common���Qubh�]�hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKchMhKghhhMu��bhMhMhKghKchMjphh � srlinux::types::srl_nokia_common���Qubh(jI  h�jI  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0jJ  u��baj.  ]�hh2)��N}�(hhhMu��bj3  }�j5  Nh�]�jE  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j?  hh � srlinux::types::srl_nokia_common���QhTj<  ubahNh0Nu��bh�)��N}�(hKh�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMoph0h2)��N}�(hhhMu��bu��bej�  j�  h�j9  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�j^  ahMlph0h2)��N}�(hhhMu��bu��bej�  j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�(j   j^  ehMVph0h2)��N}�(hhhMu��bu��bh�)��N}�(h(h
)��}�(h�std::validate_type�hh)��N}�(hKshMhK�hhhMu��bhMhMhK�hKshM{phh � srlinux::types::srl_nokia_common���Qubh�]�(h�)��N}�(h�pydantic.constr�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�ph0h2)��N}�(hhhMu��bu��bhy)��N}�(h|h
)��}�(h�self�hh)��N}�(hK�hMhK�hhhMu��bhMhMhK�hK�hM�phh � srlinux::types::srl_nokia_common���Qubh(j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j�  u��bj  )��N}�(h�]��regex�h�)��N}�(h��^(?:(?:ethernet-(?:[1-9](?:\d){0,1}(?:/[a-d])?(?:/[1-9](?:\d){0,1})?/(?:(?:[1-9](?:\d){0,1})|(?:1[01]\d)|(?:12[0-8])))\.(?:[0]|[1-9](?:\d){0,3})|lag(?:(?:[1-9](?:\d){0,1})|(?:1[01]\d)|(?:12[0-8]))\.(?:0|[1-9](?:\d){0,3})))$(?!\n\Z)�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�ph0h2)��N}�(hhhMu��bu��b��ah�]�j�  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�ph0h2)��N}�(hhhMu��bu��bej.  ]�hh2)��N}�(hhhMu��bj3  }�j5  Nh�]�(j�  j�  j�  eh�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj  ubahNh0Nu��bej�  j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�(j   j^  j�  ehMrph0h2)��N}�(hhhMu��bu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�(h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj�  ubj   j^  j�  ehMph0h2)��N}�(hhhMu��bu��bhN)��}�(h(�subinterface_name�hR�3srlinux::types::srl_nokia_common::subinterface_name�hThW)��}�(hZNh[Nh(j�  hh � srlinux::types::srl_nokia_common���Qh^Nh_Nu}�h0h)��N}�(hK	hMhKhhhMu��bs��bh^�Q

Source type expression:

    srl_nokia-common.yang:
    L454:    type string;

�hZh
)��}�(h�string�hh)��N}�(hKhMhK$hhhMu��bhMhMhK$hKhM+shh � srlinux::types::srl_nokia_common���Qubhnh�)��N}�(h�Khu]�(hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hK.hMhK2hhhMu��bhMhMhK2hK.hM9shh � srlinux::types::srl_nokia_common���Qubh(j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j�  u��bhy)��N}�(h|h
)��}�(h�self�hh)��N}�(hK6hMhK:hhhMu��bhMhMhK:hK6hMAshh � srlinux::types::srl_nokia_common���Qubh(j
  h�j
  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j  u��bejE  jF  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM:sh0h2)��N}�(hhhMu��bu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj�  ubahMsh0h2)��N}�(hhhMu��bu��bhN)��}�(h(�subinterface_no_mgmt�hR�6srlinux::types::srl_nokia_common::subinterface_no_mgmt�hThW)��}�(hZNh[Nh(j+  hh � srlinux::types::srl_nokia_common���Qh^Nh_Nu}�h0h)��N}�(hK	hM$hKhhhM$u��bs��bh^Xf  

Source type expression:

    srl_nokia-common.yang:
    L498:    type subinterface-name {
    L499:      length "5..25";
    L500:      pattern '(system0\.0|'
    L501:            + 'lo(0|1[0-9][0-9]|2([0-4][0-9]|5[0-5])|[1-9][0-9]|[1-9])\.(0|[1-9](\d){0,3})|'
    L502:            + 'ethernet-([1-9](\d){0,1}(/[abcd])?(/[1-9](\d){0,1})?/(([1-9](\d){0,1})|(1[0-1]\d)|(12[0-8])))\.([0]|[1-9](\d){0,3})|'
    L503:            + 'irb(0|1[0-9][0-9]|2([0-4][0-9]|5[0-5])|[1-9][0-9]|[1-9])\.(0|[1-9](\d){0,3})|'
    L504:            + 'lag(([1-9](\d){0,1})|(1[0-1]\d)|(12[0-8]))\.(0|[1-9](\d){0,3}))';
    L505:    }

�hZh
)��}�(h�subinterface_name�hh)��N}�(hK!hM$hK2hhhM$u��bhM$hM$hK2hK!hM�shh � srlinux::types::srl_nokia_common���Qubhnjm  )��N}�(jp  Khu]�(jm  )��N}�(jp  Khu]�(js  )��N}�(jv  Khu]�(h�)��N}�(h(h
)��}�(h�std::length�hh)��N}�(hK<hM$hKGhhhM$u��bhM$hM$hKGhK<hM�shh � srlinux::types::srl_nokia_common���Qubh�]�hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKHhM$hKLhhhM$u��bhM$hM$hKLhKHhM�shh � srlinux::types::srl_nokia_common���Qubh(jW  h�jW  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0jX  u��baj.  ]�hh2)��N}�(hhhM$u��bj3  }�j5  Nh�]�jS  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�jM  hh � srlinux::types::srl_nokia_common���QhTjJ  ubahNh0Nu��bh�)��N}�(hKh�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�sh0h2)��N}�(hhhM$u��bu��bej�  j�  h�jG  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�jl  ahM�sh0h2)��N}�(hhhM$u��bu��bj�  )��N}�(j�  Khu]�(h�)��N}�(h(h
)��}�(h�std::length�hh)��N}�(hKWhM$hKbhhhM$u��bhM$hM$hKbhKWhM�shh � srlinux::types::srl_nokia_common���Qubh�]�hy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKchM$hKghhhM$u��bhM$hM$hKghKchMthh � srlinux::types::srl_nokia_common���Qubh(j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j�  u��baj.  ]�hh2)��N}�(hhhM$u��bj3  }�j5  Nh�]�j�  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj�  ubahNh0Nu��bh�)��N}�(hKh�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMth0h2)��N}�(hhhM$u��bu��bej�  j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�j�  ahMth0h2)��N}�(hhhM$u��bu��bej�  j�  h�jD  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�(jl  j�  ehM�sh0h2)��N}�(hhhM$u��bu��bh�)��N}�(h(h
)��}�(h�std::validate_type�hh)��N}�(hKshM$hK�hhhM$u��bhM$hM$hK�hKshMthh � srlinux::types::srl_nokia_common���Qubh�]�(h�)��N}�(h�pydantic.constr�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM th0h2)��N}�(hhhM$u��bu��bhy)��N}�(h|h
)��}�(h�self�hh)��N}�(hK�hM$hK�hhhM$u��bhM$hM$hK�hK�hM7thh � srlinux::types::srl_nokia_common���Qubh(j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j�  u��bj  )��N}�(h�]��regex�h�)��N}�(hX�  ^(?:(?:system0\.0|lo(?:0|1[0-9][0-9]|2(?:[0-4][0-9]|5[0-5])|[1-9][0-9]|[1-9])\.(?:0|[1-9](?:\d){0,3})|ethernet-(?:[1-9](?:\d){0,1}(?:/[a-d])?(?:/[1-9](?:\d){0,1})?/(?:(?:[1-9](?:\d){0,1})|(?:1[01]\d)|(?:12[0-8])))\.(?:[0]|[1-9](?:\d){0,3})|irb(?:0|1[0-9][0-9]|2(?:[0-4][0-9]|5[0-5])|[1-9][0-9]|[1-9])\.(?:0|[1-9](?:\d){0,3})|lag(?:(?:[1-9](?:\d){0,1})|(?:1[01]\d)|(?:12[0-8]))\.(?:0|[1-9](?:\d){0,3})))$(?!\n\Z)�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMCth0h2)��N}�(hhhM$u��bu��b��ah�]�j�  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM9th0h2)��N}�(hhhM$u��bu��bej.  ]�hh2)��N}�(hhhM$u��bj3  }�j5  Nh�]�(j�  j�  j�  eh�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj�  ubahNh0Nu��bej�  j�  h�jA  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�(jl  j�  j  ehM	th0h2)��N}�(hhhM$u��bu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�(h�)��}�(h�j:  hh � srlinux::types::srl_nokia_common���QhTj7  ubjl  j�  j  ehM�sh0h2)��N}�(hhhM$u��bu��bhN)��}�(h(�unicast_mac_address�hR�5srlinux::types::srl_nokia_common::unicast_mac_address�hThW)��}�(hZNh[Nh(j,  hh � srlinux::types::srl_nokia_common���Qh^Nh_Nu}�h0h)��N}�(hK	hM5hKhhhM5u��bs��bh^XZ  
A unicast MAC address.

The least significant bit of a MAC address first octet
is never set. The value 00:00:00:00:00:00 is not valid.
Source type expression:

    srl_nokia-common.yang:
    L351:    type string {
    L352:      pattern '([0-9a-fA-F][02468aceACE])(:[0-9a-fA-F]{2}){5}';
    L353:      pattern '.*[1-9a-fA-F].*';
    L354:    }

�hZh
)��}�(h�string�hh)��N}�(hK hM5hK&hhhM5u��bhM5hM5hK&hK hM�xhh � srlinux::types::srl_nokia_common���Qubhnjm  )��N}�(jp  Khu]�(h�)��N}�(h(h
)��}�(h�std::validate_type�hh)��N}�(hK0hM5hKBhhhM5u��bhM5hM5hKBhK0hM�xhh � srlinux::types::srl_nokia_common���Qubh�]�(h�)��N}�(h�pydantic.constr�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�xh0h2)��N}�(hhhM5u��bu��bhy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKVhM5hKZhhhM5u��bhM5hM5hKZhKVhM�xhh � srlinux::types::srl_nokia_common���Qubh(j]  h�j]  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j^  u��bj  )��N}�(h�]��regex�h�)��N}�(h�@^(?:(?:[0-9A-Fa-f][02468ACEace])(?::[0-9A-Fa-f]{2}){5})$(?!\n\Z)�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�xh0h2)��N}�(hhhM5u��bu��b��ah�]�jl  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM�xh0h2)��N}�(hhhM5u��bu��bej.  ]�hh2)��N}�(hhhM5u��bj3  }�j5  Nh�]�(jN  jY  jh  eh�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�jH  hh � srlinux::types::srl_nokia_common���QhTjE  ubahNh0Nu��bh�)��N}�(h(h
)��}�(h�std::validate_type�hh)��N}�(hK�hM5hK�hhhM5u��bhM5hM5hK�hK�hMyhh � srlinux::types::srl_nokia_common���Qubh�]�(h�)��N}�(h�pydantic.constr�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM'yh0h2)��N}�(hhhM5u��bu��bhy)��N}�(h|h
)��}�(h�self�hh)��N}�(hK�hM5hK�hhhM5u��bhM5hM5hK�hK�hM>yhh � srlinux::types::srl_nokia_common���Qubh(j�  h�j�  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j�  u��bj  )��N}�(h�]��regex�h�)��N}�(h�%^(?:[^
]*[1-9A-Fa-f][^
]*)$(?!\n\Z)�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hMJyh0h2)��N}�(hhhM5u��bu��b��ah�]�j�  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM@yh0h2)��N}�(hhhM5u��bu��bej.  ]�hh2)��N}�(hhhM5u��bj3  }�j5  Nh�]�(j�  j�  j�  eh�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j�  hh � srlinux::types::srl_nokia_common���QhTj�  ubahNh0Nu��bej�  j�  h�jB  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�(j�  j�  ehMyh0h2)��N}�(hhhM5u��bu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�(h�)��}�(h�j;  hh � srlinux::types::srl_nokia_common���QhTj8  ubj�  j�  ehMlxh0h2)��N}�(hhhM5u��bu��bhN)��}�(h(�uuid�hR�&srlinux::types::srl_nokia_common::uuid�hThW)��}�(hZNh[Nh(j�  hh � srlinux::types::srl_nokia_common���Qh^Nh_Nu}�h0h)��N}�(hK	hMEhKhhhMEu��bs��bh^X�  
A Universally Unique IDentifier in the string representation
defined in RFC 4122.  The canonical representation uses
lowercase characters.

The following is an example of a UUID in string representation:
f81d4fae-7dec-11d0-a765-00a0c91e6bf6

Source type expression:

    srl_nokia-common.yang:
    L921:    type string {
    L922:      pattern '[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-'
    L923:            + '[0-9a-fA-F]{4}-[0-9a-fA-F]{12}';
    L924:    }

�hZh
)��}�(h�string�hh)��N}�(hKhMEhKhhhMEu��bhMEhMEhKhKhM�zhh � srlinux::types::srl_nokia_common���Qubhnh�)��N}�(h�Khu]�(h�)��N}�(h(h
)��}�(h�std::validate_type�hh)��N}�(hK!hMEhK3hhhMEu��bhMEhMEhK3hK!hM{hh � srlinux::types::srl_nokia_common���Qubh�]�(h�)��N}�(h�pydantic.constr�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM{h0h2)��N}�(hhhMEu��bu��bhy)��N}�(h|h
)��}�(h�self�hh)��N}�(hKGhMEhKKhhhMEu��bhMEhMEhKKhKGhM&{hh � srlinux::types::srl_nokia_common���Qubh(j$  h�j$  h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hNh0j%  u��bj  )��N}�(h�]��regex�h�)��N}�(h�Y^(?:[0-9A-Fa-f]{8}-[0-9A-Fa-f]{4}-[0-9A-Fa-f]{4}-[0-9A-Fa-f]{4}-[0-9A-Fa-f]{12})$(?!\n\Z)�h�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM2{h0h2)��N}�(hhhMEu��bu��b��ah�]�j3  ah�]�hh � srlinux::types::srl_nokia_common���Qh.]�hM({h0h2)��N}�(hhhMEu��bu��bej.  ]�hh2)��N}�(hhhMEu��bj3  }�j5  Nh�]�(j  j   j/  eh�]�hh � srlinux::types::srl_nokia_common���Qh.]�h�)��}�(h�j  hh � srlinux::types::srl_nokia_common���QhTj  ubahNh0Nu��bh�)��N}�(h�h�]�hNh.]�hNh0Nu��bejE  jF  h�j	  h�]�hNh.]�jR  ahNh0Nu��bu}�(hh � srlinux::types::srl_nokia_common���Qh.]�(h�)��}�(h�j  hh � srlinux::types::srl_nokia_common���QhTj�  ubjR  ehM�zh0h2)��N}�(hhhMEu��bu��beub.