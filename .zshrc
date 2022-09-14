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
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
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
alias hosts="sudo nvim /etc/hosts"
alias code_rust="cd ~/Code/Rust"

# Bash Function To Extract File Archives Of Various Types
extract () {
     if [ -f $1 ] ; then
         case $1 in
             *.tar.bz2)   tar xjf $1     ;;
             *.tar.gz)    tar xzf $1     ;;
             *.bz2)       bunzip2 $1     ;;
             *.rar)       rar x $1       ;;
             *.gz)        gunzip $1      ;;
             *.tar)       tar xf $1      ;;
             *.tbz2)      tar xjf $1     ;;
             *.tgz)       tar xzf $1     ;;
             *.zip)       unzip $1       ;;
             *.Z)         uncompress $1  ;;
             *.7z)        7z x $1    ;;
             *)           echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

#   Starship
echo "Fortune favors the bold."
eval "$(starship init zsh)"
#   Pywal set theme
cat /home/kevinv/.cache/wal/sequences
return
