# General
## DNS
Get any info relating the domain
`dig any @<DNS_IP> <DOMAIN>`

Zone transfer via an axfr record type
`dig axfr @<DNS_IP> <DOMAIN>`

## LDAP
Get all DNS records (need creds)
`adidnsdump -u <DOMAIN>\\<USER> -p <PASS> <DNS_IP>`

Get all users / computers / groups / trust / policy
`ldapdomaindump -u <DOMAIN>\\<USER> -p <PASS> --no-json --no-grep <DC_IP>`
`ldapsearch -x -b "dc=<DOMAIN>,dc=<DOMAIN>" -H ldap://<DC_IP>`