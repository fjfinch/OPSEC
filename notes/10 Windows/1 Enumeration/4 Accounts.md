# Accounts
## Kerberos
Brute force - Won't lockout user account:
`kerbrute userenum --dc <DC_IP> -d <DOMAIN> <USERLIST>`

## NetBIOS & SMB & RPC
SAMR enumerate all user accounts:
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'enumdomusers'` (creds) SAMR
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'querydispinfo'` (creds) SAMR
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'queryuser <RID>'` (creds) SAMR
`impacket-samrdump '<DOMAIN>/<USER>:<PASS>@<IP>'` (creds)

LSA brute force accounts with RID:
`impacket-lookupsid '<DOMAIN>/<USER>:<PASS>@<IP>'` (creds)
`crackmapexec smb <IP> -u <USER> -p <PASS> --rid-brute` (creds)
`enum4linux -u '<USER>' -p '<PASS>' -r -R 500-650,1000-1150 <IP> 2>/dev/null | grep -v unknown`
`python3 enum4linux-ng.py -u '<USER>' -p '<PASS>' -R -r 500-650,1000-1150 <IP>`

`crackmapexec smb <IP> -u <USER> -p <PASS> --users` (creds)

## LDAP
All domain user accounts:
`impacket-GetADUsers -all -dc-ip <DC_IP> <DOMAIN>/<USER>:<PASS>` (creds)

All useful LDAP objects (accounts/computers/groups/trust/policy):
`ldapdomaindump -u <DOMAIN>\\<USER> -p <PASS> --no-json --no-grep <DC_IP>` (creds)