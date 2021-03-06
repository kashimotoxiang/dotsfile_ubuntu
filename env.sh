# local bin
PATH="$HOME/bin:$PATH"
PATH="/usr/bin:$PATH"
PATH="/usr/local/sbin:$PATH"
PATH="/usr/local/bin:$PATH"

# source virual environment if python is installed
if [[ -f ${HOME}/opt/anaconda3 ]]; then
    # Anaconda
    __conda_setup="$('${HOME}/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
    if [ $? -eq 0 ]; then
        eval "$__conda_setup"
    else
        if [ -f "${HOME}/opt/anaconda3/etc/profile.d/conda.sh" ]; then
            . "${HOME}/opt/anaconda3/etc/profile.d/conda.sh"
        fi
        PATH="${HOME}/opt/anaconda3/bin:$PATH"
    fi
    unset __conda_setup

    # virtualenvwrapper
    export VIRTUALENV_USE_DISTRIBUTE=1
    export WORKON_HOME="${HOME}/opt/anaconda3/envs"
    export VIRTUALENVWRAPPER_PYTHON="${HOME}/opt/anaconda3/bin/python"
    source ${HOME}/opt/anaconda3/bin/virtualenvwrapper.sh
    export PIP_VIRTUALENV_BASE=$WORKON_HOME
    export PIP_RESPECT_VIRTUALENV=true
    export HOME_PATH="$HOME/"
fi

# ssh
export SSH_KEY_PATH="${HOME}/.ssh/id_rsa"

# tldr
export TLDR_HEADER='magenta bold underline'
export TLDR_QUOTE='italic'
export TLDR_DESCRIPTION='green'
export TLDR_CODE='red'
export TLDR_PARAM='blue'
complete -W "$(tldr 2>/dev/null --list)" tldr

# export PATH
export PATH
