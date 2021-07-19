# Accounts & Groups
## Kerberos
Brute-forcing - Won't lockout user account
`kerbrute userenum --dc <IP> -d <DOMAIN> <USERLIST>`

## LDAP
All domain user accounts:
`impacket-GetADUsers -all -dc-ip <DC_IP> <DOMAIN>/<USER>:<PASS>`

## SMB
Get all user accounts:
`impacket-samrdump '<DOMAIN>/<USER>:<PASS>@<IP>'`
`crackmapexec smb <IP> -u <USER> -p <PASS> --users`

Brute force accounts:
`crackmapexec smb <IP> -u <USERLIST> -p <PASS>`

Brute force all domain accounts via RID/SID when IPC$ read:
`impacket-lookupsid '<DOMAIN>/<USER>:<PASS>@<IP>'`
`crackmapexec smb <IP> -u <USER> -p <PASS> --rid-brute`

## RPC
Users:
`rpcclient -U '<USER>%<PASS>' <IP> -c 'enumdomusers'` (list domain users & RID)
`rpcclient -U '<USER>%<PASS>' <IP> -c 'querydispinfo'` (list domain users & RID)
`rpcclient -U '<USER>%<PASS>' <IP> -c 'queryuser <RID>'` (info user)

Groups:
`rpcclient -U '<USER>%<PASS>' <IP> -c 'enumdomgroups'` (list domain groups & RID)
`rpcclient -U '<USER>%<PASS>' <IP> -c 'querygroup <RID>'` (info group)
`rpcclient -U '<USER>%<PASS>' <IP> -c 'querygroupmem <RID>'` (group membership)
`rpcclient -U '<USER>%<PASS>' <IP> -c 'queryusergroups <RID>'` (user membership)
`rpcclient -U '<USER>%<PASS>' <IP> -c 'enumalsgroups builtin'` (builtin groups)
`rpcclient -U '<USER>%<PASS>' <IP> -c 'enumalsgroups domain'` (local groups)

SID:
`rpcclient -U '<USER>%<PASS>' <IP> -c 'lookupsids <SID>'` 
`rpcclient -U '<USER>%<PASS>' <IP> -c 'lookupnames <USER>'` 