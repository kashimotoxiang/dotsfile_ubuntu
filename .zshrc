if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# export ZSH_DISABLE_COMPFIX=true
export ZSH=$HOME/.oh-my-zsh

# ===== user configuration
[[ ! -f $ZSH/oh-my-zsh.sh ]] || source $ZSH/oh-my-zsh.sh
[[ ! -f ~/.dotfiles/fzf.sh]] || source ~/.dotfiles/fzf.sh
[[ ! -f ~/.dotfiles/env.sh ]] || source ~/.dotfiles/env.sh
[[ ! -f ~/.dotfiles/zplug.sh ]] || source ~/.dotfiles/zplug.sh
[[ ! -f ~/.dotfiles/zsh_profile.sh ]] || source ~/.dotfiles/zsh_profile.sh
[[ ! -f ~/.dotfiles/alias.sh ]] || source ~/.dotfiles/alias.sh
[[ ! -f ~/.iterm2_shell_integration.zsh ]] || source ~/.iterm2_shell_integration.zsh
[[ ! -f ~/.dotfiles/.p10k.zsh ]] || source ~/.dotfiles/.p10k.zsh

eval $(thefuck --alias)
