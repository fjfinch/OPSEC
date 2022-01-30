# Domain names
SMB & RPC - Domain name & SID through LSARPC:
```bash
rpcclient -U '<USER>%<PASS>' <IP> -c 'lsaquery' # PTH
```

SMB & RPC - Domain name & more through SAMR:
```bash
rpcclient -U '<USER>%<PASS>' <IP> -c 'lookupdomain <DOMAIN>' # PTH
rpcclient -U '<USER>%<PASS>' <IP> -c 'enumdomains' # PTH
rpcclient -U '<USER>%<PASS>' <IP> -c 'querydominfo' # PTH
```

LDAP - Domain name:
```bash
ldapsearch -h <IP> -x -s base namingContexts
```