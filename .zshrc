if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# export ZSH_DISABLE_COMPFIX=true
export ZSH=$HOME/.oh-my-zsh

# ===== user configuration
[[ ! -f $ZSH/oh-my-zsh.sh ]] || source $ZSH/oh-my-zsh.sh
[[ ! -f ~/.dotsfile/fzf.sh]] || source ~/.dotsfile/fzf.sh
[[ ! -f ~/.dotsfile/env.sh ]] || source ~/.dotsfile/env.sh
[[ ! -f ~/.dotsfile/zplug.sh ]] || source ~/.dotsfile/zplug.sh
[[ ! -f ~/.dotsfile/zsh_profile.sh ]] || source ~/.dotsfile/zsh_profile.sh
[[ ! -f ~/.dotsfile/alias.sh ]] || source ~/.dotsfile/alias.sh
[[ ! -f ~/.iterm2_shell_integration.zsh ]] || source ~/.iterm2_shell_integration.zsh
[[ ! -f ~/.dotsfile/.p10k.zsh ]] || source ~/.dotsfile/.p10k.zsh

eval $(thefuck --alias)
