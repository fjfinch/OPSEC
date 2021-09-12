# Hostnames
## DNS
Names via PTR record type (reverse lookup):
`dig @<DNS_IP> -x 127.0.0.1`
`dig @<DNS_IP> -x <DNS_IP>`
`dig @<DNS_IP> -x <IP>`

All DNS records of domain via ANY record type:
`dig any @<DNS_IP> <DNS_DOMAIN>`

All DNS records of domain via AXFR record type (zone transfer):
`dig axfr @<DNS_IP> <DNS_DOMAIN>`

DC name via SRV record type:
`dig srv @<DNS_IP> _ldap._tcp.dc._msdcs.<DNS_DOMAIN>`
`dig srv @<DNS_IP> _ldap._tcp.<DNS_DOMAIN>`
`dig srv @<DNS_IP> _kerberos._tcp.<DNS_DOMAIN>`
`dig srv @<DNS_IP> _kpasswd._tcp.<DNS_DOMAIN>`

Brute force subdomains:
`gobuster dns -d <DNS_DOMAIN> -r <DNS_IP> -w <WORDLIST>`

## NetBIOS & SMB
Hosts:
`nbtscan <IP>/<SUBNET>`
`nmblookup -A <IP>`

## LDAP
Domain name:
`ldapsearch -h <DC_IP> -x -s base ldapServiceName serverName dnsHostName`

`ldapsearch -h <DC_IP> -x -LLL -W -D "<USER>@<DOMAIN>" -b "dc=<DOMAIN>,dc=<DOMAIN>" "(objectclass=computer)" "DNSHostName" "OperatingSystem"` (creds)

All DNS records of domain:
`adidnsdump -u <DOMAIN>\\<USER> -p <PASS> <DC_IP>` (creds)