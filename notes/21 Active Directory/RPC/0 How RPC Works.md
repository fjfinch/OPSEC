# How RPC Works
`rpcclient -U '' -N <IP>`
`rpcclient -U 'USERNAME'%'PASSWORD' <IP>`
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

### Bruteforcing usernames
lookupsid.py -no-pass hostname.local

### Writeable shares
`impacket-smbclient '<DOMAIN>/<USER>:<PASS>@<IP>'`

### Enumerate info
`impacket-samrdump '<DOMAIN>/<USER>:<PASS>@<IP>'`
	-port 139
	-port 445

`impacket-rpcdump '<DOMAIN>/<USER>:<PASS>@<IP>'`
`impacket-rpcdump '<DOMAIN>/<USER>:<PASS>@<IP>'`
`impacket-rpcdump '<DOMAIN>/<USER>:<PASS>@<IP>'`
	-port 135
	-port 139
	-port 445