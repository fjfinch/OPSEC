# General
## DNS
Any info relating the domain:
`dig ANY @<DNS_IP> <DOMAIN>`

Zone transfer via an axfr record type:
`dig axfr @<DNS_IP>`
`dig axfr <DOMAIN>`
`dig axfr @<DNS_IP> <DOMAIN>`

## LDAP
Dump DNS records:
`adidnsdump -u <DOMAIN>\\<USER> -p <PASS> <DNS_IP>`

Users/computers/groups/trust/policy:
`ldapdomaindump -u <DOMAIN>\\<USER> -p <PASS> --no-json --no-grep <DC_IP>`

`ldapsearch -x -b "dc=<DOMAIN>,dc=<DOMAIN>" -H ldap://<DC_IP>`

## RPC
`rpcclient -U '' -N <IP>`
`rpcclient -U '<USER>%<PASS>' <IP>`

OS info
	srvinfo
info domain
	lsaquery
	lookupdomain DOMAIN
	enumdomains
	querydominfo
Users
	enumdomusers (list domain users & RID)
	querydispinfo (list domain users & RID)
	queryuser RID (info user)
Groups
	enumdomgroups (list domain groups & RID)
	querygroup RID (info group)
	querygroupmem RID (group membership)
	queryusergroups RID (user membership)
	enumalsgroups builtin	      (builtin groups)
     	enumalsgroups domain	   (local groups)
SID
	lsaenumsid
	lookupsids SID (username lookup)
	lookupnames USERNAME (SID lookup)
Password Policy
       	getdompwinfo (domain info)
	getusrdompwinfo RID (user info)
Printer info
     	enumprinters
Shares
       	netshareenumall
       	netsharegetinfo

https://www.hackingarticles.in/active-directory-enumeration-rpcclient/