# How Kerberos Works
Kerberos uses keys for authentication. (Not authorization). A secret key is the hash (probably the NT hash) of an users password. Tickets are encrypted with the secret key (and cached on systems).

Servers within AD:
* DC (Domain Controller)
	* KDC (Key Distribution Center)
		* AS (Authentication Server): for TGT (Ticket Granting Ticket)
		* TGS (Ticket Granting Server): for ST (Service Ticket)
* AP (Application Server): services on AD

PAC (Privileged Attribute Certificate): List of useful information about a user’s privileges

SPN (Service Principal Names): Mapping between service and a service account:
* host-based SPN: computer account - tent to be uncrackable
* arbitrary SPN: user account

![KDC](../../00%20Extra/screens/kdc.png)

1) User to AS: I need to authenticate myself and need a TGT
	User: AS-REQ - this is me!
	AS: PREAUTH_FAILED - user w pre-auth is in database. Need a timestamp encrypted by user key
	User: AS-REQ - this is me, with the timestamp encrypted with my user key
	AS: AS-REP - I give you:
	* TGT (including client/TGS session key) encrypted with TGS key
	* Client/TGS session key encrypted with user key

	User: AS-REQ - this is me!
	AS: AS-REP - user wo pre-auth is in database. I give you:
	* TGT (including client/TGS session key) encrypted with TGS key ***(NOT USEABLE? TGT also get encrypted with user key?? nested encryption??)***
	* Client/TGS session key encrypted with user key

	User: AS-REQ - this is me!
	AS: PRINCIPAL_UNKNOWN - user is not in database

2) User to TGS: I need a ST to communicate with another service on domain
	* User - TGS-REQ: Here is a TGT + an authenticator encrypted with client/TGS session key
	* TGS - TGS-REP: Can decrypt TGT with my key, and decrypt the authenticator with client/TGS session key. I give you:
		* ST (including client/server session key) encrypted with services key ***and DC hash??***
		* Client/server session key encrypted with client/TGS session key

3) User to AP: I want to use your services
	* User - AP_REQ: Here is a ST, and an authenticator encrypted with client/server session key
	* Service - AP_REP: I can decrypt ST with my key, and decrypt the authenticator with client/server session key. MIGHT check PAC with DC. You may communicate

https://ludovic-cyber-sec.netlify.app/attacking-kerberos-tryhackme
https://www.tarlogic.com/en/blog/how-to-attack-kerberos/
https://gist.github.com/TarlogicSecurity/2f221924fef8c14a1d8e29f3cb5c5c4a
https://m0chan.github.io/2019/07/31/How-To-Attack-Kerberos-101.html