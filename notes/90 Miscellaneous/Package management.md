# Package management
pipsi (deprecated)

## apt
`apt search <PACKAGE>` # search
`apt list --installed` # list installed

`apt install <PACKAGE>` # install
`apt remove <PACKAGE>` # uninstall binaries
`apt purge <PACKAGE>` # uninstall binaries + configs (except in /home/)
`apt autoremove` # uninstall dependencies
`apt purge --auto-remove <PACKAGE>` # uninstall everything related

`apt update` # update all
`apt upgrade` # upgrade all

## pip
`apt install python3-pip` # install pip

`pip search <PACKAGE>` # search
`pip freeze` # list installed

`pip install <PACKAGE>` # install
`pip uninstall <PACKAGE>` # uninstall

`pip list --outdated --format=freeze | grep -v '^\-e' | awk -F'==' '{print$1}' | xargs -n1 pip install -U` # update all

## pipx
`apt install python3.9-venv` # install pipx
`python3 -m pip install --user pipx` # install pipx
`python3 -m pipx ensurepath` # install pipx

`pip search <PACKAGE>` # use pip to search
`pipx list | grep package` # list installed

`pipx install <PACKAGE>` # install
`pipx uninstall <PACKAGE>` # uninstall

`pipx upgrade-all`  # update all