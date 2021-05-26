Domain username convention:
	firstlast
	flast
	firlas
	first.last
	f.last
	fir.las

AS-REP Roasting attack
Kerberoasting attack
DCSync attack


Enum4linux <IP>
	use 2>/dev/null to discard error output


INFO
	rpcclient -U 'USERNAME' -N <IP>
	rpcclient -U 'USERNAME'%'PASSWORD' <IP>
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

	
PASSWORD POLICY
	polenum 'USERNAME':'PASSWORD'@TARGET


SHARES
	permissions listing & NTLM hash login
	smbmap -H TARGET
	smbmap -p '' -H TARGET
	smbmap -u 'robots' -p '' -H TARGET
	smbmap -u 'robots' -H TARGET

	permissions listing & NTLM hash login
	crackmapexec smb <IP> --shares
	crackmapexec smb <IP> --shares -u 'robots' -p ''

	NTLM hash login
	smbclient -U 'robots'%'' -L //<IP>/

	
FILES
	-
	

PASSWORD BRUTEFORCE
	-