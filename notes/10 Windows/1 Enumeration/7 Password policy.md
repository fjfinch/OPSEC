# Password policy
## NetBIOS & SMB & RPC
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'getdompwinfo'` (SAMR)
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'getusrdompwinfo <RID>'` (SAMR)

`polenum -u <USER> -p <PASS> -d <IP>`
`crackmapexec smb <IP> -u <USER> -p <PASS> --pass-pol`