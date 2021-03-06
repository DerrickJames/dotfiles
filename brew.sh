#!/bin/bash

# Install command-line tools using Homebrew

# Ask for administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade --all

# GNU core utilities (those that come with OS X are outdated)
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
brew install moreutils
# GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew install findutils
# GNU `sed`, overwriting the built-in `sed`
brew install gnu-sed --default-names

# Bash 4
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.
brew install bash

# regular bash-completion package is held back to an older release, so we get latest from versions.
#   github.com/Homebrew/homebrew/blob/master/Library/Formula/bash-completion.rb#L3-L4
brew tap homebrew/versions
brew install bash-completion2

brew install homebrew/completions/brew-cask-completion

# generic colouriser  http://kassiopeia.juls.savba.sk/~garabik/software/grc/
brew install grc

# Install wget with IRI support
brew install wget --enable-iri

# Install more recent versions of some OS X tools
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/screen


# run this script when this file changes guy.
#brew install entr

# github util. imho better than hub
#brew install gh


# mtr - ping & traceroute. best.
#brew install mtr

    # allow mtr to run without sudo
 #   mtrlocation=$(brew info mtr | grep Cellar | sed -e 's/ (.*//') #  e.g. `/Users/paulirish/.homebrew/Cellar/mtr/0.86`
 #   sudo chmod 4755 $mtrlocation/sbin/mtr
 #   sudo chown root $mtrlocation/sbin/mtr


# Install other useful binaries
brew install postgresql
brew install tmux
brew install curl
brew install mcrypt
brew install php56-mcrypt
brew install sift
brew install git
brew install git-flow
brew install imagemagick --with-webp
brew install node # This installs `npm` too using the recommended installation method
#brew install pv
#brew install rename
brew install tree
brew install heroku-toolbelt
#brew install zopfli
#brew install ffmpeg --with-libvpx

#brew install terminal-notifier

brew install android-platform-tools
brew install pidcat   # colored logcat guy

brew install zsh

# Remove outdated versions from the cellar
brew cleanup
