# Subdomains
DNS
	`dnsrecon -d <DOMAIN> -D <LIST> -t brt`
	`ffuf -w <LIST> -u http://FUZZ.<DOMAIN>`
	`gobuster dns -d <DOMAIN> -w <LIST>`
Virtual Hosts
	`ffuf -w <LIST> -u http://<IP/DOMAIN>/ -H "Host: FUZZ.<DOMAIN>"`
	`gobuster vhost -u <DOMAIN> -w <LIST>`
OSINT
	Certs
		https://crt.sh
	Google
		site:*.<DOMAIN> -site:www.<DOMAIN>
	Tooling
		`sublist3r.py -d <DOMAIN>`

/usr/share/seclists/Discovery/DNS/namelist.txt
/usr/share/seclists/Discovery/DNS/*