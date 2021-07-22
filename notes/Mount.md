# Mount
`mount -t cifs <IP>:<SHARE> /tmp/mount/`
`mount -t nfs <IP>:<SHARE> /tmp/mount/ -nolock`
`mount -t nfs -o vers=2 <IP>:<SHARE> /tmp/mount/`
`mount -t cifs -o "username=<USER>,password=<PASS>" //<IP>/<SHARE> /mnt/<SHARE>`