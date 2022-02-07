# Other
SMB & RPC - Change password user:
```bash
smbpasswd -U '<USER>' -r <IP>
```

SMB & RPC - Enum password policy through SAMR:
```bash
rpcclient -U '<USER>%<PASS>' <IP> -c 'getdompwinfo' # PTH
rpcclient -U '<USER>%<PASS>' <IP> -c 'getusrdompwinfo <RID>' # PTH

polenum -u '<USER>' -p '<PASS>' -d <IP>

crackmapexec smb <IP> -u '<USER>' -p '<PASS>' --pass-pol # PTH
```

SMB & RPC - Enum printers through SPOOLSS:
```bash
rpcclient -U '<USER>%<PASS>' <IP> -c 'enumprinters' # PTH
```