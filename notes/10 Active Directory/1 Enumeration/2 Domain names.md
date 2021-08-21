# Domain names
## NetBIOS & SMB & RPC
Domain name (& info):
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'lsaquery'`
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'lookupdomain <DOMAIN>'` (null,creds)
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'enumdomains'` (null,creds)
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'querydominfo'` (null,creds)

Domain name, host, and check null session & guest account:
`python3 domcheck <DC_IP>`

## LDAP
Domain name:
`ldapsearch -x -h <DC_IP> -s base namingContexts`