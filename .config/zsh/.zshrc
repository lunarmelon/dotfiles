# Zinit plugin manager
if [ ! -d "$ZINIT_HOME" ]; then
    mkdir -p "$(dirname $ZINIT_HOME)"
    git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "${ZINIT_HOME}/zinit.zsh"

# Source aliases for zsh
[ -f "${ZDOTDIR}/alias" ] && source "${ZDOTDIR}/alias"

# Load completion
autoload -U compinit && compinit
zinit cdreplay -q

# Main options
setopt nobeep # No beep
setopt appendhistory inc_append_history share_history # On exit, history appends rather than overwrites; history is appended as soon as cmds executed; history shared across sessions
setopt hist_ignore_all_dups # If a new command is a duplicate, remove the older one
setopt autocd # if only directory path is entered, cd there.
setopt hist_ignore_space # Don't save commands that start with space
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups
stty stop undef # Disable accidental Ctrl+S

# Plugins
zinit light-mode for \
    Aloxaf/fzf-tab \
    zdharma-continuum/fast-syntax-highlighting \
    zsh-users/zsh-completions \
    zsh-users/zsh-autosuggestions \
    zsh-users/zsh-history-substring-search \
    hlissner/zsh-autopair

# Snippets
zinit snippet OMZP::sudo

# Substring search keybinds
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey '^[[A' history-substring-search-up
bindkey '^[0A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey '^[0B' history-substring-search-down

# History options
HISTSIZE=1000000
SAVEHIST=$HISTSIZE
HISTFILE=$XDG_CACHE_HOME/.zsh_history
HISTDUP=erase

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'

# Shell integrations
eval "$(oh-my-posh init zsh --config $XDG_CONFIG_HOME/ohmyposh/melon.toml)"
eval "$(fzf --zsh)"
[ -s "$BUN_INSTALL/_bun" ] && source "$BUN_INSTALL/_bun"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
