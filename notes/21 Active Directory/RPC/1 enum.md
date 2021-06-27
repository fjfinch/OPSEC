# 1 enum
`rpcclient -U '' -N <IP>`
`rpcclient -U '<USER>'%'<PASS>' <IP>`

Domainname & info & SID
        	lsaquery
        	querydominfo
		enumdomains
	OS information
		srvinfo
	Password Policy
        	getdompwinfo
	Printer info
      		enumprinters
	Users & get SID & SID lookup
	       	enumdomusers			(domain users & RIDs)
	       	querydispinfo			    (accounts & RIDs)
	       	queryuser RID			   (info domain user)
	Groups
	       	enumdomgroups		       (domain groups & RIDs)
	       	querygroup RID			  (info domain group)
	       	querygroupmem RID	     (user RID in group)
		queryusergroups 		(user groups)
		enumalsgroups builtin	      (builtin groups)
      		enumalsgroups domain	   (local groups)
	SID
      		lsaenumsid			     (LSA SIDs)
	       	lookupnames USERNAMES   (SID lookup)
	       	lookupsids SID			    (name lookup)
	Shares
	       	netshareenumall
	       	netsharegetinfo

https://www.hackingarticles.in/active-directory-enumeration-rpcclient/

## Bruteforcing usernames
`impacket-lookupsid -no-pass <DOMAIN>`

## Enumerate info
`impacket-samrdump '<DOMAIN>/<USER>:<PASS>@<IP>'`
	-port 139
	-port 445