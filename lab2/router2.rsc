# oct/14/2022 17:12:50 by RouterOS 7.5
# software id = IFQG-KPKP
#
/interface bridge
add name=Loopback
add name=ether2
/interface ethernet
set [ find default-name=ether1 ] disable-running-check=no
/interface ovpn-client
add certificate=cert_1 cipher=aes256 connect-to=51.250.103.200 mac-address=\
    02:80:C5:E6:CD:74 name=ovpn-out1 port=443 user=mikrotik2
/disk
set sata1 disabled=no
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/routing id
add disabled=no id=172.16.1.2 name=OSPF_ID select-dynamic-id=""
/routing ospf instance
add disabled=no name=ospf-instance-1 originate-default=always router-id=\
    OSPF_ID
/routing ospf area
add disabled=no instance=ospf-instance-1 name=Backbone
/ip address
add address=172.16.1.2 interface=Loopback network=172.16.1.2
add address=10.10.10.2 interface=ether2 network=10.10.10.2
/ip dhcp-client
add interface=ether1
add interface=Loopback
/routing ospf interface-template
add area=Backbone disabled=no interfaces=Loopback networks=172.16.1.2/30 \
    passive
add area=Backbone disabled=no interfaces=ether1
/system identity
set name=rtwo
/system ntp client
set enabled=yes
