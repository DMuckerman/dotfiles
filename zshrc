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
alias cssh='ssh dmuckerm@cscluster'
alias edemon='~/Applications/Emacs.app/Contents/MacOS/Emacs --daemon'
alias t='todo.sh'

# YOLO
alias yolo='git commit -am "DEAL WITH IT" && git push -f origin master'

alias fuck='$(thefuck $(fc -ln -1))'
# You can use whatever you want as an alias, like for mondays:
alias FUCK='fuck'

alias nvim="~/.vim/plugged/nvim/nvim ~/Dropbox/Notes"
export NVIM_HOME=~/Dropbox/Notes

PERL_MB_OPT="--install_base \"/Users/danielmuckerman/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/danielmuckerman/perl5"; export PERL_MM_OPT;

# cdpath yay
cdpath=(~ ~/Developer ~/perlprojects ~/goprojects ~/clojureprojects)

export MARKPATH=$HOME/.marks
function jump {
  cd -P $MARKPATH/$1 2>/dev/null || echo "No such mark: $1"
}
function mark {
  mkdir -p $MARKPATH; ln -s $(pwd) $MARKPATH/$1
}
function unmark {
  rm -i $MARKPATH/$1
}
function marks {
  \ls -l $MARKPATH | tail -n +2 | sed 's/  / /g' | cut -d' ' -f9- | awk -F ' -> ' '{printf "%-10s -> %s\n", $1, $2}'
}
alias j="jump"
alias m="mark"

# Disable autocorrect
unsetopt correct_all
unsetopt correct
DISABLE_CORRECTION="true"
