# linux
alias tmux='tmux -CC'
alias c='crontab'
alias cl='clear'
alias cls='clear && echo -en "\e[3J"' # real clean
alias cp='cp -i'
alias ls='exa -l'
alias la='exa -la'
alias size='du -h'
alias count='ls | wc -l'
alias vi='vim'
alias grep='grep --color=auto'
alias sz='source ~/.zshrc'
alias cl='clear'
alias pcn='ps -aux | grep'
alias portn='netstat -tl |'
alias rf='rm -rf'
alias bash='/usr/local/bin/bash'
alias dud='du -d 1 -h' # Display the size of files at depth 1 in current location in human-readable form
alias duf='du -sh *' # Display the size of files in current location in human-readable form
alias t='tail -f' # Shorthand for tail which outputs the last part of a file
alias fd='find . -type d -name' # Find a directory with the given name
alias ff='find . -type f -name' # Find a file with the given name
alias p='ps -f' # Displays currently executing processes
alias ld='lsd -la'

function mkd() {
     mkdir -p "$@" && cd "$_";
}
# kill process by port id
function kp() {
     kill $(lsof -t -i:"$1")
}


# open files
alias -s html=code
alias -s rb=code
alias -s py=code
alias -s js=code
alias -s c=code
alias -s java=code
alias -s txt=code

alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'

alias cssh='cd ~/.ssh'

# productivity
alias tl='tldr'

# git
alias gc='git clone'
alias gm='git add .;git commit -m'
alias gmm='git commit --amend --no-edit'
alias gp='git push'
alias gpl='git pull'
alias glog='git log --pretty=format:"%C(yellow)%h\\ %ad%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --date=short'
alias gr='git reset'
alias grh='git reset --hard'
alias gs='git status'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gds='git diff --stat' # show git diff by lines number
alias grhh='git reset --hard HEAD'
alias grl='git reset HEAD~1'
alias gbD='git branch -D'
alias gca='git commit -v --no-edit --amend'

# Do something under GNU/Linux platform
# ubuntu
alias ai='apt-get install'
alias au='apt-get uninstall'

# python
alias py3='$HOME/opt/optanaconda3/bin/python'
alias python3='$HOME/opt/anaconda3/bin/python'
alias pip3='$HOME/opt/anaconda3/bin/pip'
alias pi3='$HOME/opt/anaconda3/bin/pip install'
alias pu3='$HOME/opt/anaconda3/bin/pip uninstall'

alias py='python'
alias pi='pip install'
alias pir='pip install -r requirements.txt'
alias pu='pip uninstall'

alias pt="py.test "
alias ptk="py.test -k "

# python virtual environment
alias sv='echo \$VIRTUAL_ENV'
alias sa='source activate'
alias da='source deactivate'
alias vte='virtualenv'
alias mkenv='mkvirtualenv'
alias mkenv2='mkvirtualenv --python=python2.7'
alias deact='deactivate'
alias rmenv='rmvirtualenv'

# application
alias jn='jupyter notebook --no-browser'
alias ip='curl cip.cc'
alias iip='ipconfig getifaddr en0' # internal ip address
alias tnew='tmux new -s '
alias ktmux='tmux kill-server'
alias download='wget -r -p -np -k --no-check-certificate'
alias treelist='tree -LhaC'


# kubernetes
alias kg='kubectl get'
alias kl='kubectl logs'

# docker
dklg() {docker exec -u 0 -it "$1" bash}
alias dl="docker ps -l -q" # Get latest container ID
alias dps="docker ps" # Get container process
alias dpa="docker ps -a" # Get process included stop container
alias di="docker images" # Get images
alias dip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'" # Get container IP
alias dkd="docker run -d -P" # Run deamonized container, e.g., $dkd base /bin/echo hello
alias dki="docker run -i -t -P" # Run interactive container, e.g., $dki base /bin/bash
alias dex="docker exec -i -t" # Execute interactive container, e.g., $dex base /bin/bash
dstop() { docker stop $(docker ps -a -q); } # Stop all containers
drm() { docker rm $(docker ps -a -q); } # Remove all containers
alias drmf='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)' # Stop and Remove all containers
dri() { docker rmi $(docker images -q); } # Remove all images
dbu() { docker build -t=$1 .; } # Dockerfile build, e.g., $dbu tcnksm/test
dalias() { alias | grep 'docker' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/"| sed "s/['|\']//g" | sort; } # Show all alias related docker
dbash() { docker exec -it $(docker ps -aqf "name=$1") bash; } # Bash into running container

# fzf
alias kill='kill -9 '
alias ff='cd $(find * -type d | fzf )'
alias fgc='git checkout $(git branch -r | fzf)'
alias fp='lsof -iTCP  -n -P | fzf -e'

# k
alias k='k -h --no-vcs'
