# SMB & NetBIOS
SMB (Server Message Block) also partially known as CIFS (Common Internet File System) is a communication protocol for providing shared access to files, printers, and serial ports between nodes on a network. It also provides an authenticated inter-process communication (IPC) mechanism via named pipes and can be used over RPC. Check out RPC: [[4 RPC]].

NetBIOS (Network Basic Input Output System) is a protocol that allows applications, desktops, etc. on a local area network (LAN) to communicate with network hardware and to transmit data across the network. Software applications that run on a NetBIOS network locate and identify each other via their NetBIOS names. NetBIOS names are different from DNS names.

SMB -> NetBIOS over TCP (NBT) -> TCP 139
SMB -> TCP/UDP 445

NetBIOS Name Service (NBNS) -> TCP/UDP 137
NetBIOS Datagram Service (NBDS) -> TCP/UDP 138
NetBIOS Session Service (NBSS) -> TCP/UDP 139

## NetBIOS suffix
|Name|suffix|Type|Usage|
|-|-|-|-|
|\<computer>|0x00|Unique|Default name registered by a client computer|
|\<machine group>|0x00|Group|Browser clients and servers in \<machine group>|
|[01][02]\_\_MSBROWSE\_\_[02][01]|0x01|Group|Master browser|
|\<domain>|0x1B|Unique|Domain master browser|
|\<machine group>|0x1D|Unique|Master browser|
|\<machine group>|0x1E|Group|Browser service elections|
|\<computer>|0x20|Unique|Default name registered by a server computer|