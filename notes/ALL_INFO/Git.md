// GLOBAL GIT CONFIG //
git config --list
git config --global --list		
git config --global user.name "<USERNAME>"
git config --global user.email "<EMAIL>"
git config --global pull.rebase false

git config --global init.defaultBranch <name>

// GIT LOCAL REPOSITORY //
git init
git remote get-url origin
git remote set-url origin <HTTP/SSH LINK>

.gitignore | .git/info/exclude

git status
git add <FILE>
git commit -m "<DESCRIPTION>"

git diff <FILE>
git log
git checkout -b <BRANCH_NAME>
git branch


// GITHUB REMOTE REPOSITORY //
git remote add origin <URL>
git branch -M master
git push -u origin master

git pull
git push
git clone <HTTP/SSH LINK>
git remote -v
