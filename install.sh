#!/bin/bash

# Get current dir (so run this script from anywhere)

export DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Install prezto (https://github.com/dstibrany/prezto)
if [ ! -d $HOME/.zprezto ]; then
    echo "Installing prezto"
    git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
fi

#chsh -s /bin/zsh

unamestr=`uname`

# Install OS X specific stuff
if [ "$unamestr" == "Darwin" ]; then
    source "$DOTFILES_DIR/install/osx.sh"
		
		if [ $SHELL != "/bin/zsh" ]; then
				echo "Changing shell to Zsh"
				chsh -s /bin/zsh
		fi
		
elif [ "$unamestr" == "Linux" ]; then
		
		if [ $SHELL != "/usr/bin/zsh" ]; then
				echo "Changing shell to Zsh"
				chsh -s /usr/bin/zsh
		fi
fi

# Suppress login message
if [ ! -f $HOME/.hushlogin ]; then
		echo "Suppressing login message"
		touch ~/.hushlogin
fi

echo "Installing Zsh files"
stow zsh
curl -sL get.zplug.sh | zsh

echo "Installing Bash files"
stow bash

echo "Installing shell files"
stow shell

echo "Installing git files"
stow git

echo "Installing grep files"
stow grep

echo "Installing mpd files"
stow mpd

echo "Installing ncmpcpp files"
stow ncmpcpp

echo "Installing vim files"
stow vim

echo "Installing neovim files"
stow nvim

if [ "$unamestr" == "Darwin" ]; then
		echo "Installing slate files"
		stow slate
fi

if [ ! -f $HOME/.mbsyncrc ]; then
		echo "Installing mbsync settings"
		cp $HOME/dotfiles/mbsyncrc ~/.mbsyncrc 
fi

# Gurren Lagann quotes for fortune
if [ "$unamestr" == "Darwin" ]; then
		if [ ! -f /usr/local/Cellar/fortune/9708/share/games/fortunes/gurren ]; then
				echo "Installing fortune files"
				cp gurren /usr/local/Cellar/fortune/9708/share/games/fortunes/gurren
				sudo strfile /usr/local/Cellar/fortune/9708/share/games/fortunes/gurren /usr/local/Cellar/fortune/9708/share/games/fortunes/gurren.dat 
		fi
elif [ "$unamestr" == "Linux" ]; then
		if [ ! -f /usr/share/games/fortunes/gurren ]; then
				echo "Installing fortune files"
				sudo cp gurren /usr/share/games/fortunes/gurren
				sudo strfile /usr/share/games/fortunes/gurren /usr/share/games/fortunes/gurren.dat 
		fi
fi
