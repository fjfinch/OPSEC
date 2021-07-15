# OPSEC
Personal repository for my note-taking.

## Notes
Notes about pentesting. It is written for me to understand certain topics, not to explain it to others. Probably ignored important things, because I either really understand it, still have to write it, or ignored it bc I think it is not important. Notes are made with obsidian and are not optimized for GitHub. Text might look janky and pictures might not load.

Within the Active Directory folder tools/attacks are split per protocol. This is what protocol they use. NOT WHAT THEY ARE USED FOR. For example, the tool 'adidnsdump', which is used to extract all DNS records, is placed in LDAP, because it uses the LDAP protocol to extract data. Not in DNS because it extract DNS record. This is done to quickly identify what underlying protocol is being used. Certain protocol didn't show up in a Nmap scan? Propably can't use this tool/attack.

## Tools
Added tools are submodules linked to their main git repository. They are included for me to be easily pulled (if they have no easy way to be installed via git/pip/gem). Credits to the writers and contributors for making awesome tooling.
