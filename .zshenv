# XDG base directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"

# Environment variables
export EDITOR="nvim"
export VISUAL="$EDITOR"
export MANPAGER='nvim +Man!'
export BUN_INSTALL="$HOME/.bun"
export NVM_DIR="$XDG_CONFIG_HOME/nvm"

# zsh configuration
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export ZSHRC="$ZDOTDIR/.zshrc"
export ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
