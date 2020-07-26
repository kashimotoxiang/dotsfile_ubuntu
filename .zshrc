if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# export ZSH_DISABLE_COMPFIX=true
export ZSH=$HOME/.oh-my-zsh

# ===== user configuration
source $ZSH/oh-my-zsh.sh
source ~/.dotsfile/fzf.sh
source ~/.dotsfile/env.sh
source ~/.dotsfile/zplug.sh
source ~/.dotsfile/zsh_profile.sh
source ~/.dotsfile/alias.sh
source ~/.iterm2_shell_integration.zsh

eval $(thefuck --alias)


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

eval "$(rbenv init -)"
