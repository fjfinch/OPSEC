# Shares
SMB & RPC - Enum shares through SRVSVC:
```bash
rpcclient -U '<USER>%<PASS>' <IP> -c 'netshareenumall' # PTH
rpcclient -U '<USER>%<PASS>' <IP> -c 'netsharegetinfo <SHARE>' # PTH

smbmap -u '<USER>' -p '<PASS>' -r -H <IP> # PTH

smbclient -U '<USER>%<PASS>' //<IP>/<SHARE> # PTH
# recurse: on & prompt: off & mget *
```

SMB & RPC - Mount to SMB share:
```bash
mount -t cifs -o username='<USER>',password='<PASS>' //<IP>/<SHARE> /tmp/mount/
```

NFS - Check NFS mounts:
```bash
showmount -e <IP>
```

NFS - Mount to NFS share:
```bash
mount -t nfs -o username='<USER>',password='<PASS>' <IP>:<SHARE> /tmp/mount/ -nolock
```