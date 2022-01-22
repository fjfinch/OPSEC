# Accounts
## Kerberos
Brute force accounts:
`kerbrute userenum --dc <IP> -d <DOMAIN_DNS> <USERLIST>`

## SMB & RPC
Brute force accounts with RID through LSA:
`impacket-lookupsid '<DOMAIN>/<USER>:<PASS>@<IP>'` (null,guest,user)
`crackmapexec smb <IP> -u '<USER>' -p '<PASS>' --rid-brute` (null,guest,user)
`enum4linux-ng -u '<USER>' -p '<PASS>' -R -r 500-650,1000-1150 <IP>` (null,guest,user)

Enumerate all user accounts through SAMR:
`rpcclient -U '<USER>%<PASS>' <IP> -c 'enumdomusers'` (null,guest,user)
`rpcclient -U '<USER>%<PASS>' <IP> -c 'querydispinfo'` (null,guest,user)
`rpcclient -U '<USER>%<PASS>' <IP> -c 'queryuser <RID>'` (null,guest,user)
`impacket-samrdump '<DOMAIN>/<USER>:<PASS>@<IP>'` (null,guest,user)

## LDAP
All user accounts:
`impacket-GetADUsers -all -dc-ip <IP> <DOMAIN>/<USER>:<PASS>` (user)


check titels for correct protocols
check <ip> <domain>
check all <user> between quotes
remove impacket - domains
check if requires password
check if purpose is normal or for 'all'