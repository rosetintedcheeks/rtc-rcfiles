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

export VISUAL="nvim"
export EDITOR="nvim"
export SUDO_EDITOR="nvim"
export GPG_TTY=$(tty)

export TERMINAL="gnome-terminal"

source ~/.git-prompt.sh
setopt PROMPT_SUBST

source /usr/share/zsh/share/antigen.zsh

antigen bundle jeffreytse/zsh-vi-mode
antigen bundle zsh-users/zsh-completions

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

source ~/.zshrc.alias
source ~/.zshrc.local

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/home/oaks/micromamba/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
    #eval "$__conda_setup"
#else
    #if [ -f "/home/oaks/micromamba/etc/profile.d/conda.sh" ]; then
        #. "/home/oaks/micromamba/etc/profile.d/conda.sh"
    #else
        #export PATH="/home/oaks/micromamba/bin:$PATH"
    #fi
#fi
#unset __conda_setup
# <<< conda initialize <<<

