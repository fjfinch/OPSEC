# OPSEC
Personal repository to configure an offensive security VM and learn about pentesting. Repo consists of 3 folders:

* configs
* notes
* tools

### Configs
A folder containing configuration files for different programs. So I don't have to manually set up everything, every time I create a new VM.

### Notes
Notes about attacks, tools, topics, etc. Written for me to understand it, not to explain it to others. Probably ignored important things, because I either really understand it, still have to write it, or ignored it because I think it is not important :).

Note: open the 'Notes' folder in Obsidian. Notes are written with Obsidian and are not optimized for GitHub. Text might look janky and pictures might not load.

### Tools
Tools are mostly submodules linked to their main Git repository. They are included for me to be easily pulled. Credits to the writers and contributors for making these awesome tools.

## Install
Ansible is used to update the VM, install tools, configure them and change VM settings, like global Git settings, create SSH keys and change the default shell to ZSH. It is set up to be idempotent.

In general, non-python tools will be installed with APT and python tools with pipx. Other weird tools will be pulled directly from Git (and stored as submodules in the tools folder of this project).

* apt (non-python tools)
* pipx (python tools)
* git (other tools)

To use this repo, a couple of programs are required:

* git (to clone this repo)
* pip (required for ansible)
* pipx (to install tools, including ansible)
* ansible (to configure the VM)

Oneliner to install all:

```bash
sudo apt update && sudo apt install -y git python3-pip pipx && pipx install ansible --include-deps && pipx ensurepath && exec $SHELL
```

Next, clone this repo:

```bash
git clone https://github.com/fjfinch/OPSEC.git
```

To configure the VM:

```bash
ansible-playbook OPSEC/configs/ansible/main.yml -i OPSEC/configs/ansible/inventory.ini -K
```
