# Accounts
Kerberos - Brute force accounts / check accounts:
```bash
kerbrute userenum --dc <IP> -d '<DOMAIN>' <USERLIST> # --downgrade
```

SMB & RPC - Brute force accounts with RID through LSARPC:
```bash
impacket-lookupsid '<DOMAIN>/<USER>:<PASS>@<IP>' # PTH

crackmapexec smb <IP> -u '<USER>' -p '<PASS>' --rid-brute # PTH

enum4linux-ng -u '<USER>' -p '<PASS>' -R -r 500-650,1000-1150 <IP>
```

SMB & RPC - Enumerate all user accounts through SAMR:
```bash
rpcclient -U '<USER>%<PASS>' <IP> -c 'enumdomusers' # PTH
rpcclient -U '<USER>%<PASS>' <IP> -c 'querydispinfo' # PTH
rpcclient -U '<USER>%<PASS>' <IP> -c 'queryuser <RID>' # PTH

impacket-samrdump '<DOMAIN>/<USER>:<PASS>@<IP>' # PTH
```

LDAP - All user accounts:
```bash
impacket-GetADUsers -all -dc-ip <IP> '<DOMAIN>/<USER>:<PASS>' # PTH
```