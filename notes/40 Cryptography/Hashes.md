# Hashes
## Identify
`name-that-hash -a -t <HASH>`
`hash-identifier <HASH>`
`hashid -em <HASH>`

## Online crack
https://crackstation.net/

## Hashcat
`hashcat -m <MODE> <HASH> <PASSLIST> --potfile-disable -r /usr/share/hashcat/rules/<RULE>`

List:
* 0 MD5
* 100 SHA1
* 7500 AS-REQ 23
* 13100 TGS-REP 23
* 18200 AS-REP 23
* 19600 TGS-REP 17
* 19700 TGS-REP 18
* 19800 Pre-Auth 17
* 19900 Pre-Auth 18
* 3000 LM
* 1000 NTLM

## John
`john --wordlist=<PASSLIST> --format=<HASHTYPE> <HASHFILE>`

## Zip files to hash
`zip2john <ZIP> > <HASH>` (use john)

## SSH key to hash
`ssh2john <ID_RSA> > <HASH>` (use john)