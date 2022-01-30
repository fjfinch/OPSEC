IP addresses on subnet:
```bash
sudo nmap -sn <IP>/<SUBNET>
```

Check if host is Windows or Linux:
```bash
ping <IP>
# TTL 128 - Windows
# TTL 64 - Linux/Unix
```

All ports and services on TCP:
```bash
sudo nmap -sC -sV -p- <IP>
```

All ports and services on UDP:
```bash
sudo nmap -sU -sC -sV -p- <IP>
```