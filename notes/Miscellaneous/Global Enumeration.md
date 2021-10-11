## TCP & UDP
TCP info about IP address:
`sudo nmap -sC -sV -p- <IP>`
UDP info about IP address:
`sudo nmap -sU -sC -sV -p- <IP>`

## ARP
Find IP addresses on subnet:
`sudo nmap -sn <IP>/<SUBNET>`