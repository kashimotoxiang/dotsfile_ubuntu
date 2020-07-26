apt-get update -y
apt-get upgrade -y
apt-get install unzip wget curl git zsh tmux htop -y

# zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"  -y
chsh -s $(which zsh) -y
# zplug
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

# download config file
wget "https://codeload.github.com/kashimotoxiang/dotsfile_ubuntu/zip/master" -O temp.zip
unzip temp.zip && mv dotsfile_ubuntu-master .dotfiles
rm temp.zip

# update config file
ln -sf /root/.dotfiles/.zshrc           /root/.zshrc
ln -sf /root/.dotfiles/.gitconfig       /root/.gitconfig
ln -sf /root/.dotfiles/.gitignore       /root/.gitignore
ln -sf /root/.dotfiles/.pylintrc        /root/.pylintrc
ln -sf /root/.dotfiles/.tmux.conf       /root/.tmux.conf
ln -sf /root/.dotfiles/.tmux.conf.local /root/.tmux.conf.local
ln -sf /root/.dotfiles/.vimrc           /root/.vimrc

# install zplug
y | source /root/.zshrc -y
