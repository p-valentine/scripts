alias ls="ls --color=auto"
alias la="ls -A"
alias ll="ls -Al"

# always sudo
alias pacman="sudo pacman"
alias pacman-key="sudo pacman-key"
alias wifi-menu="sudo wifi-menu"

# weird key problem
#export GNUPGHOME=/etc/pacman.d/gnupg

alias rs="source ~/.bashrc"
alias hrs="source ~/.bashrc;cd ~;clear"

alias lss='du -sh * | sort -hr'
alias ghc="ghc -dynamic"

# vim my configs

loop(){
  while true; do $@; done
}

set -o vi

alias vim="vim_"
vim_(){
  if [ -f $1.hs ]
  then
    nvim -S ~/.vimrc $1.hs ${2:@}
  else
    nvim -S ~/.vimrc $@
  fi
}

alias py="python3"
alias clean="rm *.hi *.o"


alias \:q="exit"
alias \:wq="exit"

alias ytdl="youtube-dl"

PS1='\[\033[01;32m\]\u\[\033[01;37m\]@\[\033[01;33m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

eval $(thefuck --alias)

export PATH="/root/rigetti/forest-sdk_2.5.0-linux-barebones/":$PATH
