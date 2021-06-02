# GLOBAL GIT CONFIG
`git config --list`
`git config --global --list`

`git config --global user.name "<USER>"`
`git config --global user.email "<EMAIL>"`
`git config --global pull.rebase false`

`git config --global init.defaultBranch <BRANCH_NAME>`
	no) master	yes) main

# GIT LOCAL REPOSITORY
`git init`

`git status`
`git add <FILE>`
`git commit -m "<DESCRIPTION>"`

`.gitignore`
`.git/info/exclude`

`git diff <FILE>`
`git log`
`git checkout -b <BRANCH_NAME>`
`git branch`

`git branch -M master`

# GITHUB REMOTE REPOSITORY
`git remote add origin <URL>`

`git remote get-url origin`
`git remote set-url origin <URL>`
`git remote -v`

`git push -u origin master`

`git pull`
`git push`

`git clone <URL>`

`git submodule add <URL>`

`git submodule deinit -f <REP>`
`git rm -f <REP>`
`rm -rf .git/modules/<REP>`

`git submodule init`
`git submodule update`
`git pull --recurse-submodules`
