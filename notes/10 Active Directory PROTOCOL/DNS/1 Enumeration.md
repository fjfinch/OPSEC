# Enumeration
`dig ANY @<DNS_IP> <DOMAIN>`

## Dump DNS records via LDAP
`adidnsdump -u <DOMAIN>\\<USER> -p <PASS> <IP>`

## Reverse lookup
```bash
nslookup
> SERVER <IP_DNS>

> 127.0.0.1
> <IP_DNS>
> <DOMAIN>
> <MACHINE_IP>
```

`dig -x <MACHINE_IP> @<DNS_IP>`

`dnsrecon -n <DNS_IP> -r <IP_RANGE>/<SUBNET> -d <DOMAIN>`

## Zone transfer
`dig axfr @<IP_DNS>`
`dig axfr <DOMAIN>`
`dig axfr <DOMAIN> @<IP_DNS>`
`fierce --domain <DOMAIN> --dns-servers <DNS_IP>`

## Cache Poisoning 
-

## MITM
-