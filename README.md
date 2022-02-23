# OPSEC
Personal repository for bundling important stuff to help me learn offensive security. Rep consists out of 4 folders: notes, tools, configs and backups.

## Notes
Notes are written for me to understand certain topics, not to explain it to others. Probably ignored important things, because I either really understand it, still have to write it, or ignored it bc I think it is not important :-). 

[deprecated]
Attacks and tooling used for Windows and Linux are categorised per protocol. This is what protocol they use. NOT WHAT THEY ARE USED FOR. For example, the tool 'adidnsdump', which is used to extract all DNS records, is placed in LDAP, because it uses the LDAP protocol to extract data. Not in DNS because it extracts DNS records. This is done to quickly identify what underlying protocol is being used. Certain protocol didn't show up in a Nmap scan? Propably can't use this tool/attack.

Note: it is written with obsidian and is not optimized for GitHub. Text might look janky and pictures might not load.

## Tools
The added tools are submodules linked to their main git repository, or other usefull tools. They are included for me to be easily pulled. Credits to the writers and contributors for making these awesome tools.

To use the submodules after cloning the repository, you need to init and update them:

```
git submodule update --init
```

## Configs
Just a folder containing some configuration files for certain programs. So I don't have to manually setup everything, every time I create a new VM.

## Backups
Old notes/tools/configs.

## ToDo
* Tools: create docker/venv support
* Tools: eventually automate with Ansible (playbooks)
