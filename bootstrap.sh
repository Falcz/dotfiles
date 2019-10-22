# AUR Helper
git clone https://aur.archlinux.org/yay.git ~/.yay
cd ~/.yay
makepkg -si

# Shell setup
sudo pacman -S zsh 
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


# Spacemacs setup
sudo pacman -S emacs
rm -r ~/.emacs.d
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

# xinit/i3 setup
sudo pacman -S xorg-xinit
sudo pacman -S compton
sudo pacman -S i3-gaps
sudo yay -S polybar

