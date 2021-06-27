# 1 Enumeration
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

## Bruteforcing usernames
`impacket-lookupsid '<DOMAIN>/<USER>:<PASS>@<IP>'`

## Enumerate info
`impacket-samrdump '<DOMAIN>/<USER>:<PASS>@<IP>'`