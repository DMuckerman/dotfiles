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

# Load MOTD {{{
#if [[ -e $HOME/.motd ]]; then cat $HOME/.motd; fi
fortune gurren
# }}}

# Customize to your needs...
# Make C-u universal-argument, instead of kill-whole-line
bindkey '^u' universal-argument

# General aliases
alias dotfiles="~/dotfiles/bin/dotfiles"
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
alias emt='emacsclient -ct'
alias em='emacsclient -c'
alias calorific='guile ~/Guile/calorific.scm'
alias friends="friends --filename ~/Dropbox/friends.md"
alias latexmk='latexmk -pdf -pvc -xelatex'
alias hledger-ui='hledger-ui --theme=terminal'
alias emacs='emacs -nw'
alias of2='~/Applications/ofexport2/bin/of2'

unalias sl

# FUCK
alias fuck='$(thefuck $(fc -ln -1))'
# You can use whatever you want as an alias, like for mondays:
alias FUCK='fuck'

# Bind true color neovim to vim
alias v='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim'
alias vim='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim'

alias dfssh="ssh root@192.168.121.47"

# Perl scripts
alias twi2gif='perl ~/Developer/perlprojects/twitter2gif.pl'

# YOLO
alias yolo='git commit -am "DEAL WITH IT" && git push -f origin master'

# Linux specific bindings
if [[ "$(uname)" == "Linux" ]]; then
    # Alias xclip to OSX's clipboard commands
    alias pbcopy='xclip -selection c'
    alias pbpaste='xclip -selection clipboard -o'
  
    # Lock screen
    alias lock='i3lock -c 6441A5'
  
    # ssh-agent stuff
    export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
fi

# # OSX specific bindings
if [[ "$(uname)" == "Darwin" ]]; then
    # cd to iCloud Drive folder
    alias icloud='cd /Users/danielmuckerman/Library/Mobile\ Documents/com~apple~CloudDocs/'
    
    # VLC terminal binding
    alias vlc='/Users/danielmuckerman/Applications/VLC.app/Contents/MacOS/VLC'

    if brew command command-not-found-init > /dev/null; then
				eval "$(brew command-not-found-init)";
    fi

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

export JENV_ROOT=/usr/local/var/jenv
if which jenv > /dev/null; then eval "$(jenv init -)"; fi

# iTerm2 Shell Integration
if [[ "$(uname)" == "darwin" ]]; then
    test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh
fi

source ~/.zplug/zplug

zplug "supercrabtree/k"

# Install plugins if there are plugins that have not been installed
if ! zplug check; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to path
zplug load

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Scala Env stuff
#export SCALAENV_ROOT=/usr/local/var/scalaenv
#eval "$(scalaenv init -)"

# Enable Ctrl-x-e to edit command line
autoload -U edit-command-line
# Emacs style
zle -N edit-command-line
bindkey '^xe' edit-command-line
bindkey '^x^e' edit-command-line
