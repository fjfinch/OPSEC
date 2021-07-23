# IP addresses
## ARP
IP addresses on subnet:
`sudo nmap -sn <IP>/<SUBNET>`

## TCP
Info about IP address:
`sudo nmap -sC -sV -p- <IP>`

## NetBIOS & SMB
IP address of online host:
`nmblookup <HOST>`