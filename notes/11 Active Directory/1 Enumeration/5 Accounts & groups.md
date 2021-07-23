# Accounts & groups
## Kerberos
Brute force - Won't lockout user account:
`kerbrute userenum --dc <DC_IP> -d <DOMAIN> <USERLIST>`

## RPC
Users:
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'enumdomusers'` (null,creds)
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'querydispinfo'` (null,creds)
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'queryuser <RID>'` (null,creds)

Groups:
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'enumdomgroups'` (null,creds)
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'querygroup <RID>'` (null,creds)
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'querygroupmem <RID>'` (null,creds)
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'queryusergroups <RID>'` (null,creds)
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'enumalsgroups builtin'` (null,creds)
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'enumalsgroups domain'` (null,creds)

SID:
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'lookupsids <SID>'` (null,creds)
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'lookupnames <USER>'` (null,creds)

## NetBIOS & SMB
All user accounts:
`impacket-samrdump '<DOMAIN>/<USER>:<PASS>@<IP>'` (null,creds)
`crackmapexec smb <IP> -u <USER> -p <PASS> --users` (null,creds)

Brute force accounts with RID when able to read IPC$ (null & guest):
`impacket-lookupsid '<DOMAIN>/<USER>:<PASS>@<IP>'` (null,guest,creds)
`crackmapexec smb <IP> -u <USER> -p <PASS> --rid-brute` (null,guest,creds)

## LDAP
All domain user accounts:
`impacket-GetADUsers -all -dc-ip <DC_IP> <DOMAIN>/<USER>:<PASS>` (creds)

All useful LDAP objects (accounts/computers/groups/trust/policy):
`ldapdomaindump -u <DOMAIN>\\<USER> -p <PASS> --no-json --no-grep <DC_IP>` (creds)