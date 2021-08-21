# Accounts
## Kerberos
Brute force - Won't lockout user account:
`kerbrute userenum --dc <DC_IP> -d <DOMAIN> <USERLIST>`

## NetBIOS & SMB & RPC
Users:
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'enumdomusers'` (null,creds)
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'querydispinfo'` (null,creds)
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'queryuser <RID>'` (null,creds)

SID:
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'lookupsids <SID>'` (null,creds)
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'lookupnames <USER>'` (null,creds)

All user accounts:
`impacket-samrdump '<DOMAIN>/<USER>:<PASS>@<IP>'` (null,creds)
`crackmapexec smb <IP> -u <USER> -p <PASS> --users` (null,creds)

Brute force accounts with RID when able to read IPC$:
`impacket-lookupsid '<DOMAIN>/<USER>:<PASS>@<IP>'` (null,guest,creds)
`crackmapexec smb <IP> -u <USER> -p <PASS> --rid-brute` (null,guest,creds)

## LDAP
All domain user accounts:
`impacket-GetADUsers -all -dc-ip <DC_IP> <DOMAIN>/<USER>:<PASS>` (creds)

All useful LDAP objects (accounts/computers/groups/trust/policy):
`ldapdomaindump -u <DOMAIN>\\<USER> -p <PASS> --no-json --no-grep <DC_IP>` (creds)