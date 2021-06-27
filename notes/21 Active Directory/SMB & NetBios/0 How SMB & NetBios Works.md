# How SMB & NetBios Works
SMB (Server Message Block) in modern language is also known as CIFS (Common Internet File System). The system operates as an application-layer network protocol primarily used for offering shared access to files, printers, serial ports, and other sorts of communications between nodes on a network.

NetBIOS (Network Basic Input Output System) is a software protocol that allows applications, PCs, and Desktops on a local area network (LAN) to communicate with network hardware and to transmit data across the network. Software applications that run on a NetBIOS network locate and identify each other via their NetBIOS names. NetBIOS names are different from DNS names.

SMB -> NetBios over TCP (NBT) -> TCP 139
SMB -> TCP/UDP 445

NETBIOS Name Service (NBNS) -> TCP/UDP 137
NETBIOS Datagram Service (NBDS) -> TCP/UDP 138
NETBIOS Session Service (NBSS) -> TCP/UDP 139

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