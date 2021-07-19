# Host & Domain Names
## DNS
Reverse lookup via a PTR record type to get names:
`dig @<DNS_IP> -x 127.0.0.1`
`dig @<DNS_IP> -x <DNS_IP>`
`dig @<DNS_IP> -x <IP>`

Get DC name:
`dig srv @<DNS_IP> _ldap._tcp.dc._msdcs.<DOMAIN>`
`dig srv @<DNS_IP> _ldap._tcp.<DOMAIN>`
`dig srv @<DNS_IP> _kerberos._tcp.<DOMAIN>`
`dig srv @<DNS_IP> _kpasswd._tcp.<DOMAIN>`

## SMB & NetBIOS
Get names for hosts or domain:
`nbtscan <IP>/<SUBNET>`
`nmblookup -A <IP>`
`crackmapexec smb <IP>`

## RPC
Find DC info:
`rpcclient -U '<USER>%<PASS>' <IP> -c 'lsaquery'` 
`rpcclient -U '<USER>%<PASS>' <IP> -c 'lookupdomain <DOMAIN>'` 
`rpcclient -U '<USER>%<PASS>' <IP> -c 'enumdomains'` 
`rpcclient -U '<USER>%<PASS>' <IP> -c 'querydominfo'` 

Find DC name (locally):
`nltest /dclist:<DOMAIN>`