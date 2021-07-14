# RPC
Remote Procedure Call (RPC) is a type of IPC. RPC enables applications to call functions remotely. Therefore, RPC makes IPC as easy as calling a function. RPC is when a computer program causes a procedure to execute on another computer on a shared network, which is coded as if it were a normal (local) procedure call, without the programmer explicitly coding the details for the remote interaction.

Within Windows environments, many server applications are exposed via RPC. Multiple protocols  are used:
* TCP/UDP (135)
* SMB via named pipes (445) ([[5 SMB & NetBIOS]])
* HTTP (80)

![KDC](../../00%20Extra/screens/rpc.png)

Most RPC communications first start on TCP port 135. However, that's merely the RPC endpoint mapper service. Its function is to select a new destination port for further communications in that RPC session/service. The ports selected by the endpoint mapper can range from TCP 1024 to TCP 65535.

rpcclient can be used to interact with individual RPC endpoints via named pipes.