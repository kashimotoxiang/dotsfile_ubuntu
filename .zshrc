if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# export ZSH_DISABLE_COMPFIX=true
export ZSH=$HOME/.oh-my-zsh

# ===== user configuration
source $ZSH/oh-my-zsh.sh
source ~/.dotfiles/fzf.sh
source ~/.dotfiles/env.sh
source ~/.dotfiles/zplug.sh
source ~/.dotfiles/zsh_profile.sh
source ~/.dotfiles/alias.sh
source ~/.iterm2_shell_integration.zsh
source ~/.dotfiles/.p10k.zsh

eval $(thefuck --alias)
