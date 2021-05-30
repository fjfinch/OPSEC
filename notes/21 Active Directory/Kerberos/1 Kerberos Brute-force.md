# Kerberos Brute-force
Careful for locking out accounts.
Can find user accounts with 'UF_DONT_REQUIRE_PREAUTH' set, for a AS-REP Roasting attack.
`kerbrute <COMMAND> --dc <IP> -d <DOMAIN> <OPTIONS>`
	bruteuser - Passwords for user
	bruteforce - user:password combos
	passwordspray -  Password for list users 
	userenum - Users
`Rubeus` (with brute module)