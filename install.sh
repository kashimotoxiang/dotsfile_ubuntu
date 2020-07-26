export LANG= "en_US.UTF-8"
export LANGUAGE= "en_US.UTF-8"
export LC_CTYPE= "en_US.UTF-8"
export LC_NUMERIC= "en_US.UTF-8"
export LC_TIME= "en_US.UTF-8"
export LC_COLLATE= "en_US.UTF-8"
export LC_MONETARY= "en_US.UTF-8"
export LC_MESSAGES= "en_US.UTF-8"
export LC_PAPER= "en_US.UTF-8"
export LC_NAME= "en_US.UTF-8"
export LC_ADDRESS= "en_US.UTF-8"
export LC_TELEPHONE= "en_US.UTF-8"
export LC_MEASUREMENT= "en_US.UTF-8"
export LC_IDENTIFICATION= "en_US.UTF-8"
export LC_ALL= "en_US.UTF-8"


# zplug
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

# ssh
mkdir /root/.ssh
ssh-keygen -f /root/.ssh/id_rsa -N ""

# linux brew
# git clone https://github.com/Homebrew/brew ~/.linuxbrew/Homebrew
# mkdir ~/.linuxbrew/bin
# ln -s ~/.linuxbrew/Homebrew/bin/brew ~/.linuxbrew/bin
# eval $(~/.linuxbrew/bin/brew shellenv)

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git /root/.fzf
~/.fzf/install

# download config file
[[ ! -f /root/.dotfiles ]] || rm -rf /root/.dotfiles
git clone https://github.com/kashimotoxiang/dotsfile_ubuntu.git /root/.dotfiles

# update config file
ln -sf /root/.dotfiles/.zshrc           /root/.zshrc
ln -sf /root/.dotfiles/.gitconfig       /root/.gitconfig
ln -sf /root/.dotfiles/.gitignore       /root/.gitignore
ln -sf /root/.dotfiles/.pylintrc        /root/.pylintrc
ln -sf /root/.dotfiles/.tmux.conf       /root/.tmux.conf
ln -sf /root/.dotfiles/.tmux.conf.local /root/.tmux.conf.local
ln -sf /root/.dotfiles/.vimrc           /root/.vimrc
ln -sf /root/.dotfiles/.iterm2_shell_integration.zsh          /root/.iterm2_shell_integration.zsh

