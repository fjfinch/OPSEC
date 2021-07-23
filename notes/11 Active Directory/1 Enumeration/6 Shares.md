# Shares
Windows AD also has a option "Enable access-based enumeration", which displays the shares based on user permissions. If a user does not have read permission, the share will not be visible.

## RPC
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'netshareenumall'` (null,creds)
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'netsharegetinfo <SHARE>'` (null,creds)

## NetBIOS & SMB
recurse: on
prompt: off
mget *

`smbclient -U '' -N -L //<IP>/` (null)
`smbclient -U 'guest%' -L //<IP>/` (guest)
`smbclient -U '<USER>%<PASS>' -L //<IP>/` (user)

`smbclient -U '' -N //<IP>/<SHARE>` (null)
`smbclient -U 'guest%' //<IP>/<SHARE>` (guest)
`smbclient -U '<USER>%<PASS>' //<IP>/<SHARE>` (user)

`smbmap -r -H <IP>` (null)
`smbmap -r -u 'guest' -p '' -H <IP>` (guest)
`smbmap -r -u '<USER>' -p '<PASS>' -H <IP>` (user)

`smbget -a -R smb://<IP>/<SHARE>` (null)
`smbget -U 'guest%' -R smb://IP/SHARE` (guest)
`smbget -U '<USER>%<PASS>' -R smb://IP/SHARE` (user)

`crackmapexec smb <IP> -u '' -p '' --shares` (null)
`crackmapexec smb <IP> -u 'guest' -p '' --shares` (guest)
`crackmapexec smb <IP> -u '<USER>' -p '<PASS>' --shares` (user)

Mount to SMB share:
`mount -t cifs -o username=<USER>,password=<PASS> //<IP>/<SHARE> /tmp/mount/` (null,creds)

## NFS
check NFS mount:
`showmount -e <IP>`

Mount to NFS share:
`mount -t nfs -o username=<USER>,password=<PASS> <IP>:<SHARE> /tmp/mount/ -nolock` (null,creds)