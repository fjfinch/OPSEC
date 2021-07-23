# Domain name
## RPC
Domain name (& info):
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'lsaquery'` (null,creds)
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'lookupdomain <DOMAIN>'` (null,creds)
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'enumdomains'` (null,creds)
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'querydominfo'` (null,creds)

## NetBIOS & SMB
Domain name (& hosts):
`python3 domcheck <DC_IP>`
`crackmapexec smb <IP>`

## LDAP
Domain name:
`ldapsearch -x -h <DC_IP> -s base namingContexts`