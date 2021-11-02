# Domain names
## NetBIOS & SMB & RPC
Find domain name (& other info):
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'lsaquery'` (creds) LSA
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'lookupdomain <DOMAIN>'` (creds) SAMR
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'enumdomains'` (creds) SAMR
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'querydominfo'` (creds) SAMR

Find domain name, host name, and check for null session & guest account:
`python3 domcheck <DC_IP>`

## LDAP
Find domain name:
`ldapsearch -h <DC_IP> -x -s base namingContexts`