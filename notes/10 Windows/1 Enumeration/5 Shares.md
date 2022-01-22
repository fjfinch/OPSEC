# Shares
## SMB & RPC
Enum shares through SRVSVC:
```bash
rpcclient -U '<USER>%<PASS>' <IP> -c 'netshareenumall' # (null,guest,user)
rpcclient -U '<USER>%<PASS>' <IP> -c 'netsharegetinfo <SHARE>' # (null,guest,user)

smbmap -r -H <IP> # (null)
smbmap -u 'guest' -p '' -r -H <IP> # (guest)
smbmap -u '<USER>' -p '<PASS>' -r -H <IP> # (user)

# recurse: on & prompt: off & mget *
smbclient -U '<USER>%<PASS>' //<IP>/<SHARE> # (null,guest,user)
```

Mount to SMB share:
```bash
mount -t cifs -o username=<USER>,password=<PASS> //<IP>/<SHARE> /tmp/mount/ # (null,guest,user)
```

## NFS
Check NFS mounts:
```bash
showmount -e <IP>
```

Mount to NFS share:
```bash
mount -t nfs -o username=<USER>,password=<PASS> <IP>:<SHARE> /tmp/mount/ -nolock
```