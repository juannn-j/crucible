# Completion cache
autoload -Uz compinit
zstyle ':completion:*' use-cache on
compinit -d "${XDG_CACHE_HOME:-$HOME/.cache}/zsh/zcompdump-$ZSH_VERSION"

# Antidote Plugin Manager
source /usr/share/zsh-antidote/antidote.zsh
antidote load ~/.zsh_plugins.txt

# Carapace Completion
export CARAPACE_BRIDGES='zsh,fish,bash,inshellisense'
source <(carapace _carapace)

# Inicialización de herramientas adicionales
[[ $- == *i* ]] && {
  eval "$(zoxide init zsh)"
  eval "$(atuin init zsh)"
  eval "$(starship init zsh)"
  # eval "$(fzf --zsh)"  # Descomenta si lo usas
}

# Aliases
alias ..='cd ..'
alias .='cd'
alias ls='eza --icons'
alias battery='upower -i /org/freedesktop/UPower/devices/battery_BAT0'
alias nvc="nix run 'github:nnfake/neovim-config'"

