# Host & Domain Names
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

gobuster dns -d spookysec.local -r 10.10.27.158 -w /usr/share/seclists/Discovery/DNS/subdomains-top1million-5000.txt

## RPC
Domain name & info:
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'lsaquery'` (null,creds)
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'lookupdomain <DOMAIN>'` (null,creds)
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'enumdomains'` (null,creds)
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'querydominfo'` (null,creds)

## NetBIOS & SMB
Domain name & hosts:
`nbtscan <IP>/<SUBNET>`
`nmblookup -A <IP>`
`crackmapexec smb <IP>`

## LDAP
Domain name:
`ldapsearch -x -h <DC_IP> -s base namingContexts ldapServiceName serverName dnsHostName`

All DNS records of domain:
`adidnsdump -u <DOMAIN>\\<USER> -p <PASS> <DC_IP>` (creds)

## Locally
DC name:
`nltest /dclist:<DOMAIN>`