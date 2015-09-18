#!/bin/sh

# Get current dir (so run this script from anywhere)

export DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Update dotfiles itself first


#install prezto (https://github.com/dstibrany/prezto)
echo 'installing prezto'

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

chsh -s /bin/zsh

# Bunch of symlinks
#ln -sfv "$DOTFILES_DIR/runcom/.inputrc" ~
#ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
#ln -sfv "$DOTFILES_DIR/git/.gitignore_global" ~

if [ "$(uname)" == "Darwin" -a -f "$DOTFILES_DIR/install/osx.sh" ]; then
    source "$DOTFILES_DIR/install/osx.sh"
fi

env RCRC=$HOME/dotfiles/rcrc rcup

cp vim ~/.vim
cp nvim ~/.nvim

# Symlink MacVim to Applications folder
ln -s /usr/local/Cellar/macvim/HEAD/MacVim.app ~/Applications/MacVim.app

# Install vitunes
sudo gem install vitunes && vitunes-install
