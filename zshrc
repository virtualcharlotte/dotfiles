#add ohmyzsh
export ZSH=/home/charlotte/.oh-my-zsh

#theme and correction/completion stuff
ZSH_THEME="powerlevel9k/powerlevel9k"
#. /usr/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

#powerlevel9k stuff
POWERLEVEL9K_MODE='awesome-fontconfig'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status ram battery)


#ohmyzsh plugins
plugins=(git)

#exports
export PATH="/usr/lib64/qt-3.3/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/home/charlotte/bin"
export EDITOR="vim"
export RTV_EDITOR="vim"

#add ohmyzsh
source $ZSH/oh-my-zsh.sh

#Aliases
alias zshconfig="vi ~/.zshrc"
alias i3config="vi ~/.i3/config"
alias status="git status"
alias commit="git commit"
alias add="git add"
alias branch="git checkout -b"
alias checkout="git checkout"
alias push="git push"
alias pull="git pull"
alias clone="git clone"
alias quick-life-hack='eval sudo "$(fc -ln -1)"'
alias mdk187="shutdown -h now"
alias 600emails="alpine"
alias lr="ls -R | grep"
alias c="clear"
alias vi="vim"

#functions
function mkcd {
  mkdir -p "$1" && cd "$1"
}

function rule {
  printf "%$(tput cols)s\n"|tr " " "_"
}

