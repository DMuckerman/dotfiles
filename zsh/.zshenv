#
# Defines environment variables.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

# Add GHC 7.10.1 to the PATH, via https://ghcformacosx.github.io/
export GHC_DOT_APP="/Applications/ghc-7.10.1.app"
if [ -d "$GHC_DOT_APP" ]; then
  export PATH="${HOME}/.cabal/bin:${GHC_DOT_APP}/Contents/bin:${PATH}"
fi

# Go
if [ -d /usr/local/opt/go/libexec ]; then
    export GOROOT=/usr/local/opt/go/libexec
fi

if [ -d ~/.gows ]; then
    source ~/.gows/gows
fi

if [[ "$(uname)" == "Darwin" ]]; then
		# GNU stuff
		export PATH="/usr/local/opt/coreutils/libexec/gnubin:/usr/local/bin:$PATH"
		export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
		export PATH="$HOME/.local/bin:$PATH"

		export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
		export MANPATH="/usr/local/opt/gnu-sed/libexec/gnuman:$MANPATH"

		export PATH="~/Applications/ofexport2/bin:$PATH"
fi
