��=M      �inmanta.parser.cache��CacheEnvelope���)��}�(�	timestamp�GA���t^�
statements�]�(�inmanta.ast��LocatableString���)��}�(�value��m
    :copyright: 2022 Inmanta
    :contact: code@inmanta.com
    :author: Inmanta
    :license: Inmanta EULA
��location�h�Range���)��N}�(�
start_char�K�end_lnr�K�end_char�K�file���/home/dariush/.virtualenvs/srlinux/lib/python3.9/site-packages/inmanta_plugins/srlinux/model/types/srl_nokia_ospf_types/_init.cf��lnr�Ku��bhK�elnr�K�end�K�start�K�lexpos�Ks�	namespace��	Namespace��$srlinux::types::srl_nokia_ospf_types���Qub�inmanta.ast.statements.define��DefineImport���)��}�(�name��srlinux::types��toname�h)u}�(hh �$srlinux::types::srl_nokia_ospf_types���Q�anchors�]�hKt�	_location�h�Location���)��N}�(hhhKu��bu��bh%)��}�(h(�srlinux::types::ietf_yang_types�h*h9u}�(hh �$srlinux::types::srl_nokia_ospf_types���Qh.]�hK�h0h2)��N}�(hhhKu��bu��bh#�DefineTypeConstraint���)��}�(h(�interface_type��fullName��4srlinux::types::srl_nokia_ospf_types::interface_type��type��inmanta.ast.type��ConstraintType���)��}�(�basetype�N�_constraint�Nh(hFhh �$srlinux::types::srl_nokia_ospf_types���Q�comment�N�
expression�Nu}�h0h)��N}�(hK	hK
hKhhhK
u��bs��bhSX  
Interface type.
Source type expression:

    srl_nokia-ospf-types.yang:
    L73:    type enumeration {
    L74:      enum broadcast {
    L75:        value 1;
    L76:      }
    L77:      enum point-to-point {
    L78:        value 3;
    L79:      }
    L80:    }

�hOh
)��}�(h�string�hh)��N}�(hKhK
hK!hhhK
u��bhK
hK
hK!hKhK�hh �$srlinux::types::srl_nokia_ospf_types���Qub�!_DefineTypeConstraint__expression��!inmanta.ast.constraint.expression��In���)��N}�(�_Operator__number_arguments�K�
_arguments�]�(�inmanta.ast.variables��	Reference���)��N}�(�locatable_name�h
)��}�(h�self�hh)��N}�(hK+hK
hK/hhhK
u��bhK
hK
hK/hK+hK�hh �$srlinux::types::srl_nokia_ospf_types���Qubh(ht�	full_name�ht�_own_eager_promises�]�hh �$srlinux::types::srl_nokia_ospf_types���Qh.]�hNh0huu��b�inmanta.ast.statements.assign��
CreateList���)��N}�(�items�]�(�inmanta.ast.statements��Literal���)��N}�(h�	broadcast�h{]�hh �$srlinux::types::srl_nokia_ospf_types���Qh.]�hK�h0h2)��N}�(hhhK
u��bu��bh�)��N}�(h�point-to-point�h{]�hh �$srlinux::types::srl_nokia_ospf_types���Qh.]�hK�h0h2)��N}�(hhhK
u��bu��be�children�h�h{]�hh �$srlinux::types::srl_nokia_ospf_types���Qh.]�hK�h0h2)��N}�(hhhK
u��bu��be�_Operator__name��in�h�hkh{]�hh �$srlinux::types::srl_nokia_ospf_types���Qh.]�hK�h0h2)��N}�(hhhK
u��bu��bu}�(hh �$srlinux::types::srl_nokia_ospf_types���Qh.]�h�TypeReferenceAnchor���)��}�(�range�h^hh �$srlinux::types::srl_nokia_ospf_types���QhIh[ubahK�h0h2)��N}�(hhhK
u��bu��bhC)��}�(h(�lsa_filter_out�hG�4srlinux::types::srl_nokia_ospf_types::lsa_filter_out�hIhL)��}�(hONhPNh(h�hh �$srlinux::types::srl_nokia_ospf_types���QhSNhTNu}�h0h)��N}�(hK	hKhKhhhKu��bs��bhSX�  
Configure LSA flooding reduction
Source type expression:

    srl_nokia-ospf-types.yang:
    L84:    type enumeration {
    L85:      enum none {
    L86:        value 0;
    L87:      }
    L88:      enum all {
    L89:        value 1;
    L90:      }
    L91:      enum except-own-rtrlsa {
    L92:        value 2;
    L93:      }
    L94:      enum except-own-rtrlsa-and-defaults {
    L95:        value 3;
    L96:      }
    L97:    }

�hOh
)��}�(h�string�hh)��N}�(hKhKhK!hhhKu��bhKhKhK!hKhM8hh �$srlinux::types::srl_nokia_ospf_types���Qubhchf)��N}�(hiKhj]�(hn)��N}�(hqh
)��}�(h�self�hh)��N}�(hK+hKhK/hhhKu��bhKhKhK/hK+hMFhh �$srlinux::types::srl_nokia_ospf_types���Qubh(h�hzh�h{]�hh �$srlinux::types::srl_nokia_ospf_types���Qh.]�hNh0h�u��bh�)��N}�(h�]�(h�)��N}�(h�none�h{]�hh �$srlinux::types::srl_nokia_ospf_types���Qh.]�hMKh0h2)��N}�(hhhKu��bu��bh�)��N}�(h�all�h{]�hh �$srlinux::types::srl_nokia_ospf_types���Qh.]�hMSh0h2)��N}�(hhhKu��bu��bh�)��N}�(h�except-own-rtrlsa�h{]�hh �$srlinux::types::srl_nokia_ospf_types���Qh.]�hMZh0h2)��N}�(hhhKu��bu��bh�)��N}�(h�except-own-rtrlsa-and-defaults�h{]�hh �$srlinux::types::srl_nokia_ospf_types���Qh.]�hMoh0h2)��N}�(hhhKu��bu��beh�h�h{]�hh �$srlinux::types::srl_nokia_ospf_types���Qh.]�hMJh0h2)��N}�(hhhKu��bu��beh�h�h�h�h{]�hh �$srlinux::types::srl_nokia_ospf_types���Qh.]�hMGh0h2)��N}�(hhhKu��bu��bu}�(hh �$srlinux::types::srl_nokia_ospf_types���Qh.]�h�)��}�(h�h�hh �$srlinux::types::srl_nokia_ospf_types���QhIh�ubahM h0h2)��N}�(hhhKu��bu��bhC)��}�(h(�ospf_area_identifier�hG�:srlinux::types::srl_nokia_ospf_types::ospf_area_identifier�hIhL)��}�(hONhPNh(j8  hh �$srlinux::types::srl_nokia_ospf_types���QhSNhTNu}�h0h)��N}�(hK	hK2hKhhhK2u��bs��bhSXm  
OSPFv2 Area Identifier
Source type expression:

    srl_nokia-ospf-types.yang:
    L50:    type yang:dotted-quad {
    L51:      pattern '[0-9\.]*';
    L52:      pattern '(([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.){3}'
    L53:            + '([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])'
    L54:            + '(%[\p{N}\p{L}]+)?';
    L55:    }

�hOh
)��}�(h�,srlinux::types::ietf_yang_types::dotted_quad�hh)��N}�(hK!hK2hKMhhhK2u��bhK2hK2hKMhK!hM�hh �$srlinux::types::srl_nokia_ospf_types���Qubhchd�And���)��N}�(�_Operator__number_arguments�Khj]�(�inmanta.ast.statements.call��FunctionCall���)��N}�(h(h
)��}�(h�std::validate_type�hh)��N}�(hKWhK2hKihhhK2u��bhK2hK2hKihKWhM�hh �$srlinux::types::srl_nokia_ospf_types���Qub�	arguments�]�(h�)��N}�(h�pydantic.constr�h{]�hh �$srlinux::types::srl_nokia_ospf_types���Qh.]�hM�h0h2)��N}�(hhhK2u��bu��bhn)��N}�(hqh
)��}�(h�self�hh)��N}�(hK}hK2hK�hhhK2u��bhK2hK2hK�hK}hM�hh �$srlinux::types::srl_nokia_ospf_types���Qubh(jp  hzjp  h{]�hh �$srlinux::types::srl_nokia_ospf_types���Qh.]�hNh0jq  u��bh��
CreateDict���)��N}�(h�]��regex�h�)��N}�(h�^(?:[\.0-9]*)$(?!\n\Z)�h{]�hh �$srlinux::types::srl_nokia_ospf_types���Qh.]�hM�h0h2)��N}�(hhhK2u��bu��b��ah�]�j�  ah{]�hh �$srlinux::types::srl_nokia_ospf_types���Qh.]�hM�h0h2)��N}�(hhhK2u��bu��be�wrapped_kwargs�]�hh2)��N}�(hhhK2u��b�kwargs�}��function�Nh�]�(ja  jl  j}  eh{]�hh �$srlinux::types::srl_nokia_ospf_types���Qh.]�h�)��}�(h�jZ  hh �$srlinux::types::srl_nokia_ospf_types���QhIjW  ubahNh0Nu��bjT  )��N}�(h(h
)��}�(h�std::validate_type�hh)��N}�(hK�hK2hK�hhhK2u��bhK2hK2hK�hK�hMhh �$srlinux::types::srl_nokia_ospf_types���Qubj_  ]�(h�)��N}�(h�pydantic.constr�h{]�hh �$srlinux::types::srl_nokia_ospf_types���Qh.]�hMh0h2)��N}�(hhhK2u��bu��bhn)��N}�(hqh
)��}�(h�self�hh)��N}�(hK�hK2hK�hhhK2u��bhK2hK2hK�hK�hM+hh �$srlinux::types::srl_nokia_ospf_types���Qubh(j�  hzj�  h{]�hh �$srlinux::types::srl_nokia_ospf_types���Qh.]�hNh0j�  u��bj|  )��N}�(h�]��regex�h�)��N}�(hX�#  ^(?:(?:(?:[0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.){3}(?:[0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])(?:%[0-9A-Za-zÂªÂ²Â³ÂµÂ¹ÂºÂ¼-Â¾Ã-ÃÃ-Ã¶Ã¸-ËË-ËË -Ë¤Ë¬Ë®Í°-Í´Í¶Í·Íº-Í½Í¿ÎÎ-ÎÎÎ-Î¡Î£-ÏµÏ·-ÒÒ-Ô¯Ô±-ÕÕÕ -Ö×-×ª×¯-×²Ø -ÙÙ -Ù©Ù®Ù¯Ù±-ÛÛÛ¥Û¦Û®-Û¼Û¿ÜÜ-Ü¯Ý-Þ¥Þ±ß-ßªß´ßµßºà -à à à ¤à ¨à¡-à¡à¡ -à¡ªà¢ -à¢´à¢¶-à¢½à¤-à¤¹à¤½à¥à¥-à¥¡à¥¦-à¥¯à¥±-à¦à¦-à¦à¦à¦à¦-à¦¨à¦ª-à¦°à¦²à¦¶-à¦¹à¦½à§à§à§à§-à§¡à§¦-à§±à§´-à§¹à§¼à¨-à¨à¨à¨à¨-à¨¨à¨ª-à¨°à¨²à¨³à¨µà¨¶à¨¸à¨¹à©-à©à©à©¦-à©¯à©²-à©´àª-àªàª-àªàª-àª¨àªª-àª°àª²àª³àªµ-àª¹àª½à«à« à«¡à«¦-à«¯à«¹à¬-à¬à¬à¬à¬-à¬¨à¬ª-à¬°à¬²à¬³à¬µ-à¬¹à¬½à­à­à­-à­¡à­¦-à­¯à­±-à­·à®à®-à®à®-à®à®-à®à®à®à®à®à®à®£à®¤à®¨-à®ªà®®-à®¹à¯à¯¦-à¯²à°-à°à°-à°à°-à°¨à°ª-à°¹à°½à±-à±à± à±¡à±¦-à±¯à±¸-à±¾à²à²-à²à²-à²à²-à²¨à²ª-à²³à²µ-à²¹à²½à³à³ à³¡à³¦-à³¯à³±à³²à´-à´à´-à´à´-à´ºà´½àµàµ-àµàµ-àµ¡àµ¦-àµ¸àµº-àµ¿à¶-à¶à¶-à¶±à¶³-à¶»à¶½à·-à·à·¦-à·¯à¸-à¸°à¸²à¸³à¹-à¹à¹-à¹àºàºàºàº-àºàº-àº£àº¥àº§-àº°àº²àº³àº½à»-à»à»à»-à»à»-à»à¼à¼ -à¼³à½-à½à½-à½¬à¾-à¾á-áªá¿-áá-áá-áá¡á¥á¦á®-á°áµ-ááá-áá -áááá-áºá¼-áá-áá-ááá-áá -áá-áá-á°á²-áµá¸-á¾áá-áá-áá-áá-áá-áá©-á¼á-áá -áµá¸-á½á-á¬á¯-á¿á-áá -áªá®-á¸á-áá-áá -á±á-áá -á¬á®-á°á-á³ááá -á©á°-á¹á -á á  -á¡¸á¢-á¢á¢-á¢¨á¢ªá¢°-á£µá¤-á¤á¥-á¥­á¥°-á¥´á¦-á¦«á¦°-á§á§-á§á¨-á¨á¨ -á©áª-áªáª-áªáª§á¬-á¬³á­-á­á­-á­á®-á® á®®-á¯¥á°-á°£á±-á±á±-á±½á²-á²á²-á²ºá²½-á²¿á³©-á³¬á³®-á³³á³µá³¶á³ºá´-á¶¿á¸-á¼á¼-á¼á¼ -á½á½-á½á½-á½á½á½á½á½-á½½á¾-á¾´á¾¶-á¾¼á¾¾á¿-á¿á¿-á¿á¿-á¿á¿-á¿á¿ -á¿¬á¿²-á¿´á¿¶-á¿¼â°â±â´-â¹â¿-ââ-ââââ-âââ-ââ¤â¦â¨âª-â­â¯-â¹â¼-â¿â-âââ-ââ-ââ -ââª-â¿â¶-ââ°-â°®â°°-â±â± -â³¤â³«-â³®â³²â³³â³½â´-â´¥â´§â´­â´°-âµ§âµ¯â¶-â¶â¶ -â¶¦â¶¨-â¶®â¶°-â¶¶â¶¸-â¶¾â·-â·â·-â·â·-â·â·-â·â¸¯ã-ãã¡-ã©ã±-ãµã¸-ã¼ã-ãã-ãã¡-ãºã¼-ã¿ã-ã¯ã±-ãã-ãã -ãºã°-ã¿ã -ã©ã-ãã-ãã-ãã±-ã¿ã-ä¶µä¸-é¿¯ê-êê-ê½ê-êê-ê«ê-ê®ê¿-êê -ê¯ê-êê¢-êê-ê¿ê-êê·-ê ê -ê ê -ê ê -ê ¢ê °-ê µê¡-ê¡³ê¢-ê¢³ê£-ê£ê£²-ê£·ê£»ê£½ê£¾ê¤-ê¤¥ê¤°-ê¥ê¥ -ê¥¼ê¦-ê¦²ê§-ê§ê§ -ê§¤ê§¦-ê§¾ê¨-ê¨¨ê©-ê©ê©-ê©ê©-ê©ê© -ê©¶ê©ºê©¾-êª¯êª±êªµêª¶êª¹-êª½ê«ê«ê«-ê«ê« -ê«ªê«²-ê«´ê¬-ê¬ê¬-ê¬ê¬-ê¬ê¬ -ê¬¦ê¬¨-ê¬®ê¬°-ê­ê­-ê­§ê­°-ê¯¢ê¯°-ê¯¹ê°-í£í°-íí-í»ï¤-ï©­ï©°-ï«ï¬-ï¬ï¬-ï¬ï¬ï¬-ï¬¨ï¬ª-ï¬¶ï¬¸-ï¬¼ï¬¾ï­ï­ï­ï­ï­-ï®±ï¯-ï´½ïµ-ï¶ï¶-ï·ï·°-ï·»ï¹°-ï¹´ï¹¶-ï»¼ï¼-ï¼ï¼¡-ï¼ºï½-ï½ï½¦-ï¾¾ï¿-ï¿ï¿-ï¿ï¿-ï¿ï¿-ï¿ð-ðð-ð¦ð¨-ðºð¼ð½ð¿-ðð-ðð-ðºð-ð³ð-ð¸ððð-ðð -ðð¡-ð»ð-ð£ð­-ððð-ðµð-ðð -ðð-ðð-ðð-ðð -ð©ð°-ðð-ð»ð-ð§ð°-ð£ð-ð¶ð-ðð -ð§ð -ð ð ð -ð µð ·ð ¸ð ¼ð ¿-ð¡ð¡-ð¡¶ð¡¹-ð¢ð¢§-ð¢¯ð£ -ð£²ð£´ð£µð£»-ð¤ð¤-ð¤ð¤ -ð¤¹ð¦-ð¦·ð¦¼-ð¦¿ð§-ð§ð§-ð¨ð¨-ð¨ð¨-ð¨ð¨-ð¨µð©-ð©ð© -ð©¾ðª-ðªð«-ð«ð«-ð«¤ð««-ð«¯ð¬-ð¬µð­-ð­ð­-ð­²ð­¸-ð®ð®©-ð®¯ð°-ð±ð²-ð²²ð³-ð³²ð³º-ð´£ð´°-ð´¹ð¹ -ð¹¾ð¼-ð¼§ð¼°-ð½ð½-ð½ð¿ -ð¿¶ð-ð·ð-ð¯ð-ð¯ð-ð¨ð°-ð¹ð-ð¦ð¶-ð¿ðð-ð²ð¶ð-ð²ð-ðð-ððð¡-ð´ð-ðð-ð«ð-ððð-ðð-ðð-ð¨ð°-ðð°-ð¹ð-ðððð-ð¨ðª-ð°ð²ð³ðµ-ð¹ð½ðð-ð¡ð-ð´ð-ðð-ððð-ð¯ðððð-ðð-ð®ð-ðð-ð¯ðð-ðð-ðªð¸ð-ðð-ðð°-ð»ð -ð «ð¢ -ð£²ð£¿ð¦ -ð¦§ð¦ª-ð§ð§¡ð§£ð¨ð¨-ð¨²ð¨ºð©ð©-ðªðªð«-ð«¸ð°-ð°ð°-ð°®ð±ð±-ð±¬ð±²-ð²ð´-ð´ð´ð´ð´-ð´°ðµðµ-ðµðµ -ðµ¥ðµ§ðµ¨ðµª-ð¶ð¶ð¶ -ð¶©ð» -ð»²ð¿-ð¿ð-ðð-ð®ð-ðð-ð®ð-ðð -ð¨¸ð©-ð©ð© -ð©©ð«-ð«­ð¬-ð¬¯ð­-ð­ð­-ð­ð­-ð­¡ð­£-ð­·ð­½-ð®ð¹-ðºð¼-ð½ð½ð¾-ð¾ð¿ ð¿¡ð¿£ð-ð·ð -ð«²ð-ðð-ðð¤-ð§ð°-ð»ð°-ð±ªð±°-ð±¼ð²-ð²ð²-ð²ð -ð³ð -ð¸ð-ðð-ðððð¢ð¥ð¦ð©-ð¬ð®-ð¹ð»ð½-ðð-ðð-ðð-ðð-ðð-ð¹ð»-ð¾ð-ððð-ðð-ð¥ð¨-ðð-ðð-ðºð¼-ðð-ð´ð¶-ðð-ð®ð°-ðð-ð¨ðª-ðð-ðð-ð¿ð-ð¬ð·-ð½ð-ððð-ð«ð°-ð¹ð -ð£ð£-ð£ð¤-ð¥ð¥ð¥-ð¥ð±±-ð²«ð²­-ð²¯ð²±-ð²´ð´-ð´­ð´¯-ð´½ð¸-ð¸ð¸-ð¸ð¸¡ð¸¢ð¸¤ð¸§ð¸©-ð¸²ð¸´-ð¸·ð¸¹ð¸»ð¹ð¹ð¹ð¹ð¹-ð¹ð¹ð¹ð¹ð¹ð¹ð¹ð¹ð¹ð¹¡ð¹¢ð¹¤ð¹§-ð¹ªð¹¬-ð¹²ð¹´-ð¹·ð¹¹-ð¹¼ð¹¾ðº-ðºðº-ðºðº¡-ðº£ðº¥-ðº©ðº«-ðº»ð-ðð -ðªðª-ð«´ð«-ð« ð«  -ð¬º¡ð¬º°-ð®¯ ð¯ -ð¯¨]+)?)$(?!\n\Z)�h{]�hh �$srlinux::types::srl_nokia_ospf_types���Qh.]�hM7h0h2)��N}�(hhhK2u��bu��b��ah�]�j�  ah{]�hh �$srlinux::types::srl_nokia_ospf_types���Qh.]�hM-h0h2)��N}�(hhhK2u��bu��bej�  ]�hh2)��N}�(hhhK2u��bj�  }�j�  Nh�]�(j�  j�  j�  eh{]�hh �$srlinux::types::srl_nokia_ospf_types���Qh.]�h�)��}�(h�j�  hh �$srlinux::types::srl_nokia_ospf_types���QhIj�  ubahNh0Nu��be�_Operator__name��and�h�jQ  h{]�hh �$srlinux::types::srl_nokia_ospf_types���Qh.]�(j�  j�  ehM�h0h2)��N}�(hhhK2u��bu��bu}�(hh �$srlinux::types::srl_nokia_ospf_types���Qh.]�(h�)��}�(h�jG  hh �$srlinux::types::srl_nokia_ospf_types���QhIjD  ubj�  j�  ehM[h0h2)��N}�(hhhK2u��bu��bhC)��}�(h(�	ospf_ecmp�hG�/srlinux::types::srl_nokia_ospf_types::ospf_ecmp�hIhL)��}�(hONhPNh(j  hh �$srlinux::types::srl_nokia_ospf_types���QhSNhTNu}�h0h)��N}�(hK	hKAhKhhhKAu��bs��bhS��
This type defines the range of IS-IS max-ecmp-paths
Source type expression:

    srl_nokia-ospf-types.yang:
    L42:    type uint8 {
    L43:      range "1..64";
    L44:    }

�hOh
)��}�(h�srlinux::types::uint8�hh)��N}�(hKhKAhK+hhhKAu��bhKAhKAhK+hKhMahh �$srlinux::types::srl_nokia_ospf_types���QubhcjM  )��N}�(jP  Khj]�(hd�GreaterThanOrEqual���)��N}�(�_Operator__number_arguments�Khj]�(hn)��N}�(hqh
)��}�(h�self�hh)��N}�(hK5hKAhK9hhhKAu��bhKAhKAhK9hK5hMthh �$srlinux::types::srl_nokia_ospf_types���Qubh(j.  hzj.  h{]�hh �$srlinux::types::srl_nokia_ospf_types���Qh.]�hNh0j/  u��bh�)��N}�(hKh{]�hh �$srlinux::types::srl_nokia_ospf_types���Qh.]�hMxh0h2)��N}�(hhhKAu��bu��be�_Operator__name��greater than or equal�h�j)  h{]�hh �$srlinux::types::srl_nokia_ospf_types���Qh.]�hMuh0h2)��N}�(hhhKAu��bu��bhd�LessThanOrEqual���)��N}�(�_Operator__number_arguments�Khj]�(hn)��N}�(hqh
)��}�(h�self�hh)��N}�(hKChKAhKGhhhKAu��bhKAhKAhKGhKChM�hh �$srlinux::types::srl_nokia_ospf_types���Qubh(jW  hzjW  h{]�hh �$srlinux::types::srl_nokia_ospf_types���Qh.]�hNh0jX  u��bh�)��N}�(hK@h{]�hh �$srlinux::types::srl_nokia_ospf_types���Qh.]�hM�h0h2)��N}�(hhhKAu��bu��be�_Operator__name��less than or equal�h�jR  h{]�hh �$srlinux::types::srl_nokia_ospf_types���Qh.]�hM�h0h2)��N}�(hhhKAu��bu��bej�  j�  h�j#  h{]�hh �$srlinux::types::srl_nokia_ospf_types���Qh.]�hMzh0h2)��N}�(hhhKAu��bu��bu}�(hh �$srlinux::types::srl_nokia_ospf_types���Qh.]�h�)��}�(h�j  hh �$srlinux::types::srl_nokia_ospf_types���QhIj  ubahMDh0h2)��N}�(hhhKAu��bu��bhC)��}�(h(�ospf_metric�hG�1srlinux::types::srl_nokia_ospf_types::ospf_metric�hIhL)��}�(hONhPNh(j�  hh �$srlinux::types::srl_nokia_ospf_types���QhSNhTNu}�h0h)��N}�(hK	hKMhKhhhKMu��bs��bhS��
A common type that can be utilised to express an OSPF metric
Source type expression:

    srl_nokia-ospf-types.yang:
    L59:    type uint16;

�hOh
)��}�(h�srlinux::types::uint16�hh)��N}�(hKhKMhK.hhhKMu��bhKMhKMhK.hKhMlhh �$srlinux::types::srl_nokia_ospf_types���Qubhchd�Equals���)��N}�(�_Operator__number_arguments�Khj]�(hn)��N}�(hqh
)��}�(h�self�hh)��N}�(hK8hKMhK<hhhKMu��bhKMhKMhK<hK8hM�hh �$srlinux::types::srl_nokia_ospf_types���Qubh(j�  hzj�  h{]�hh �$srlinux::types::srl_nokia_ospf_types���Qh.]�hNh0j�  u��bhn)��N}�(hqh
)��}�(h�self�hh)��N}�(hK@hKMhKDhhhKMu��bhKMhKMhKDhK@hM�hh �$srlinux::types::srl_nokia_ospf_types���Qubh(j�  hzj�  h{]�hh �$srlinux::types::srl_nokia_ospf_types���Qh.]�hNh0j�  u��be�_Operator__name��equality�h�j�  h{]�hh �$srlinux::types::srl_nokia_ospf_types���Qh.]�hM�h0h2)��N}�(hhhKMu��bu��bu}�(hh �$srlinux::types::srl_nokia_ospf_types���Qh.]�h�)��}�(h�j�  hh �$srlinux::types::srl_nokia_ospf_types���QhIj�  ubahMMh0h2)��N}�(hhhKMu��bu��beub.