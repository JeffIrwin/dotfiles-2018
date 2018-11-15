mkdir ~/dotfile-backup

cp ~/.bash_profile ~/dotfile-backup
cp ~/.bashrc ~/dotfile-backup
cp ~/.inputrc ~/dotfile-backup
cp ~/.vimrc ~/dotfile-backup
cp ~/.gitignore ~/dotfile-backup

cp .bash_profile ~
cp .bashrc ~
cp .inputrc ~
cp .vimrc ~
cp .gitignore ~

mkdir ~/.vim
cp supertab.vmb ~/.vim

git config --global core.excludesfile ~/.gitignore
