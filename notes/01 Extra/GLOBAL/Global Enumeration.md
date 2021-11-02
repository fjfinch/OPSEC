## TCP & UDP
Find all ports and services on TCP:
`sudo nmap -sC -sV -p- <IP>`
Find all ports and services on UDP:
`sudo nmap -sU -sC -sV -p- <IP>`

## ARP
Find IP addresses on subnet:
`sudo nmap -sn <IP>/<SUBNET>`