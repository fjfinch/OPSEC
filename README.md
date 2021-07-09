# OPSEC
Personal repository for ma notesss. 

## Notes
Notes about pentesting. It is written for me to understand certain topics, not to explain it to others. Probably ignored important things, because I either really understand it, still have to write it, or ignored it and think it is not important. Notes are made with obsidian and are not optimized for GitHub. Text might look janky and pictures might not load.

Within the 'AD NEW' tools/attacks are split per protocol. This is what protocol they use. NOT WHAT THEY ARE USED FOR. For example, the tool 'adidnsdump', which is used to extract all DNS records, is placed in LDAP, because it uses the LDAP protocol to extract data. Not in DNS because it is a tool to extract DNS record. This is done to quickly see what underlying protocol is is using. Protocol isn't shown up in Nmap? Propably can't use this tool/attack.

## Tools
Added tools are submodules linked to their main git repository. They are included for me to be easily pulled (if they have no easy way to be installed via git/pip/gem). Credits to the writers and contributors for making awesome tooling.
