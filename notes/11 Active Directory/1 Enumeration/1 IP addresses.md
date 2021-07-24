# IP addresses
## ARP
IP addresses on subnet:
`sudo nmap -sn <IP>/<SUBNET>`

## TCP & UDP
TCP info about IP address:
`sudo nmap -sC -sV -p- <IP>`
UDP info about IP address:
`sudo nmap -sU -sC -sV -p- <IP>`

## NetBIOS & SMB
IP address of hostname:
`nmblookup <HOST>`