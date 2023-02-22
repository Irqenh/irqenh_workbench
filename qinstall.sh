# QINSTALL

# Packages installation

sudo apt install -y 	\
	fonts-powerline 	\
	zsh		\ 
	ranger	\
	vim		\
	neovim	\
	byobu	\
	python3	\
	pip     \   
    nodejs  \            
    npm

# Apt udate

sudo apt update && sudo apt upgrade -y

# Oh-my-zsh installation

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Vim Plug instalation

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Byobu configuration

echo "set -g default-shell /bin/zsh
set -g default-command /bin/zsh
set -sg escape-time 50" >> ~/.byobu/.tmux.conf


# Configs:
# Oh-my-zsh
rm ~/.zshrc
ln -s ~/.irqenh_config/zshrc ~/.zshrc

# Nvim
mkdir -p ~/.config/nvim/plugged
ln -s ~/.irqenh_config/init.vim ~/.config/nvim/init.vim
ln -s ~/.irqenh_config/coc-settings.json ~/.config/nvim/coc-settings.json
# Opne nvim -> :so % -> :PlugInstall -> :wq

