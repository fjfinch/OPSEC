# P.P. Plan
Student: Flo Zevenhuizen - 15025586

P.P. track: 2 - Eigen gedefinieerd project

Idee: Windows Active Directory begrijpen. AD is een groep protocollen die gebruikt worden voor een domain network met services en processen. Gebruikte protcollen zijn bijvoorbeeld: LDAP, Kerberos, SMB, NetBIOS en DNS. Het is een service die wordt gebruikt bij vele organisaties en is belangrijk bij pentesting. 

Plan:
1. Vooronderzoek & bronnen opzoeken over AD
	* Wat is AD en hoe zet je het op?
2. Context rondom AD begrijpen
	* Protocollen/porten/services
	* Good & bad practices
3. Experts benaderen over Windows AD hacken
	* Werk
		* Dirk-jan (Fox-IT)
		* Cas (Deloitte)
	* School
		* Daniel
4. Een Windows omgeving opzetten
	* Windows server (DC)
	* Windows hosts
	* Users
	* Shares & others
5. Kwetsbaarheden opzoeken & per kwetsbaarheid op AD testen
	* Wat is de kwetsbaarheid?
	* Wanneer werkt de kwetsbaarheid (welke opties, bad practice)?
	* Waarom werkt de kwetsbaarheid (waarom bestaat het nog en is het niet gepatched)?
	* Wat te zien op het netwerk - Wireshark
	* Tools used
		* Hoe te benaderen remote (linux)
		* Hoe te benaderen local (windows)
6. Eigen gemaakte notes gebruiken bij CTF boxen
	* TryHackMe

## Intro
Dit document ziet er wellicht anders uit dan normaal, omdat het via een note editor automatisch gegenereerd is naar een PDF. Notes voor dit project is gemaakt met Obsidian op Linux. Alles is online gezet op GitHub en staat voor nu nog publiekelijk voor inzage docent: https://github.com/fjfinch/OPSEC

Als bijlagen zijn een paar paginas die ik als notities heb gemaakt om een bepaald onderwerp beter te begrijpen. Alle gemaakte notes staan op GitHub. Hier is ook met de commits te zien dat ik de 4 weken actief bezig was met het project.

Obisidian notes:

![[notes.png]]

## AD omgeving en Linux aanvaller
Gebruikte machines:
* Windows
	*  Windows Server: Domain Controller (DC01)
	* Windows 10 Enterprise (Host01)
	* Windows 10 Pro (Host02)
* Linux
	* Kali Linux

![[all.JPG]]

## AD omgeving info:
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

## TryHackMe
Heb 2 CTFs gedaan op TryHackMe. Ben momenteel nog bezeig met de rest. Wil alle informatie ook in mijn notities zetten:

![[Pasted image 20210709025904.png]]

## Beroepstaken
Voor het opzetten van een eigen project is het belangrijk om te kijken wat het probleem is. Waarom begin je met het project? Ik heb een onderwerp (pentesten Windows/AD) waar ik meer over wil weten, maar ik heb niet alle tijd en resources. Hoe ga ik hiermee om. Het was dus belangrijk om het onderwerp af te bakenen. Ik wilde eerst alles van het certificaat OSCP leren, waar ook AD onder valt, maar dat was te breed. Ik vond dat het concreter moest. Dit zijn beroepstaken A1 en A4. Analyseren probleem en uitvoeren onderzoek. Vervolgens moest ik informatie vergaren, onderzoeken en toepassen. Dit deed ik dus door veel notities te maken, en alles te hierarcheren en ordenen. Verder was het belagrijk om te zien welke info belangrijk is en van waarde is. Veel websites hadden veel technisch termen, maar vertelde niks belangrijks. Dit valt onder beroepstaken A2 en A3. 

Het opzetten van een Windows domein en het opzetten van een netwerk valt goed samen met beroepstaak D4. Het instellen van verschillende machines, het begrijpen van een OS en het toepassen van script op het netwerk.

Tijdens het onderzoek kwam ik er achter dat er soms ook dingen waren die zo technisch waren dat ze niet online stonden. Hoe vind je deze info? Beroepstaak GC: Weest kritisch en onderzoekend. Het kritisch lezen van teksten en het vinden van informatie, over bijvoorbeeld Kerberos, kan moeilijk zijn. Zo heb ik aan specialisten van Deloitte en Fox-IT die ik vertrouw vragen gesteld om zo aan bepaalde informatie te komen.

En waar dit hele onderzoek over ging: Gf: leren leren. Ik wist nog bijna niks van dit onderwerp (Windows/AD pentesten), en wilde juist hierover meer te weten komen. En omdat ik er beetje blind in ging, moest ik leren te leren. Tijdens het onderzoek moest ik ook telkens bekijken wat belangrijk was en waar ik mijn tijd in wilde steken. En wanneer wist ik dat ik een onderwerp goed begreep? Dit was wanneer ik een bepaald onderwerp kon uitleggen aan iemand die niks begreep van ICT.  

## 3 leerpunten
Ik ben er achter gekomen hoe belangrijk en handig goede notities zijn. Zo zie je sneller een gedetailleerde fout of iets geks. (Vooral als je met iets heel technisch bezig bent). Ook leerde ik dat ik graag alleen dingen wilde opschrijven die ik echt goed begreep. Als ik iets wilde noteren, maar begreep het nog niet zo goed, ging ik het beter onderzoeken. Zo ben ik. En goede notities zijn een soort tweede brein. Je begrijpt iets nu wel, maar weet je het nog over een maand? Met goede notities kan je het makkelijk terug lezen en eventueel aanpassen.

Dingen vragen aan mensen die specialist zijn. Ik deed soms te lang om iets online op te zoeken, bij bronnen die misschien wel en misschien niet te vertrouwen zijn, maar ikkon het ook gewoon vragen aan iemand. ik zal sneller iemand benaderen als ik iets specifieks wil weten/begrijpen. Hie leer ik ook beroepstaak Ga.

Tijdens een project leer om af te bakenen. Alles is leuk, maar je kan niet alles leren in een bepaalde tijd. Meer gericht op beroepstaak A1 en A4. Bedenk een concreet probleemdomein en noteer een onderzoekstraject. En kijk op verschillende punten in he onderzoek: waar ben ik mee bezig en ben ik nog in traject? Of is het nodig om het onderzoekstraject een beetje aan te passen?