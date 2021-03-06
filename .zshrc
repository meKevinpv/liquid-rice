# 	File: zshrc
#
#	 ____  _______________ 
#	(_)  \/  || ___ \ ___ \
#	 _| .  . || |_/ / |_/ /
#	| | |\/| || ___ \    / 
#	| | |  | || |_/ / |\ \ 
#	|_\_|  |_/\____/\_| \_|
#	Made by: Kevin Veldman
#
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="minimal" # set by `omz`
zstyle ':omz:update' mode auto      # update automatically without asking
plugins=(
    git 
    zsh-autosuggestions
)

#   Aliasses
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias ll="exa -l --icons --color=always"
alias l="exa --icons --color=always"
alias fonts="pango-list"
alias cl="clear"
alias clock="peaclock"
alias sr="sudo !!"
alias home="cd ~"
alias ctc="xclip -selection clipboard"
alias zc="nvim ~/.zshrc"
alias .="cd .."
alias ./.="cd ../.."
alias ././.="cd ../../.."
alias ~="cd ~" 
alias nc="nvim ~/.nvimrc" 
alias l.="printf '%s\n' .*"
alias i3c="nvim ~/.i3/config"
alias vim="nvim"
alias lsd="exa -l --icons --color=always -s modified"
alias kc="nvim ~/.config/kitty/kitty.conf"
alias md="take"
#   Starship
echo "Fortune favors the bold."
eval "$(starship init zsh)"
#   Pywal set theme
cat /home/kevinv/.cache/wal/sequences
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
return
