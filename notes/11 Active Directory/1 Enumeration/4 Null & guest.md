# Null & guest
## NetBIOS & SMB
Check guest account:
`crackmapexec smb <IP> -u 'guest' -p ''`

Check null session:
`crackmapexec smb <IP> -u '' -p ''`

`rpcclient -U '' -N <DC_IP>`
`smbclient -U '' -N //<IP>/ipc$`

Brute force accounts with RID when able to read IPC$:
`impacket-lookupsid '<DOMAIN>/<USER>:<PASS>@<IP>'` (null,guest,creds)
`crackmapexec smb <IP> -u <USER> -p <PASS> --rid-brute` (null,guest,creds)