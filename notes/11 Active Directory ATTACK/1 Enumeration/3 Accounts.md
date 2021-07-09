# Accounts
## LDAP
All domain user accounts:
`impacket-GetADUsers -all -dc-ip <IP> <DOMAIN>/<USER>:<PASS>`

## SMB
All user accounts:
`crackmapexec smb <IP> -u <USER> -p <PASS> --users`
`impacket-samrdump '<DOMAIN>/<USER>:<PASS>@<IP>'`

Brute force all accounts via RID/SID:
`crackmapexec smb <IP> -u <USER> -p <PASS> --rid-brute`
`impacket-lookupsid '<DOMAIN>/<USER>:<PASS>@<IP>'`