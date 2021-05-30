# How SMB & NetBios Works
SMB -> NetBios over TCP (NBT) -> TCP 139
SMB -> TCP/UDP 445

NETBIOS Name Service (NBNS) -> TCP/UDP 137
NETBIOS Datagram Service (NBDS) -> TCP/UDP 138
NETBIOS Session Service (NBSS) -> TCP/UDP 139

Windows host/computer name (64bytes) != NetBios name (15bytes)

## Possible Credentials
|User|Pass|
|----|----|
|(blank)|(blank)|
|guest|(blank)|
|Administrator, admin|(blank), password, administrator, admin|
|arcserve|arcserve, backup|
|tivoli, tmersrvd|tivoli, tmersrvd, admin|
|backupexec, backup|backupexec, backup, arcada|
|test, lab, demo|password, test, lab, demo|