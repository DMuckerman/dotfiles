#!/bin/sh

# Install prezto (https://github.com/dstibrany/prezto)
if [ ! -d $HOME/.zprezto ]; then
    echo "Installing prezto"
    git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
fi

if [ $SHELL != "/bin/zsh" ]; then
    echo "Changing shell to Zsh"
    chsh -s /bin/zsh
fi

# Suppress login message
if [ ! -f $HOME/.hushlogin ]; then
    echo "Suppressing login message"
    touch ~/.hushlogin
fi

if [ ! -f $HOME/.completion.zsh ]; then
    echo "Installing Zsh completions"
    env RCRC=$HOME/dotfiles/rcrc rcup completion.zsh
fi
if [ ! -f $HOME/.env ]; then
    echo "Installing environment settings"
    env RCRC=$HOME/dotfiles/rcrc rcup env
fi
if [ ! -f $HOME/.env.zsh ]; then
    echo "Installing Zsh environment settings"
    env RCRC=$HOME/dotfiles/rcrc rcup env.zsh
fi
if [ ! -f $HOME/.gitconfig ]; then
    echo "Installing git config"
    env RCRC=$HOME/dotfiles/rcrc rcup gitconfig
fi
if [ ! -f $HOME/.gitignore_global ]; then
    echo "Installing git ignores"
    env RCRC=$HOME/dotfiles/rcrc rcup gitignore_global
fi
if [ ! -f $HOME/.grep ]; then
    echo "Installing grep settings"
    env RCRC=$HOME/dotfiles/rcrc rcup grep
fi
if [ ! -f $HOME/.inputrc ]; then
    echo "Installing input settings"
    env RCRC=$HOME/dotfiles/rcrc rcup inputrc
fi
if [ ! -f $HOME/.key-bindings.zsh ]; then
    echo "Installing Zsh key-bindings"
    env RCRC=$HOME/dotfiles/rcrc rcup key-bindings.zsh
fi
if [ ! -f $HOME/.nvimrc ]; then
    echo "Installing Neovim settings"
    env RCRC=$HOME/dotfiles/rcrc rcup nvimrc
    env RCRC=$HOME/dotfiles/rcrc rcup nvim
fi
if [ ! -f $HOME/.path ]; then
    echo "Installing path settings"
    env RCRC=$HOME/dotfiles/rcrc rcup path
fi
if [ ! -f $HOME/.prompt ]; then
    echo "Installing prompt settings"
    env RCRC=$HOME/dotfiles/rcrc rcup prompt
fi
if [ ! -f $HOME/.slate ]; then
    echo "Installing Slate keybindings"
    env RCRC=$HOME/dotfiles/rcrc rcup slate
fi
if [ ! -f $HOME/.vimrc ]; then
    echo "Installing Vim settings"
    env RCRC=$HOME/dotfiles/rcrc rcup vimrc
    env RCRC=$HOME/dotfiles/rcrc rcup vim
fi
if [ ! -f $HOME/.zlogin ] || [ ! -f $HOME/.zlogout ] || [ ! -f $HOME/.zpreztorc ] || [ ! -f $HOME/.zprofile ] || [ ! -f $HOME/.zshenv ] || [ ! -f $HOME/.zshrc ]; then
    echo "Installing Zsh settings"
    env RCRC=$HOME/dotfiles/rcrc rcup zlogin
    env RCRC=$HOME/dotfiles/rcrc rcup zlogout
    env RCRC=$HOME/dotfiles/rcrc rcup zpreztorc
    env RCRC=$HOME/dotfiles/rcrc rcup zprofile
    env RCRC=$HOME/dotfiles/rcrc rcup zshenv
    env RCRC=$HOME/dotfiles/rcrc rcup zshrc
fi
if [ ! -f $HOME/.bashrc ]; then
    echo "Installing Bash settings"
    env RCRC=$HOME/dotfiles/rcrc rcup bashrc
fi
