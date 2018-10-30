#add ohmyzsh
export ZSH=/home/shallot/.oh-my-zsh

#theme and correction/completion stuff
ZSH_THEME="powerlevel9k/powerlevel9k"
#. /usr/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

#powerlevel9k stuff
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status ram battery)


#ohmyzsh plugins
plugins=(git)

#exports
export PATH="/bin:/usr/bin:$HOME/bin:$HOME/.local/bin:$PATH"
export EDITOR="vim"
export RTV_EDITOR="vim"
export HTTP_PROXY="http://172.22.44.6:8080"
export http_proxy=$HTTP_PROXY
export HTTPS_PROXY="https://172.22.44.6:8080"
export https_proxy=$HTTPS_PROXY
export NO_PROXY=".int.audatex.com"
export no_proxy=$NO_PROXY
export DISPLAY=:0
export LIBGL_ALWAYS_INDIRECT=1
#add ohmyzsh
source $ZSH/oh-my-zsh.sh

#Aliases
alias all="!f() { ls | xargs -I{} git -C {} $1; }; f"
alias windocker="docker.exe"
alias zshconfig="vi ~/.zshrc"
alias i3config="vi ~/.i3/config"
alias status="git status"
alias commit="git commit"
alias add="git add"
alias branch="git checkout -b"
alias checkout="git checkout"
alias fadd="npm run fix && git add"
alias push="git push"
alias pull="git pull"
alias clone="git clone"
alias merge="git merge"
alias upstream="git push --set-upstream"
alias rebase="git rebase"
alias cpick="git cherry-pick -x"
alias quick-life-hack='eval sudo "$(fc -ln -1)"'
alias mdk187="shutdown -h now"
alias 600emails="alpine"
alias lr="ls -R | grep"
alias c="clear"
alias vi="vim"
alias repos="cd /mnt/c/repos"
#functions
function mkcd {
  mkdir -p "$1" && cd "$1"
}

function rule {
  printf "%$(tput cols)s\n"|tr " " "_"
}

