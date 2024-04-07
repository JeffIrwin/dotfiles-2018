
❌ These are old dotfiles that I used until about 2022.  See my newer repo [dotfiles](https://github.com/JeffIrwin/dotfiles) instead. 

# dotfiles-2018

Clone this repository:

`git clone https://github.com/JeffIrwin/dotfiles.git`

## Windows

Place \_vimrc and supertab.vmb in c:\program files (x86)\vim\ (or
wherever you installed vim). 

Edit supertab.vmb with vim and source it (:so %).

Note:  if launching vim from git bash, you must also have sourced supertab.vmb in ~/.vim/.

Wherever you choose to place it, run `git config --global core.excludesfile /path/to/.gitignore`

## Linux

Run deploy.sh.

Edit ~/.vim/supertab.vmb and source it as above.
