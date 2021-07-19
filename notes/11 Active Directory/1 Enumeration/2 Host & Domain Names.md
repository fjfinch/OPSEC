# Host & Domain Names
## DNS
Get names with reverse lookup via a PTR record type:
`dig @<DNS_IP> -x 127.0.0.1`
`dig @<DNS_IP> -x <DNS_IP>`
`dig @<DNS_IP> -x <IP>`

Get DC name:
`dig srv @<DNS_IP> _ldap._tcp.dc._msdcs.<DOMAIN>`
`dig srv @<DNS_IP> _ldap._tcp.<DOMAIN>`
`dig srv @<DNS_IP> _kerberos._tcp.<DOMAIN>`
`dig srv @<DNS_IP> _kpasswd._tcp.<DOMAIN>`

## RPC
Get DC name/info:
`rpcclient -U '<USER>%<PASS>' <IP> -c 'lsaquery'` 
`rpcclient -U '<USER>%<PASS>' <IP> -c 'lookupdomain <DOMAIN>'` 
`rpcclient -U '<USER>%<PASS>' <IP> -c 'enumdomains'` 
`rpcclient -U '<USER>%<PASS>' <IP> -c 'querydominfo'` 

Get DC name (locally):
`nltest /dclist:<DOMAIN>`

## NetBIOS & SMB
Get hosts or domain names:
`nbtscan <IP>/<SUBNET>`
`nmblookup -A <IP>`
`crackmapexec smb <IP>`

## LDAP
Get domain name:
`ldapsearch -x -h <IP> -s base namingcontexts`