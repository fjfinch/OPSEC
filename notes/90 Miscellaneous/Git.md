# Git
## GIT CONFIG
`git config --list`
`git config --global --list`

`git config --global user.name "<USER>"`
`git config --global user.email "<EMAIL>"`
`git config --global pull.rebase true`
check main/master

`git remote set-url origin git@github.com:fjfinch/<REP>.git`

## GIT LOCAL
`git init` # create new repo

`git status` # info files

`git add <FILE>` # place file in staging environment
`git add -A` # place all files in staging environment

`git commit -m "<DESCRIPTION>"` # commit to repo
`git log` # history of commits

`git branch` # list all branches
`git branch <NEW_BRANCH>` # create new branch
`git branch -d <BRANCH>` # delete branch
`git branch -m <OLD_BRANCH> <NEW_BRANCH>` # change branch name

`git checkout <BRANCH>` # move to branch
`git checkout -b <BRANCH>` # create new branch, and move branch

`pull`:
- `fetch`
- `merge/rebase`

`git pull --recurse-submodules`
`git push`

`git submodule add <URL>`

`git submodule deinit -f <REP>`
`git rm -f <REP>`
`rm -rf .git/modules/<REP>`

`git submodule update --init`

`.gitignore`
`.git/info/exclude`

## GITHUB REMOTE
`git remote add origin <URL>` # add remote repo, with specified URL as origin, to local repo
`git push -u origin main` # push main branch to origin URL, and set as default remote branch




git branch -m master main
git push -u origin main
	change the "default branch"
git push origin --delete master
git remote set-head origin -a