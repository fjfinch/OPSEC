# Hosts
Check if host is Windows or Linux:
```bash
ping <IP>
# TTL 128 - Windows
# TTL 64 - Linux/Unix
```

All DNS records:
```bash
# through ANY DNS record:
dig any @<DNS_IP> '<DOMAIN>'

# through AXFR DNS record (zone transfer):
dig axfr @<DNS_IP> '<DOMAIN>'

# through LDAP query:
adidnsdump -u '<DOMAIN>\<USER>' -p '<PASS>' <DC_IP> # PTH
```

## IP addresses
IP addresses on subnet:
```bash
sudo nmap -sn <IP>/<SUBNET>
```

IP address of host through A DNS record:
```bash
dig a @<DNS_IP> '<HOST>'
```

## Host names
Host names through PTR DNS record (reverse lookup):
```bash
dig @<DNS_IP> -x 127.0.0.1
dig @<DNS_IP> -x <IP>
```

Subdomains through DNS brute force:
```bash
gobuster dns -d '<DOMAIN>' -r <DNS_IP> -w <WORDLIST>
```

Host name & other through SRVSVC & LSARPC over SMB & RPC:
```bash
domcheck <IP>
nbtscan <IP>/<SUBNET>
nmblookup -A <IP>
```

## LDAP servers
All LDAP server names through SRV DNS record:
```bash
dig srv @<DNS_IP> '_ldap._tcp.<DOMAIN>'
```

LDAP server name through LDAP query:
```bash
ldapsearch -h <LDAP_IP> -x -s base ldapServiceName serverName
```

## Kerberos servers
All Kerberos server names through SRV DNS record:
```bash
dig srv @<DNS_IP> '_kerberos._tcp.<DOMAIN>'
```

### DNS servers
Kerberos server name through LDAP query:
```bash
ldapsearch -h <LDAP_IP> -x -s base dnsHostName
```