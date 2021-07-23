# Null & guest
## NetBIOS & SMB
Check guest account:
`crackmapexec smb <IP> -u 'guest' -p ''`

Check null session:
`rpcclient -U '' -N <DC_IP>`
`smbclient -U '' -N //<IP>/ipc$`