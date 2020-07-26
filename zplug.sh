
source ~/.zplug/init.zsh
if [[ ! -d ~/.zplug ]]; then
 git clone https://github.com/zplug/zplug ~/.zplug
 source ~/.zplug/init.zsh && zplug update --self
fi
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-history-substring-search"
zplug "zdharma/fast-syntax-highlighting", from:github
zplug "zsh-users/zsh-autosuggestions"
zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "plugins/man", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh
zplug "plugins/encode64", from:oh-my-zsh
zplug 'plugins/extract', from:oh-my-zsh
zplug 'plugins/command-not-found', from:oh-my-zsh
zplug "agkozak/zsh-z"
zplug romkatv/powerlevel10k, as:theme, depth:1
zplug "Tarrasch/zsh-autoenv", from:github
zplug "zdharma/history-search-multi-word", from:github
zplug "b4b4r07/enhancd", use:init.sh
zplug "zpm-zsh/mysql-colorize", from:github
zplug "felixr/docker-zsh-completion", from:github
zplug 'ytet5uy4/fzf-widgets', from:github
zplug 'urbainvaes/fzf-marks', from:github
zplug "djui/alias-tips"
zplug "chrissicool/zsh-256color"
zplug "paulirish/git-open", as:plugin
# if zplug check b4b4r07/enhancd; then
#  export ENHANCD_FILTER=-tmux
# fi

# Install packages that have not been installed yet
if ! zplug check --verbose; then
 printf "Install? [y/N]: "
 if read -q; then
  echo; zplug install
 else
  echo
 fi
fi
zplug load
