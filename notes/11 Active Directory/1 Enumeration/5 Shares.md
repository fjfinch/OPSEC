# Shares
Windows AD also has a option "Enable access-based enumeration", which displays the shares based on user permissions. If a user does not have read permission, the share will not be visible.

WARNING: Does 'pizza' test need password to pass???
Maybe need domain tag and port tag.

## SMB
`smbclient -U '' -N -L //<IP>/` (null)
`smbclient -U '' -N //<IP>/<SHARE>` (null)
`smbclient -U 'pizza' -N -L //<IP>/` (pizza)
`smbclient -U 'pizza' -N //<IP>/<SHARE>` (pizza)
`smbclient -U '<USER>%<PASS>' -L //<IP>/` (user)
`smbclient -U '<USER>%<PASS>' //<IP>/<SHARE?` (user)

recurse: on?
prompt: off?
mget *

`smbmap -r -H <IP>` (null)
`smbmap -r -u 'pizza' -H <IP>` (pizza)
`smbmap -r -u '<USER>' -p '<PASS>' -H <IP>` (user)

`smbget -a -R smb://<IP>/<SHARE>` (null)
`smbget -U 'pizza%' -R smb://IP/SHARE` (pizza)
`smbget -U '<USER>%<PASS>' -R smb://IP/SHARE` (user)

`crackmapexec smb <IP> --shares` (null)
`crackmapexec smb <IP> -u 'pizza' --shares` (pizza)
`crackmapexec smb <IP> -u '<USER>' -p '<PASS>' --shares` (user)


`impacket-smbclient '<DOMAIN>/<USER>:<PASS>@<IP>`




`mount -t cifs //<IP>/<SHARE> /mnt/<SHARE>`
`mount -t cifs -o "username=<USER>,password=<PASS>" //<IP>/<SHARE> /mnt/<SHARE>`