# Pass The Key - Overpass The Hash
You have creds and a name? Just request a TGT! This could be especially useful in networks where NTLM protocol is disabled and only Kerberos is allowed as authentication protocol.

*Pass The Key:* DES, AES-128, AES-256 hash to obtain Kerberos tickets 
*Overpass The Hash:* NT hash to obtain Kerberos tickets 

Requirements:
* Hash OR password of the target user account

`impacket-getTGT <DOMAIN>/<USER> -hashes <HASH>`