#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu 	 <sorin.ionescu@gmail.com>
#   Daniel Muckerman <danielmuckerman@me.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# General aliases
alias dotfiles="~/dotfiles/bin/dotfiles"
alias lsa='ls -a'
alias wiki='cd ~/twiccian.wiki && ls'
alias bd='cd ..'

# FUCK
alias fuck='$(thefuck $(fc -ln -1))'
# You can use whatever you want as an alias, like for mondays:
alias FUCK='fuck'

# Bind true color neovim to vim
alias v='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim'
alias vim='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim'

# Linux specific bindings
if [[ "$(uname)" == "linux-gnu" ]]; then
  # Alias xclip to OSX's clipboard commands
  alias pbcopy = 'xclip -selection c'
  alias pbpaste = 'xclip -selection clipboard -o'
  
  # Lock screen
  alias lock='i3lock -c 6441A5'
  
  # ssh-agent stuff
  export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
fi

# OSX specific bindings
if [[ "$(uname)" == "darwin" ]]; then
  # VLC terminal binding
  alias vlc='/Users/danielmuckerman/Applications/VLC.app/Contents/MacOS/VLC'

  # CPAN stuff
  PERL_MB_OPT="--install_base \"/Users/danielmuckerman/perl5\""; export PERL_MB_OPT;
  PERL_MM_OPT="INSTALL_BASE=/Users/danielmuckerman/perl5"; export PERL_MM_OPT;
fi

# cdpath yay
cdpath=(~ ~/Developer ~/perlprojects ~/goprojects ~/Dataforma)

# Disable autocorrect
unsetopt correct_all
unsetopt correct
DISABLE_CORRECTION="true"

# iTerm2 Shell Integration
if [[ "$(uname)" == "darwin" ]]; then
  test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh
fi
