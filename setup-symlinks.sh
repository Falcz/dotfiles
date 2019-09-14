ln -s $HOME/dotfiles/.gitignore $HOME/.gitignore
ln -s $HOME/dotfiles/.spacemacs $HOME/.spacemacs
ln -s $HOME/dotfiles/.zshrc $HOME/.zshrc
ln -s $HOME/dotfiles/.vimrc $HOME/.vimrc
ln -s $HOME/dotfiles/.xinitc $HOME/.xinitrc

mkdir -p $HOME/.config
ln -s $HOME/dotfiles/.config/* $HOME/.config/
