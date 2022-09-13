interfaces {
    ethernet eth0 {
        address "dhcp"
    }
    loopback     lo { }
}
service {
    ssh {
        client-keepalive-interval "180"
        port "22"
    }
}
system {
    config-management {
        commit-revisions "100"
    }
    console {
        device ttyS0 {
            speed "9600"
        }
    }
    host-name "R1"
    login {
        user vyos {
            authentication {
                encrypted-password "$6$vZgZWx9/w$5kxl1cvpOJ4P3yV2K5iYN1.CoNq/UaXOzCj9o21k1bDwwfpHvfIgT039a6qpgaCGyiwGQxCuwAcuK7Uh/hqN71"
                plaintext-password ""
            }
            level "admin"
        }
    }
    ntp {
        server         0.pool.ntp.org { }
        server         1.pool.ntp.org { }
        server         2.pool.ntp.org { }
    }
    syslog {
        global {
            facility all {
                level "info"
            }
            facility protocols {
                level "debug"
            }
        }
    }
    time-zone "UTC"
}



/* Warning: Do not remove the following line. */
/* === vyatta-config-version: "broadcast-relay@1:cluster@1:config-management@1:conntrack@1:conntrack-sync@1:dhcp-relay@2:dhcp-server@5:dns-forwarding@2:firewall@5:interfaces@4:ipsec@5:l2tp@1:mdns@1:nat@4:ntp@1:pptp@1:qos@1:quagga@4:snmp@1:ssh@1:system@11:vrrp@2:vyos-accel-ppp@2:wanloadbalance@3:webgui@1:webproxy@1:zone-policy@1" === */
/* Release version: 1.2-rolling-201911292032 */