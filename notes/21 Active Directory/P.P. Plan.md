# P.P. Plan
## Plan
1. Vooronderzoek & bronnen opzoeken over AD
	1. Wat is AD en hoe zet je het op?
2. Context rondom AD begrijpen
	1. Protocollen/porten/services
	2. Good & bad practices
3. Experts benaderen over Windows AD hacken
	1. Werk
	2. School
4. Een Windows omgeving opzetten
	1. Windows server (DC)
	2. Windows hosts
5. Kwetsbaarheden opzoeken & per kwetsbaarheid op AD testen
	1. Wat is de kwetsbaarheid?
	2. Wanneer werkt de kwetsbaarheid?
	3. Waarom werkt de kwetsbaarheid?
	4. Tools used

## AD opzet
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

## Test AD creds
Root domain name: opsec.test
NetBios domain name: OPSEC

DC01 DSRM Pass:	Password2!

DC01 domain administrator
User:	Administrator
Pass:	Password1!

Host02 local user/admin
Name:	Bob Brown
Pass:	Password4!
pet:pet city:city nickname:nickname

Domain user - bruteforceable
Full name: Clalk Cohen
User: clark.cohen
Pass: Password5!

Domain user - bruteforceable & NO_PREAUTH
Full name: Daniel Davis
User: daniel.davis
Pass: Password6!

Service account - bruteforceable & NO_PREAUTH
Full name: testservice
User: testservice
Pass: Password7!

## Other ToDo
SAM (older/used local) vs UPN login
NetBios name vs DNS/computer name 
http://blog.schertz.name/2012/08/understanding-active-directory-naming-formats/

dekstop computer not synced for domain users
local admins nessecary? LAPS?
No DHCP server