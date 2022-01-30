# all
SMB & RPC- Domain name & host name & null & guest through SRVSVC & LSARPC:
```bash
domcheck <IP>
```

LDAP - All DNS records of domain:
```bash
adidnsdump -u '<DOMAIN>\<USER>' -p '<PASS>' <DC_IP> # PTH
```

LDAP - All useful LDAP objects:
```bash
ldapdomaindump -u '<DOMAIN>\<USER>' -p '<PASS>' --no-json --no-grep <DC_IP> # PTH
```

# Bloodhound
```bash
# Ingestor
SharpHound.ps1 # for on-premise AD
AzureHound.ps1 # for Azure AD
python3 bloodhound.py -c All -d '<DOMAIN>' -ns <IP> -u '<USER>' -p '<PASS>'

# GUI
neo4j console # database
bloodhound
```