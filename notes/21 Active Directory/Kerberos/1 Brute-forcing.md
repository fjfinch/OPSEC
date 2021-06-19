# Brute-forcing
Be careful for locking out accounts (error code 4625 & 4771). For kerbrute use `--save` to abort when one account gets lockout.

Because The python kerbrute also saves the valid TGT for the valid user:password combination.

Can find user accounts with 'UF_DONT_REQUIRE_PREAUTH' set. Can be used for a AS-REP Roasting attack.

## User enumeration
4768 - Kerberos authentication ticket (TGT) was requested
Won't lockout user account. 

Invalid user: PRINCIPAL_UNKNOWN
Valid user w pre-auth: PREAUTH_REQUIRED
Valid user wo pre-auth: an AS-REP

`kerbrute userenum --dc <IP> -d <DOMAIN> <USERLIST>`
`sudo nmap -sU -p 88 --script krb5-enum-users --script-args krb5-enum-users.realm='<DOMAIN>',userdb=<USERLIST> <IP>`

## Password enumeration
4768 - A Kerberos authentication ticket (TGT) was requested
4771 - Kerberos pre-authentication failed

User w pre-auth, valid PW: RESPONSE_TOO_BIG
User w pre-auth, invalid PW: PREAUTH_FAILED
User wo pre-auth, valid PW: a valid AS-REP
User wo pre-auth, invalid PW: an invalid AS-REP

`kerbrute bruteuser --dc <IP> -d <DOMAIN> <PASSLIST> <USER>`

## Password Spraying
4768 - A Kerberos authentication ticket (TGT) was requested
4771 - Kerberos pre-authentication failed

`kerbrute passwordspray --dc <IP> -d <DOMAIN> -v <USERLIST> <PASS>`

## Check user:password combo
 4768 - A Kerberos authentication ticket (TGT) was requested
 4771 - Kerberos pre-authentication failed
 
`kerbrute bruteforce --dc <IP> -d <DOMAIN> -v <USERPASSLIST>`
