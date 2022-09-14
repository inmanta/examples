interfaces {
    loopback lo {
    }
}
service {
    ssh {
        disable-host-validation
    }
}
system {
    config-management {
        commit-revisions 100
    }
    console {
        device ttyS0 {
            speed 9600
        }
    }
    host-name R1
    login {
        user vyos {
            authentication {
                encrypted-password $6$m.64c5W6yF0$RBwNcV3qSXxvSgn9iu8VLu4koIDdsHtStKz1jTR7UEIkG3EMWlbD0HPkeuu/f3dqaaFKlb8qgNrB91pPXvtHF/
                plaintext-password ""
            }
            level admin
        }
    }
    ntp {
        server 0.pool.ntp.org {
        }
        server 1.pool.ntp.org {
        }
        server 2.pool.ntp.org {
        }
    }
    syslog {
        global {
            facility all {
                level info
            }
            facility protocols {
                level debug
            }
        }
    }
    time-zone UTC
}


/* Warning: Do not remove the following line. */
/* === vyatta-config-version: "dns-forwarding@1:pptp@1:ipsec@5:webproxy@2:ssh@1:snmp@1:conntrack-sync@1:config-management@1:zone-policy@1:conntrack@1:pppoe-server@2:system@10:l2tp@1:cluster@1:webproxy@1:wanloadbalance@3:webgui@1:firewall@5:qos@1:quagga@7:mdns@1:vrrp@2:dhcp-relay@2:broadcast-relay@1:ntp@1:nat@4:dhcp-server@5" === */
/* Release version: 1.2.8 */