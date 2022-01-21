# all
## SMB & RPC
Domain name & host name & null & guest through SRVSVC & LSARPC:
`domcheck <IP>`

## DNS
All DNS records through ANY:
`dig any @<DNS_IP> <DNS_DOMAIN>`

All DNS records through AXFR (zone transfer):
`dig axfr @<DNS_IP> <DNS_DOMAIN>`

## LDAP
All DNS records of domain:
`adidnsdump -u <DOMAIN>\\<USER> -p <PASS> <DC_IP>` (user)

All useful LDAP objects:
`ldapdomaindump -u <DOMAIN>\\<USER> -p <PASS> --no-json --no-grep <DC_IP>` (user)