cd /root/

# zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"  -y
chsh -s $(which zsh) -y
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

# download config file
[[ ! -f /root/.dotfiles ]] || rm -rf /root/.dotfiles
git clone https://github.com/kashimotoxiang/dotsfile_ubuntu.git && mv /root/dotsfile_ubuntu /root/.dotfiles

# update config file
ln -sf /root/.dotfiles/.zshrc           /root/.zshrc
ln -sf /root/.dotfiles/.gitconfig       /root/.gitconfig
ln -sf /root/.dotfiles/.gitignore       /root/.gitignore
ln -sf /root/.dotfiles/.pylintrc        /root/.pylintrc
ln -sf /root/.dotfiles/.tmux.conf       /root/.tmux.conf
ln -sf /root/.dotfiles/.tmux.conf.local /root/.tmux.conf.local
ln -sf /root/.dotfiles/.vimrc           /root/.vimrc

# install zplug
source /root/.zshrc
