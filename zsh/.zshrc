if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
fi
fpath=("/Users/wallydrag/.zsh/completions" $fpath)
autoload -Uz compinit
compinit

## Completion improvements
zstyle ':completion:*' menu select                    # arrow-key navigable menu
zstyle ':completion:*' matcher-list 'm:{a-z}=A-Z'    # case-insensitive completion
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}" # colored completion list

# History improvements
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt HIST_IGNORE_DUPS       # don't save duplicate commands
setopt HIST_IGNORE_SPACE      # prefix command with space to not save it
setopt SHARE_HISTORY          # share history across terminal tabs
setopt HIST_VERIFY            # show command before executing from history

# Navigation
setopt AUTO_CD                # type a directory name without cd
setopt AUTO_PUSHD             # cd pushes to stack, use `popd` to go back
setopt PUSHD_IGNORE_DUPS      # no duplicate dirs in stack

# Globbing 
setopt EXTENDED_GLOB          # enables ** recursive glob e.g. ls **/*.js
setopt NULL_GLOB              # no error if glob matches nothing

# XDG Base Directory
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"

# Docker Desktop
export PATH="$PATH:/Applications/Docker.app/Contents/Resources/bin"

# rbenv
eval "$(rbenv init - zsh)"

# Aliases
alias vim="nvim"
alias gst="git status"

# Starship prompt
eval "$(starship init zsh)"

# fzf
eval "$(fzf --zsh)"

# nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
export PATH="$HOME/.local/bin:$PATH"

# bun completions
[ -s "/Users/wallydrag/.bun/_bun" ] && source "/Users/wallydrag/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

alias claude-mem='/Users/wallydrag/.bun/bin/bun "/Users/wallydrag/.claude/plugins/marketplaces/thedotmack/plugin/scripts/worker-service.cjs"'
export PATH="/usr/local/opt/libpq/bin:$PATH"

## Plugins

# z (directory jumping)
[ -f /opt/homebrew/etc/profile.d/z.sh ] && source /opt/homebrew/etc/profile.d/z.sh
[ -f /usr/local/etc/profile.d/z.sh ] && source /usr/local/etc/profile.d/z.sh

## zsh history substring search
source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# autosuggestions
[ -f /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh ] && source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
[ -f /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh ] && source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Syntax highlighting
[ -f /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[ -f /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
