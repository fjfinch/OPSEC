# OPSEC
Personal repository for bundling important stuff to help me learn pentesting.

## Notes
These are the notes about pentesting. It is written for me to understand certain topics, not to explain it to others. Probably ignored important things, because I either really understand it, still have to write it, or ignored it bc I think it is not important :-). Attacks and tooling used for Windows and Linux are categorised per protocol. This is what protocol they use. NOT WHAT THEY ARE USED FOR. For example, the tool 'adidnsdump', which is used to extract all DNS records, is placed in LDAP, because it uses the LDAP protocol to extract data. Not in DNS because it extracts DNS records. This is done to quickly identify what underlying protocol is being used. Certain protocol didn't show up in a Nmap scan? Propably can't use this tool/attack.

NOTE: Notes are made with obsidian and are not optimized for GitHub. Text might look janky and pictures might not load.

## Tools
The added tools are submodules linked to their main git repository. They are included for me to be easily pulled. Credits to the writers and contributors for making these awesome tooling.

## Configs
Just a folder containing some configuration files for certain programs. So I don't have to manually setup everything, every time I create a new VM.

## Backup
Old notes/tools/configs.

## ToDo
* Create docker support for the tooling.
* Eventually automate with Ansible (playbooks).
