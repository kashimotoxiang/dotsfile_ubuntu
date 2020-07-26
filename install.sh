# ssh
mkdir /root/.ssh
ssh-keygen -f /root/.ssh/id_rsa -N ""

# linux brew
# git clone https://github.com/Homebrew/brew ~/.linuxbrew/Homebrew
# mkdir ~/.linuxbrew/bin
# ln -s ~/.linuxbrew/Homebrew/bin/brew ~/.linuxbrew/bin
# eval $(~/.linuxbrew/bin/brew shellenv)

# p10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git /root/.oh-my-zsh/custom/themes/powerlevel10k
source ~/.dotfiles/.p10k.zsh

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git /root/.fzf
~/.fzf/install --all

# download config file
[[ ! -f /root/.dotfiles ]] || rm -rf /root/.dotfiles
git clone https://github.com/kashimotoxiang/dotsfile_ubuntu.git /root/.dotfiles

# update config file
ln -sf /root/.dotfiles/.p10k.zsh           /root/.p10k.zsh
ln -sf /root/.dotfiles/.zshrc           /root/.zshrc
ln -sf /root/.dotfiles/.gitconfig       /root/.gitconfig
ln -sf /root/.dotfiles/.gitignore       /root/.gitignore
ln -sf /root/.dotfiles/.pylintrc        /root/.pylintrc
ln -sf /root/.dotfiles/.tmux.conf       /root/.tmux.conf
ln -sf /root/.dotfiles/.tmux.conf.local /root/.tmux.conf.local
ln -sf /root/.dotfiles/.vimrc           /root/.vimrc
ln -sf /root/.dotfiles/.iterm2_shell_integration.zsh          /root/.iterm2_shell_integration.zsh

# zplug
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
