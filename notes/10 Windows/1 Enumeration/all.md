# all
## SMB & RPC
Domain name & host name & null & guest through SRVSVC & LSARPC:
```bash
domcheck <IP>
```

## DNS
All DNS records through ANY:
```bash
dig any @<DNS_IP> <DNS_DOMAIN>
```

All DNS records through AXFR (zone transfer):
```bash
dig axfr @<DNS_IP> <DNS_DOMAIN>
```

## LDAP
All DNS records of domain:
```bash
adidnsdump -u <DOMAIN>\\<USER> -p <PASS> <DC_IP> # (user)
```

All useful LDAP objects:
```bash
ldapdomaindump -u <DOMAIN>\\<USER> -p <PASS> --no-json --no-grep <DC_IP> # (user)
```