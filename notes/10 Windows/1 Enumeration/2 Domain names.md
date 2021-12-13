# Domain names
## NetBIOS & SMB & RPC
Domain name & related info through LSA:
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'lsaquery'`

Domain name & related info through SAMR:
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'lookupdomain <DOMAIN>'`
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'enumdomains'`
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'querydominfo'`

Domain name, host name, & check for null session and guest account through SRVSVC & LSA:
`domcheck <DC_IP>`

## LDAP
Domain name:
`ldapsearch -h <DC_IP> -x -s base namingContexts`