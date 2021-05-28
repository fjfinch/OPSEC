# How Kerberos Works
 Kerberos uses shared keys for authentication
	In a Windows domain this is the NTLM hash

DC (Domain Controller)
	KDC (Key Distribution Center)
		AS (Authentication Server)
		TGS (Ticket Granting Server)

1) Need a TGT (Ticket Granting Ticket) to authenticate myself.
	-> User: AS-REQ - request encrypted with user hash
	<- AS: AS-REP - Can decrypt it with user hash. Here is TGT encrypted with krbtgt hash and then your hash

2) Need a ST (Service Ticket) to communicate with other services on domain
	-> User: TGS-REQ - Here is the TGT. I want a ST for a service
	<- TGS: TGS-REP - I can decrypt TGT with your hash and my hash. Here is ST encryped with service account hash and your hash
		Part service: (user detail, session key) encrypted with user hash
		Part user: (validity time, session key) encrypted wih TGT session key

	Service Principal Names (SPNs) determines service account with service to encrypt the service ticket with hash. Two “types” in AD: 
		“host-based” SPN: domain computer account 
			tent to be uncrackable
		“arbitrary” SPN: account

3) communication with service
	-> User: here is a service ticket
	<- Service: checks out. You may communicate
	
https://www.tarlogic.com/en/blog/how-to-attack-kerberos/
https://gist.github.com/TarlogicSecurity/2f221924fef8c14a1d8e29f3cb5c5c4a
https://m0chan.github.io/2019/07/31/How-To-Attack-Kerberos-101.html