# Password policy
## NetBIOS & SMB & RPC
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'getdompwinfo'` (SAMR) (creds)
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'getusrdompwinfo <RID>'` (SAMR) (creds)

`polenum -u <USER> -p <PASS> -d <IP>` (creds)
`crackmapexec smb <IP> -u <USER> -p <PASS> --pass-pol` (null,creds)