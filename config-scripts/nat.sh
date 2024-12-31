# nat.sh
set nat source rule 10 outbound-interface eth0
set nat source rule 10 source address 10.0.0.0/28
set nat source rule 10 translation address masquerade
