#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

alias dotfiles="~/dotfiles/bin/dotfiles"
alias vlc='/Users/danielmuckerman/Applications/VLC.app/Contents/MacOS/VLC'
alias lsa='ls -a'
alias wiki='cd ~/twiccian.wiki && ls'
alias bd='cd ..'

alias v='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim'
alias vim='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim'

# YOLO
alias yolo='git commit -am "DEAL WITH IT" && git push -f origin master'

alias fuck='$(thefuck $(fc -ln -1))'
# You can use whatever you want as an alias, like for mondays:
alias FUCK='fuck'
alias git=hub

PERL_MB_OPT="--install_base \"/Users/danielmuckerman/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/danielmuckerman/perl5"; export PERL_MM_OPT;

# cdpath yay
cdpath=(~ ~/Developer ~/perlprojects ~/goprojects ~/Dataforma)

# Disable autocorrect
unsetopt correct_all
unsetopt correct
DISABLE_CORRECTION="true"

test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh
