# Download zinit
if [ ! -d "$ZINIT_HOME" ]; then
    mkdir -p "$(dirname $ZINIT_HOME)"
    git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source zinit
source "${ZINIT_HOME}/zinit.zsh"

# Source aliases and options for zsh
[ -f "${ZDOTDIR}/aliasrc" ] && source "${ZDOTDIR}/aliasrc"
[ -f "${ZDOTDIR}/optionrc" ] && source "${ZDOTDIR}/optionrc"

for file in "${ZDOTDIR}/aliasrc" "${ZDOTDIR}/optionrc"; do
    [ -f "$file" ] && [ "$file.zwc" -ot "$file" ] && zcompile "$file"
done

# Load completion
autoload -U compinit && compinit
zinit cdreplay -q

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

# History
HISTSIZE=110000
SAVEHIST=$HISTSIZE
HISTFILE=$XDG_CACHE_HOME/.zsh_history
HISTDUP=erase

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'

# Shell integrations
#eval "$(oh-my-posh init zsh --config $XDG_CONFIG_HOME/ohmyposh/melon.toml)"
eval "$(starship init zsh)"
eval "$(fzf --zsh)"
[ -s "$BUN_INSTALL/_bun" ] && source "$BUN_INSTALL/_bun"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
