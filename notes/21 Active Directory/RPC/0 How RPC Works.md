# How RPC Works
A remote procedure call (RPC) is when a computer program causes a procedure to execute in a different address space (commonly on another computer on a shared network), which is coded as if it were a normal (local) procedure call, without the programmer explicitly coding the details for the remote interaction.

Within Windows environments, many server applications are exposed via RPC. CIFS/SMB via named pipes, HTTP and TCP/UDP are used to provide access to services.

![KDC](rpc.png)

Named Pipes are created on the CIFS/SMB server side by applications and tools that are willing to provide specialized services. A named pipe is a logical connection, similar to a TCP session, between a client and server that are involved in a CIFS/SMB connection. The name of the pipe serves as the endpoint for communication in the same way that a port number serves as the endpoint for TCP sessions.

`rpcclient` can be used to interact with individual RPC endpoints via named pipes.