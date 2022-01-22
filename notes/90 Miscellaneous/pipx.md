# pipx
`apt install python3-pip`
`python3 -m pip install --user pipx`
`python3 -m pipx ensurepath`

`pipx install <PACKAGE>`
`pipx uninstall <PACKAGE>`

`pipx list`
`pipx upgrade-all`

`pipx completions`





source code management
	github

package management
	apt
		apt install X
		apt update && apt upgrade
	pipx
		pipx install X
		pipx upgrade-all
	pip (python)
		pip install X
		???

os virtual environment
	docker

python virtual environment
	virtualenv
	venv

	pipenv
	poetry

python version management
	pyenv

pipsi (deprecated)
pyvenv (deprecated)



python3 -m pip install .
python3 setup.py install
pip install -r requirements.txt
pip install git+https://github.com/tangentlabs/django-oscar-paypal.git@issue/34/oscar-0.6