# P.P. Plan
## Plan
1. Vooronderzoek & bronnen opzoeken over AD
	1. Wat is AD en hoe zet je het op?
2. Context rondom AD begrijpen
	1. Protocollen/porten/services
	2. Good & bad practices
3. Experts benaderen over Windows AD hacken
	1. Werk
		1. Dirk-jan (Fox-IT)
		2. Cas (Deloitte)
	2. School
		1. Daniel
4. Een Windows omgeving opzetten
	1. Windows server (DC)
	2. Windows hosts
	3. Users
	4. Shares & others
5. Kwetsbaarheden opzoeken & per kwetsbaarheid op AD testen
	1. Wat is de kwetsbaarheid?
	2. Wanneer werkt de kwetsbaarheid (welke opties, bad practice)?
	3. Waarom werkt de kwetsbaarheid (waarom bestaat het nog en is het niet gepatched)?
	4. Wat te zien op het netwerk - Wireshark
	5. Tools used
		1. Hoe te benaderen remote (linux)
		2. Hoe te benaderen local (windows)

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

Set password lockout policy
Add shares
Add service account

## Other ToDo
dekstop computer not synced for domain users
local admins nessecary? LAPS?
No DHCP server
Domain/local users folder exist on system after user deletion?