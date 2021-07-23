# Password policy
## RPC
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'getdompwinfo'` (null,creds)
`rpcclient -U '<USER>%<PASS>' <DC_IP> -c 'getusrdompwinfo <RID>'` (null,creds)

## NetBIOS & SMB
`polenum -u <USER> -p <PASS> -d <IP>` (null,creds)
`crackmapexec smb <IP> -u <USER> -p <PASS> --pass-pol` (null,creds)