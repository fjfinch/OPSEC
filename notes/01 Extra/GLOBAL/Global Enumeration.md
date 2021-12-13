Check if host is Windows or Linux:
`ping <IP>`
* TTL 128 - Windows
* TTL 64 - Linux/Unix

All ports and services on TCP:
`sudo nmap -sC -sV -p- <IP>`

All ports and services on UDP:
`sudo nmap -sU -sC -sV -p- <IP>`

IP addresses on subnet:
`sudo nmap -sn <IP>/<SUBNET>`