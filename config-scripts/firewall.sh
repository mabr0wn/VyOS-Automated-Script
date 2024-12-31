# firewall.sh
set firewall ipv4 forward filter rule 10 action 'drop'
set firewall ipv4 forward filter rule 10 description 'Block Private IPs from Interface'
set firewall ipv4 forward filter rule 10 source address '10.0.0.0/28'
set firewall ipv4 forward filter rule 10 destination address '172.16.0.0/12'
set firewall ipv4 forward filter rule 10 protocol 'all'
set firewall ipv4 forward filter rule 10 inbound-interface name 'eth1'
set firewall ipv4 forward filter rule 10 outbound-interface name 'eth0'

set firewall ipv4 forward filter rule 20 action 'drop'
set firewall ipv4 forward filter rule 20 description 'Block 192.168.0.0/16 from Interface'
set firewall ipv4 forward filter rule 20 source address '10.0.0.0/28'
set firewall ipv4 forward filter rule 20 destination address '192.168.0.0/16'  # Private IP range
set firewall ipv4 forward filter rule 20 protocol 'all'
set firewall ipv4 forward filter rule 20 inbound-interface name 'eth1'
set firewall ipv4 forward filter rule 20 outbound-interface name 'eth0'
 
set firewall ipv4 forward filter rule 30 action 'drop'
set firewall ipv4 forward filter rule 30 description 'Block 10.0.0.0/8 from Interface outbound except eth0'
set firewall ipv4 forward filter rule 30 source address '10.0.0.0/28'
set firewall ipv4 forward filter rule 30 destination address '10.0.0.0/8'  
set firewall ipv4 forward filter rule 30 protocol 'all'
set firewall ipv4 forward filter rule 30 inbound-interface name 'eth1'
set firewall ipv4 forward filter rule 30 outbound-interface name 'eth0'