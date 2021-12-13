# Accounts
## Kerberos
Brute force - Won't lockout user account:
`kerbrute userenum --dc <DC_IP> -d <DOMAIN> <USERLIST>`

## NetBIOS & SMB & RPC
Enumerate all user accounts through SAMR:
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'enumdomusers'`
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'querydispinfo'`
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'queryuser <RID>'`
`impacket-samrdump '<DOMAIN>/<USER>:<PASS>@<IP>'`

Brute force accounts with RID through LSA:
`impacket-lookupsid '<DOMAIN>/<USER>:<PASS>@<IP>'`
`crackmapexec smb <IP> -u <USER> -p <PASS> --rid-brute`
`enum4linux -u '<USER>' -p '<PASS>' -r -R 500-650,1000-1150 <IP> 2>/dev/null | grep -v unknown`
`python3 enum4linux-ng.py -u '<USER>' -p '<PASS>' -R -r 500-650,1000-1150 <IP>`

`crackmapexec smb <IP> -u <USER> -p <PASS> --users`

## LDAP
All domain user accounts:
`impacket-GetADUsers -all -dc-ip <DC_IP> <DOMAIN>/<USER>:<PASS>`

All useful LDAP objects (accounts/computers/groups/trust/policy):
`ldapdomaindump -u <DOMAIN>\\<USER> -p <PASS> --no-json --no-grep <DC_IP>`