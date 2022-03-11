# Git
## GIT CONFIG
```bash
git config --list
git config --global --list

git config --global user.name '<USER>'
git config --global user.email '<EMAIL>'
git config --global pull.rebase true

git remote set-url origin git@github.com:fjfinch/<REP>.git
```

## GIT LOCAL
```bash
git init # create new repo

git status # info files

git add <FILE> # place file in staging environment
git add -A # place all files in staging environment

git commit -m "<DESCRIPTION>" # commit to repo
git log # history of commits

git branch # list all branches
git branch <NEW_BRANCH> # create new branch
git branch -d <BRANCH> # delete branch

git checkout <BRANCH> # move to branch
git checkout -b <BRANCH> # create new branch, and move to branch

pull:
- fetch
- merge/rebase




git pull --recurse-submodules
git push

git submodule add <URL>

git submodule deinit -f <DIRECTORY>/<REP>
git rm -f <DIRECTORY>/<REP>
rm -rf .git/modules/<DIRECTORY>/<REP>

git submodule update --init

.gitignore
.git/info/exclude
```

## GITHUB REMOTE
```bash
git remote add origin <URL> # add remote repo, with specified URL as origin, to local repo
git push -u origin main # push main branch to origin URL, and set as default remote branch
```
