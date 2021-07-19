# Crack
## Hashes
AS-REP Roasting:
`hashcat -m 18200 <HASH> <PASSLIST> --potfile-disable`

Kerberoasting:
`hashcat -m 13100 <HASH> <PASSLIST> --potfile-disable` (RC4)
`hashcat -m 19600 <HASH> <PASSLIST> --potfile-disable` (AES128-CTS-HMAC-SHA1-96)
`hashcat -m 19700 <HASH> <PASSLIST> --potfile-disable` (AES256-CTS-HMAC-SHA1-96)

## Zip files
`zip2john <ZIP> > <HASH>`
`john --wordlist=<PASSLIST> <HASH>`