# .files

These are my dotfiles. Take anything you want, but at your own risk.

It targets macOS systems. It might work on \*nix boxes, but I may have
broken a few things. :P

## Install

On a sparkling fresh installation of OS X:

    sudo softwareupdate -i -a
    xcode-select --install

Install the dotfiles with either Git or curl:

### Clone with Git

    git clone https://github.com/dmuckerman/dotfiles.git ~/.dotfiles
    source ~/.dotfiles/install.sh

### Remotely install using curl

Alternatively, you can install this into `~/.dotfiles` from remote without Git using curl:

    sh -c "`curl -fsSL https://raw.github.com/DMuckerman/dotfiles/master/remote-install.sh`"

## The `dotfiles` command

    $ dotfiles help
    Usage: dotfiles <command>

    Commands:
       help        This help message
       edit        Open dotfiles in default editor ($EDITOR) and Git GUI ($GIT_GUI)
       reload      Reload dotfiles
       update      Update macOS Applications, and Homebrew (cask) packages
       macos       Apply macOS system defaults
       dock        Apply macOS Dock settings

## Custom settings

You can put your custom settings, such as Git credentials in the
`system/.custom` file which will be sourced from `.bash_profile`
automatically. This file is in `.gitignore`.

## Some installed packages

* [dockutil](https://github.com/kcrawford/dockutil)
* [hub](http://hub.github.com/)
* [jq](http://stedolan.github.io/jq/)
* [lunchy](https://github.com/eddiezane/lunchy)
* [peco](http://peco.github.io/)
* [Quick Look plugins](https://github.com/sindresorhus/quick-look-plugins)

## Not or barely installable from CLI

* [Downloads for Apple Developers](https://developer.apple.com/downloads), including:
    * Command Line Tools for XCode
    * Hardware IO Tools for XCode (includes Network Link Conditioner)

## Additional resources

* [Awesome Dotfiles](https://github.com/webpro/awesome-dotfiles)
* [Homebrew](http://brew.sh/) ([FAQ](https://github.com/Homebrew/homebrew/wiki/FAQ))
* [homebrew-cask](http://caskroom.io/) ([usage]((https://github.com/phinze/homebrew-cask/blob/master/USAGE.md))

## Credits

Many thanks to the [dotfiles community](http://dotfiles.github.io/) and
the creators of the incredibly useful tools.

Thanks to [webpro](https://github.com/webpro/dotfiles), since his dotfiles
are the basis from which mine have sprung.

Thanks to [thoughtbot](https://github.com/thoughtbot) for
[RCM](https://github.com/thoughtbot/rcm), which has made the symlinking
process even more delightful.

And thanks to [octotep](https://github.com/octotep) for turning me on to
Vim before I abandoned it for Emacs. :P
