# Shares Listing



# Files Listing in Shares (and downloading)


`crackmapexec smb <IP> --shares`
`crackmapexec smb <IP> --shares -u 'robots' -p ''`

`smbmap -d DOMAIN -H IP -r`						      null session
`smbmap -d DOMAIN -H IP -p '' -r`					null session
`smbmap -d DOMAIN -H IP -u '' -r`
`smbmap -d DOMAIN -H IP -u '' -p '' -r`
`smbmap -d DOMAIN -H IP -u 'pizza' -r`
`smbmap -d DOMAIN -H IP -u 'pizza' -p PASS/HASH -r`

`smbclient -L //IP/ -U 'USER'%'PASS'`
`smbclient -L //IP/ -U 'USER'%'PASS' --pw-nt-hash`
`smbclient -L //IP/ -U '' -N`						    null session
`smbclient //IP/SHARE -U 'USER'%'PASS'`
`smbclient //IP/SHARE -U 'USER'%'PASS' --pw-nt-hash`
`smbclient //IP/SHARE -U '' -N`						  null session

`smbget smb://IP/SHARE -a -R`						    guest
`smbget smb://IP/SHARE -U USER%PASS -R`

nmblookup
nbtscan