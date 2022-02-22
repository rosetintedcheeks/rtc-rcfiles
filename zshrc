# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _correct
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/oaks/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=10000
setopt appendhistory autocd extendedglob
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install

#alias lab="~/Scripts/lab"
#alias serve="~/Scripts/serve.sh"
#alias shows="~/ato/main.py"
#alias notes="~/Scripts/notes/notes.py"
alias hserve="ssh serve"
alias nserve="ssh nserve"
alias ls="ls --color=auto -F"
alias lsa="ls -la"
alias view="vim -R"
alias c="clear"
alias aur="cd /home/oaks/aur"
alias inst="makepkg -si"
alias pkb="cat PKGBUILD"
alias se="sudoedit"
alias get="sudo pacman -Syu"
alias upda="~/scripts/upda"
alias dwmmake="cd ~/suck/dwm; sudo make clean install"
alias vol="pamixer --get-volume-human"
alias volup="pamixer -i 10; pamixer --get-volume-human"
alias voldown="pamixer -d 10; pamixer --get-volume-human"
alias volset="pamixer --set-volume"
alias mute="pamixer -t; pamixer --get-volume-human"
alias notes="~/scripts/notes"
alias zshrc="vim ~/.zshrc"
alias shagsearch="~/scripts/shagsearch"
alias dlsite="wget -mpEk"
alias htdo="sudo -u http"

#tmux is hard to type
alias tm="tmux"
alias tml="tmux list-sessions"
alias tma="tmux attach"
alias tmat="tmux attach -t"

#nnn use vim
alias nnn="nnn -e"

export VISUAL="vim"
export EDITOR="vim"
export SUDO_EDITOR="vim"

export TERMINAL="gnome-terminal"

source ~/.git-prompt.sh
setopt PROMPT_SUBST

source /usr/share/zsh/share/antigen.zsh

antigen bundle jeffreytse/zsh-vi-mode

ZVM_VI_INSERT_ESCAPE_BINDKEY=jk

antigen apply

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWCOLORHINTS=1

PS1='( %F{5}%n%F{15} in %F{10}%~%F{15} % ) '
#PROMPT="( %F{5}%n%F{15} in %F{10}%~%F{15} % $(__git_ps1 " (%s)")) "
#RPROMPT="?[%?] on %F{10}desktop%F{15} at %t"
RPROMPT='?[%?] $(__git_ps1 " (%s)") on %F{10}%m%F{15} at %t'

#setopt PROMPT_SUBST ; PS1='[%n@%m %c$(__git_ps1 " (%s)")]\$ '

#export PATH="/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/oaks/.vimpkg/bin"

source ~/.zshrc.local
