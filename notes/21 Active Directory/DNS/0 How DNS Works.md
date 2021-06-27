# How DNS Works

common DNS record types and their use:

A (IPv4): Maps a host name to an IP address
SOA (Start of Authority): Identifies the DNS server responsible for the domain information
CNAME (canonical name): Provides additional names or aliases for the address record
MX (mail exchange): Identifies the mail server for the domain
SRV (service): Identifies services such as directory services
PTR (pointer): Maps IP addresses to host names
NS (name server): Identifies other name servers for the domain


`dig ANY @<DNS_IP> <DOMAIN>`

## Reverse lookup
```bash
nslookup
> SERVER <IP_DNS>

> 127.0.0.1
> <IP_DNS>
> <DOMAIN>
> <MACHINE_IP>
```

`dig -x <MACHINE_IP> @<IP_DNS>`

`dnsrecon -n <DNS_IP> -r <IP_RANGE>/<SUBNET> -d <DOMAIN>`

## Zone transfer
`dig axfr @<IP_DNS>`
`dig axfr <DOMAIN>`
`dig axfr <DOMAIN> @<IP_DNS>`
`fierce --domain <DOMAIN> --dns-servers <DNS_IP>`
