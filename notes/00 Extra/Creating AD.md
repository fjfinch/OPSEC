# Creating AD
## AD setup
1. Setup Server & hosts on VM:
	Windows Server ISO: https://www.microsoft.com/en-us/evalcenter/evaluate-windows-server-2019
	Windows 10 Enterprise ISO: https://www.microsoft.com/en-us/evalcenter/evaluate-windows-10-enterprise
	Windows 10: https://www.microsoft.com/nl-nl/software-download/windows10
	1. Time & currency: Dutch (Netherlands)
	2. For server: Windows Server 2019 Standard Evaluation (Desktop Experience)
	3. Custom install
	4. For server: add Administrator creds
	5. Add guestadditions

2. Change settings:
	1. Change IPv4 settings
		1. Server: set static IP - Subnet mask - Default gateway
		2. Hosts: set DNS server
	2. Disable IPv6 settings
	3. Change hostnames

3. Server: Creating AD
	1. Add roles & features
		1. Add AD DS
	2. Promote this server to a domain controller
		1. Add a new forest
			1. Specify domain name
		2. Type password for DSRM

4. Hosts: adding to domain
	1. Add domain to computer

Set password lockout policy
Add shares
Add service account

## Test AD Environment
Root domain name: opsec.test
NetBios domain name: OPSEC

DC01 DSRM Pass:	Password2! (The DSRM admin is the local administrator account of the DC. Remote logon needs to be enabled first.)

DC01 domain administrator
User:	Administrator
Pass:	Password1!

Host02 local user/admin
Name:	Bob Brown
Pass:	Password4!
pet:pet city:city nickname:nickname

Domain user
Full name: Clalk Cohen
User: clark.cohen
Pass: Password5!

Domain user - NO_PREAUTH
Full name: Daniel Davis
User: daniel.davis
Pass: Password6!

Domain user - NO_PREAUTH
Full name: Emily Ernst
User: emily.ernst
Pass: Password8!

Domain user - domain admin
Full name: Frank Fuller
User: frank.fuller
Pass: Password10!

Service account
Full name: sqlaccount
User: sqlaccount
Pass: Password9!