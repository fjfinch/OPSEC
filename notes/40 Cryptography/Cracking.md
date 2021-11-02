# Cracking
## Hashes
`hashcat -m <MODE> <HASH> <PASSLIST>`

List:
0 MD5
100 sha1
7500 AS-REQ 23
13100 TGS-REP 23
18200 AS-REP 23
19600 TGS-REP 17
19700 TGS-REP 18
19800 Pre-Auth 17
19900 Pre-Auth 18
3000 LM
1000 NTLM

## Zip files
`zip2john <ZIP> > <HASH>`
`john --wordlist=<PASSLIST> <HASH>`