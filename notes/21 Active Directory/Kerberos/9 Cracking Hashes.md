# Cracking Hashes
## AS-REQ - Pre-auth
pre auth timestamps (AS-REQ w PRE_AUTH) can be extracted and decrypted with hashcat. Format:

`tshark -r <PCAP> -Y "kerberos.msg_type==10 && kerberos.cipher" -T fields -e kerberos.cipher | awk '{print "$krb5pa$<ETYPE>$<USER>$<DOMAIN>$"$0}'`

Modes:
* hashcat -m 7500 etype 23
* hashcat -m 19800 etype 17
* hashcat -m 19900 etype 18

## AS-REP
Not pre-auth: use impacket-GetNPUsers with as-rep roasting to get valid hashes.
Pre-auth: -

hashcat -m 18200





Kerberoasting
hashcat -m 13100 etype 23
hashcat -m 19600 etype 17
hashcat -m 19700 etype 18