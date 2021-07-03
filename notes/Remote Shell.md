# Remote Shell
SMB (& RPC): 445 & 135
* impacket-psexec
* impacket-smbexec
* impacket-wmiexec
* winexe

RDP: 3389
* `impacket-rdp_check <DOMAIN>/<USER>:<PASS>@<IP>`	check creds for RDP
* rdesktop 
* xfreerdp
* remmina

WinRM: 5985 & 5986
* evil-winrm



Check:
`crackmapexec SERVICE <IP> -u '<USER>' -p <PASS>` hash: -H

Shell:
`evil-winrm -i <IP> -u <USER> -p <PASS>`
`impacket-wmiexec '<DOMAIN>/<USER>:<PASS>@<IP>'`