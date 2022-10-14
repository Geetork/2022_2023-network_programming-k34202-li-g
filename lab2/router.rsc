# oct/14/2022 17:10:11 by RouterOS 7.5
# software id = 9NS3-M2XQ
#
/interface bridge
add name=Loopback
add name=ether2
/interface ethernet
set [ find default-name=ether1 ] disable-running-check=no
/interface ovpn-client
add certificate=cert_1 cipher=aes256 connect-to=51.250.103.200 mac-address=\
    02:7C:CA:DB:9D:4C name=ovpn-out1 port=443 user=mikrotik
/disk
set sata1 disabled=no
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/ip pool
add name=ovpn_pool ranges=10.8.8.100-10.8.8.199
/ppp profile
add local-address=10.8.8.1 name=ovpn remote-address=ovpn_pool
/routing id
add disabled=no id=172.16.1.1 name=OSPF_ID select-dynamic-id=""
/routing ospf instance
add disabled=no name=ospf-instance-1 originate-default=always router-id=\
    OSPF_ID
/routing ospf area
add disabled=no instance=ospf-instance-1 name=Backbone
/interface ovpn-server server
set certificate=cert_1 cipher=blowfish128,aes128,aes256 port=433
/ip address
add address=172.16.1.1 interface=Loopback network=172.16.1.1
add address=10.10.10.1 interface=ether2 network=10.10.10.1
/ip dhcp-client
add interface=ether1
add interface=Loopback
/routing ospf interface-template
add area=Backbone disabled=no interfaces=ether1
add area=Backbone disabled=no interfaces=Loopback networks=172.16.1.1/30 \
    passive type=ptp
/system identity
set name=rone
/system logging
add topics=ovpn
/system ntp client
set enabled=yes
