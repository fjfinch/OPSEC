# How Kerberos Works
 Kerberos uses shared keys for authentication. (Not authorization)
	In a Windows domain this is the NTLM hash

DC (Domain Controller)
	KDC (Key Distribution Center)
		AS (Authentication Server): request TGT (Ticket Granting Ticket)
		TGS (Ticket Granting Server): request ST (Service Ticket)
AP (Application Server): Services on AD

![[Pasted image 20210612194950.png]]

1) User to AS: I need a TGT to authenticate myself.
	-> User: AS-REQ - Encrypted request with user hash
	<- AS: AS-REP - Can decrypt it with user hash. Here is TGT encrypted with krbtgt hash and then your hash

2) User to TGS: I need a ST to communicate with other APs on domain
	-> User: TGS-REQ - Here is the TGT. I want a ST for a service
	<- TGS: TGS-REP - I can decrypt TGT with your hash and my hash. Here is ST encryped with service account hash and your hash

3) User to AP: I want to use your services
	-> User: AP_REQ - Here is a service ticket
	<- Service: AP_REP - I can decrypt it, it checks out. You may communicate

Service Principal Names (SPNs) determines service account with service to encrypt the service ticket with hash. Two “types” in AD: 
	“host-based” SPN: domain computer account 
		tent to be uncrackable
	“arbitrary” SPN: account


https://ludovic-cyber-sec.netlify.app/attacking-kerberos-tryhackme
https://www.tarlogic.com/en/blog/how-to-attack-kerberos/
https://gist.github.com/TarlogicSecurity/2f221924fef8c14a1d8e29f3cb5c5c4a
https://m0chan.github.io/2019/07/31/How-To-Attack-Kerberos-101.html