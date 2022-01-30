# Hostnames
## DNS
Hostnames through PTR (reverse lookup):
```bash
dig @<DNS_IP> -x 127.0.0.1
dig @<DNS_IP> -x <IP>
```

LDAP/Kerberos hostname through SRV:
```bash
dig srv @<DNS_IP> '_ldap._tcp.<DOMAIN>'
dig srv @<DNS_IP> '_kerberos._tcp.<DOMAIN>'
```

All DNS records through ANY:
```bash
dig any @<DNS_IP> '<DOMAIN>'
```

All DNS records through AXFR (zone transfer):
```bash
dig axfr @<DNS_IP> '<DOMAIN>'
```

Subdomains through DNS brute force:
```bash
gobuster dns -d '<DOMAIN>' -r <DNS_IP> -w <WORDLIST>
```

## NetBIOS
Hostnames:
```bash
nbtscan <IP>/<SUBNET>
nmblookup -A <IP>
```

## LDAP
Name of system/LDAP/DNS:
```bash
ldapsearch -h <IP> -x -s base serverName ldapServiceName dnsHostName
```