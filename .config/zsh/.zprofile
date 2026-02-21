#!/bin/sh
# env vars to set on login, zsh settings in ~/config/zsh/.zshrc
# Add `export ZDOTDIR="$HOME/.config/zsh"` to /etc/zsh/zshenv in order to place this file at .config/zsh/.zprofile

# Default programs
export EDITOR="nvim"
export TERM="kitty"
export TERMINAL="kitty"
export BROWSER="librewolf"
export BROWSER2="brave-browser"

# XDG base directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"

# Bootstrap .zshrc to ~/.config/zsh/.zshrc, any other zsh config files can also reside here
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# Moving other files and some other vars
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GOPATH="$XDG_DATA_HOME/go"
export GOBIN="$GOPATH/bin"
export GOMODCACHE="$XDG_CACHE_HOME/go/mod"
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME/java"
export _JAVA_AWT_WM_NONREPARENTING=1
export FFMPEG_DATADIR="$XDG_CONFIG_HOME/ffmpeg"
export WINEPREFIX="$XDG_DATA_HOME/wineprefixes/default"
export BUN_INSTALL="$XDG_DATA_HOME/bun"
export NVM_DIR="$XDG_CONFIG_HOME/nvm"
export MPD_HOST="$XDG_RUNTIME_DIR/mpd/socket"

# Zinit plugin manager
export ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

export PATH="$HOME/.local/bin:$CARGO_HOME/bin:$BUN_INSTALL/bin:$PATH"
