source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export EDITOR=nvim
export MANPAGER='nvim +Man!'
export PATH="$HOME/.cargo/bin:$PATH"

alias add="sudo pacman -S --needed"
alias remove="sudo pacman -Rns"
alias check="pacman -Ss"
alias update="sudo pacman -Syu"

alias add-aur="yay -S --needed"
alias remove-aur="yay -Rns"
alias check-aur="yay -Ss"
alias update-aur="yay -Syu"

alias ff="reset && fastfetch --logo-type kitty-direct"

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
