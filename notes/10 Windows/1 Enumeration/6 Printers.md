# printers
## SMB & RPC
Enum printers through SPOOLSS:
`rpcclient -U '<USER>%<PASS>' <IP> -c 'enumprinters'` (null,guest,user)