
# Subdomains
DNS
	`dnsrecon -d <DOMAIN> -D <LIST> -t brt`
	`ffuf -u http://FUZZ.<DOMAIN> -w <LIST>`
	`gobuster dns -d <DOMAIN> -w <LIST> -i`
Virtual Hosts
	`ffuf -u http://<IP/DOMAIN>/ -H "Host: FUZZ.<DOMAIN>" -w <LIST>`
	`gobuster vhost -u <DOMAIN> -w <LIST>`
OSINT
	Certificates
		Subject Alt Names
		https://crt.sh
		https://transparencyreport.google.com/https/certificates
	Google
		site:*.<DOMAIN> -site:www.<DOMAIN>
	Tooling
		`sublist3r.py -d <DOMAIN>`

/usr/share/seclists/Discovery/DNS/namelist.txt
/usr/share/seclists/Discovery/DNS/*