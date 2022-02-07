# Hostnames
DNS - Hostnames through PTR (reverse lookup):
```bash
dig @<DNS_IP> -x 127.0.0.1
dig @<DNS_IP> -x <IP>
```

DNS - LDAP/Kerberos server through SRV:
```bash
dig srv @<DNS_IP> '_ldap._tcp.<DOMAIN>'
dig srv @<DNS_IP> '_kerberos._tcp.<DOMAIN>'
```

DNS - All DNS records of given 'host' through ANY:
```bash
dig any @<DNS_IP> '<DOMAIN>'
```

DNS - All DNS records of given domain through AXFR (zone transfer):
```bash
dig axfr @<DNS_IP> '<DOMAIN>'
```

DNS - Subdomains through DNS brute force:
```bash
gobuster dns -d '<DOMAIN>' -r <DNS_IP> -w <WORDLIST>
```

NetBIOS - Hostnames:
```bash
nbtscan <IP>/<SUBNET>

nmblookup -A <IP>
```

LDAP - Name of system/LDAP/DNS server:
```bash
ldapsearch -h <IP> -x -s base serverName ldapServiceName dnsHostName
```