# dotfiles

These are my dotfiles. Do with them what you wish.

## Set up
Install packages
```
<<<<<<< HEAD
apt install zsh vim

=======
apt install stow zsh vim golang tmux

curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
>>>>>>> d49d32b (.)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash
gpg --keyserver keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash
<<<<<<< HEAD

=======
>>>>>>> d49d32b (.)
```

Install other

Add to bottom of .bashrc
```
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

zsh

```

## GNU stow

Move this repo to your home directory and `cd` into it.

```
mv dotfiles ~/dotfiles
cd ~/dotfiles
stow <package name> -t <path to home dir>
```

Example:
```
stow vim -t /home/nathan
```

