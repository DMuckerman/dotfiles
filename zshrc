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

# Load MOTD {{{
#if [[ -e $HOME/.motd ]]; then cat $HOME/.motd; fi
#fortune gurren
# }}}

# Customize to your needs...

alias dotfiles="~/dotfiles/bin/dotfiles"
alias vlc='/Users/danielmuckerman/Applications/VLC.app/Contents/MacOS/VLC'
alias lsa='ls -a'
alias lsl='ls -l'
alias lsal='ls -al'
alias lsla='ls -al'
alias wiki='cd ~/twiccian.wiki && ls'
alias bd='cd ..'
alias screen='screen -U'
alias logs='perl ~/perlprojects/logs.pl'
alias mysql-start='mysql.server start'
alias mysql-stop='mysql.server stop'
alias scratch='vim scratch'
alias df='cd ~/Dataforma'
alias em='emacsclient -ct'
alias calorific='guile ~/Guile/calorific.scm'
alias friends="friends --filename ~/Dropbox/friends.md"
alias icloud='cd /Users/danielmuckerman/Library/Mobile\ Documents/com~apple~CloudDocs/'
alias latexmk='latexmk -pdf -pvc -xelatex'
alias emacs='/usr/local/Cellar/emacs/25.0-dev/bin/emacs'

unalias sl

alias v='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim'
alias vim='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim'

alias dfssh="ssh root@192.168.121.47"

# Perl scripts
alias twi2gif='perl ~/twitter2gif.pl'

# YOLO
alias yolo='git commit -am "DEAL WITH IT" && git push -f origin master'

alias fuck='$(thefuck $(fc -ln -1))'
# You can use whatever you want as an alias, like for mondays:
alias FUCK='fuck'
alias git=hub

if brew command command-not-found-init > /dev/null; then eval "$(brew command-not-found-init)"; fi

PERL_MB_OPT="--install_base \"/Users/danielmuckerman/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/danielmuckerman/perl5"; export PERL_MM_OPT;

# cdpath yay
cdpath=(~ ~/Developer ~/perlprojects ~/goprojects ~/Dataforma)

# Disable autocorrect
unsetopt correct_all
unsetopt correct
DISABLE_CORRECTION="true"

export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"

export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
export MANPATH="/usr/local/opt/gnu-sed/libexec/gnuman:$MANPATH"

# Autojump
#[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh

export JENV_ROOT=/usr/local/var/jenv
if which jenv > /dev/null; then eval "$(jenv init -)"; fi
