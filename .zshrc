source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias add="sudo pacman -S --needed"
alias remove="sudo pacman -Rns"
alias check="pacman -Ss"
alias update="sudo pacman -Syu"

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
