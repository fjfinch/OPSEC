# printers
## SMB & RPC
Enum printers through SPOOLSS:
```bash
rpcclient -U '<USER>%<PASS>' <IP> -c 'enumprinters' # (null,guest,user)
```