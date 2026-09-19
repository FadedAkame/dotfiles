source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export EDITOR=nvim

alias add="sudo pacman -S --needed"
alias remove="sudo pacman -Rns"
alias check="pacman -Ss"
alias update="sudo pacman -Syu"
alias fm="nnn -e"
alias ff="reset && fastfetch"

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
