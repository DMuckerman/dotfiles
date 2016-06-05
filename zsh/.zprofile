#
# Executes commands at login pre-zshrc.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

#
# Browser
#

if [[ "$OSTYPE" == darwin* ]]; then
  export BROWSER='open'
fi

#
# Editors
#

export EDITOR='emacsclient'
export VISUAL='emacsclient'
export PAGER='less'

#
# Language
#

if [[ -z "$LANG" ]]; then
    export LANG='en_US.UTF-8'
fi

#
# Paths
#

# Ensure path arrays do not contain duplicates.
typeset -gU cdpath fpath mailpath path

# Set the the list of directories that cd searches.
# cdpath=(
#   $cdpath
# )

#export PATH=$HOME/.rbenv/shims:$HOME/.rbenv/bin:$PATH

# Set the list of directories that Zsh searches for programs.
path=(
    /usr/local/{bin,sbin}
    $path
)

# Add the GOROOT-based install location to my path
#export PATH=$PATH:/usr/bin
#export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH="$HOME/goprojects"
export PATH=$PATH:$GOPATH
export JAVA_HOME=/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
export PATH=$PATH:${JAVA_HOME}/bin
export PATH=$PATH:/Users/danielmuckerman/.gem/ruby/2.2.0/bin
export PATH=$PATH:/Users/danielmuckerman/.local/bin
export PATH=$PATH:/Users/danielmuckerman/.multirust/toolchains/stable/cargo/bin
export PKG_CONFIG_PATH=/usr/local/Cellar/zlib/1.2.8/lib/pkgconfig:/usr/local/lib/pkgconfig:/opt/X11/lib/pkgconfig
export OPENSSL_INCLUDE_DIR=/usr/local/opt/openssl/include
export OPENSSL_ROOT_DIR=/usr/local/opt/openssl
export RUST_SRC_PATH=~/src/rust/rustc-1.6.0/src
export PATH="/Users/danielmuckerman/.cask/bin:$PATH"

if [[ "$(uname)" == "Linux" ]]; then
    # hledger path
    export LEDGER_FILE=/home/dan/Dropbox/hledger.journal
fi
if [[ "$(uname)" == "Darwin" ]]; then
    # hledger path
    export LEDGER_FILE=/Users/danielmuckerman/Dropbox/hledger.journal
fi

#
# Less
#

# Set the default Less options.
# Mouse-wheel scrolling has been disabled by -X (disable screen clearing).
# Remove -X and -F (exit if the content fits on one screen) to enable it.
export LESS='-F -g -i -M -R -S -w -X -z-4'

# Set the Less input preprocessor.
# Try both `lesspipe` and `lesspipe.sh` as either might exist on a system.
if (( $#commands[(i)lesspipe(|.sh)] )); then
    export LESSOPEN="| /usr/bin/env $commands[(i)lesspipe(|.sh)] %s 2>&-"
fi

#
# Temporary Files
#

if [[ ! -d "$TMPDIR" ]]; then
    export TMPDIR="/tmp/$LOGNAME"
    mkdir -p -m 700 "$TMPDIR"
fi

TMPPREFIX="${TMPDIR%/}/zsh"

DOTFILES_DIR="$HOME/dotfiles"

export DOTFILES_DIR

# Enable shims and autocompletion for rbenv
#if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
# Setting PATH for Python 2.7
# The orginal version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

bid() {
    local shortname location
    # combine all args as regex
    # (and remove ".app" from the end if it exists due to autocomplete)
    shortname=$(echo "${@%%.app}"|sed 's/ /.*/g')
    # if the file is a full match in apps folder, roll with it
    if [ -d "/Applications/$shortname.app" ]; then
				location="/Applications/$shortname.app"
    else # otherwise, start searching
				location=$(mdfind -onlyin /Applications -onlyin ~/Applications -onlyin /Developer/Applications 'kMDItemKind==Application'|awk -F '/' -v re="$shortname" 'tolower($NF) ~ re {print $0}'|head -n1)
    fi
    # No results? Die.
    [[ -z $location || $location = "" ]] && echo "$1 not found, I quit" && return
    # Otherwise, find the bundleid using spotlight metadata
    bundleid=$(mdls -name kMDItemCFBundleIdentifier -r "$location")
    # return the result or an error message
    [[ -z $bundleid || $bundleid = "" ]] && echo "Error getting bundle ID for \"$@\"" || echo "$location: $bundleid"
}

function setjdk() {
    if [ $# -ne 0 ]; then
				removeFromPath '/System/Library/Frameworks/JavaVM.framework/Home/bin'
				if [ -n "${JAVA_HOME+x}" ]; then
						removeFromPath $JAVA_HOME
				fi
				export JAVA_HOME=`/usr/libexec/java_home -v $@`
				export PATH=$JAVA_HOME/bin:$PATH
    fi
}
function removeFromPath() {
    export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")
}
setjdk 1.6


# Omnifocus
# of "Test! @house ::misc #tom 8am #tom 8pm //notes"
function of () {
    if [[ $# -eq 0 ]]; then
				open -a "OmniFocus"
    else
				osascript <<EOT
    tell application "OmniFocus"
      parse tasks into default document with transport text "$@"
    end tell
EOT
    fi
}

export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_TYPE=en_US.UTF-8
export WOLFRAM_APPID='R3KHQ2-2T2769PP4P'
export LC_CTYPE="utf-8"
