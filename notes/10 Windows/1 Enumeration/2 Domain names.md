# Domain names
## SMB & RPC
Domain name & SID through LSARPC:

```bash
rpcclient -U '<USER>%<PASS>' <IP> -c 'lsaquery' # (null,guest,user)
```

Domain name & more through SAMR:

```bash
rpcclient -U '<USER>%<PASS>' <IP> -c 'lookupdomain <DOMAIN>' # (null,guest,user)
rpcclient -U '<USER>%<PASS>' <IP> -c 'enumdomains' # (null,guest,user)
rpcclient -U '<USER>%<PASS>' <IP> -c 'querydominfo' # (null,guest,user)
```

## LDAP
Domain name:
```bash
ldapsearch -h <IP> -x -s base namingContexts
```