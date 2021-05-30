# Shares & Files Listing
WARNING: Does 'pizza' test need password to pass???
Maybe need domain tag and port tag.

## smbclient
`smbclient -U '' -N -L //<IP>/` (null)
`smbclient -U '' -N //<IP>/<SHARE>` (null)
`smbclient -U 'pizza' -N -L //<IP>/` (pizza)
`smbclient -U 'pizza' -N //<IP>/<SHARE>` (pizza)
`smbclient -U '<USER>%<PASS>' -L //<IP>/` (user)
`smbclient -U '<USER>%<PASS>' //<IP>/<SHARE?` (user)

recurse: on?
prompt: off?
mget *

## smbmap
`smbmap -r -H <IP>` (null)
`smbmap -r -u 'pizza' -H <IP>` (pizza)
`smbmap -r -u '<USER>' -p '<PASS>' -H <IP>` (user)

## smbget
`smbget -a -R smb://<IP>/<SHARE>` (null)
`smbget -U 'pizza%' -R smb://IP/SHARE` (pizza)
`smbget -U '<USER>%<PASS>' -R smb://IP/SHARE` (user)

## crackmapexec
`crackmapexec smb <IP> --shares` (null)
`crackmapexec smb <IP> -u 'pizza' --shares` (pizza)
`crackmapexec smb <IP> -u '<USER>' -p '<PASS>' --shares` (user)