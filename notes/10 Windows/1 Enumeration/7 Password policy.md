# Password policy
## SMB & RPC
Enum password policy through SAMR:
```bash
rpcclient -U '<USER>%<PASS>' <IP> -c 'getdompwinfo' # (null,guest,user)
rpcclient -U '<USER>%<PASS>' <IP> -c 'getusrdompwinfo <RID>' # (null,guest,user)

polenum -u '<USER>' -p '<PASS>' -d <IP>
crackmapexec smb <IP> -u '<USER>' -p '<PASS>' --pass-pol
```