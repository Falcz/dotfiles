export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="spaceship"

plugins=(git
         zsh-autosuggestions
         fasd
         zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Source files
for file in $HOME/dotfiles/sourced/*.sh; do
    source "$file"
done

# Attempt to source work files
WORK_DOT=$HOME/workdot
if [ -d $WORK_DOT ]; then
    for file in $WORK_DOT/*.sh; do
        source "$file"
    done
fi

# Initialize the goods
eval "$(fasd --init auto)"
