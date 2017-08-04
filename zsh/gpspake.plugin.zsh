#!/usr/bin/env bash
export DEVELOPMENT_DIRECTORY="$HOME/code"
export DOTFILES_DIRECTORY="$HOME/code/dotfiles"
export PATH="$(yarn global bin | grep -o '/.*'):$PATH"

# ALIASES
## ll to detailed direct list
alias ll='ls -la'
# edit bash profile
alias bashedit='vim ${DOTFILES_DIRECTORY}/bash/.bash_profile'
# source bash profile after editing
alias bashsource='source ${DOTFILES_DIRECTORY}/bash/.bash_profile'
# edit zsh
alias zshedit='atom ${DOTFILES_DIRECTORY}/zsh/gpspake.plugin.zsh'
# source zsh after editing
alias zshsource='source ${DOTFILES_DIRECTORY}/zsh/gpspake.plugin.zsh'
# edit hosts
alias hostsedit='sudo vim /private/etc/hosts'
# go to dotfiles
alias dotfiles='cd ${DOTFILES_DIRECTORY}'
# go to development
alias dev='cd ${DEVELOPMENT_DIRECTORY}'
#edit hosts
alias hosts='atom /etc/hosts'

## ll after cd - @speakingcode
function cd() {
  new_directory="$*";
  if [ $# -eq 0 ]; then
    new_directory=${HOME};
  fi;
  builtin cd "${new_directory}" && ls -la
}

# h to cd to home - @vongrippen
h() { cd ~/$1; }
# tab complete h against home
_h() { _files -W ~/ -/; }
compdef _h h

# d to cd to development - @vongrippen
unalias d
code() { cd ~/code/$1; }
# tab complete d against development
_code() { _files -W ~/code -/; }
compdef _code code

#mkdir and cd
function mkcd() { mkdir -p "$@" && cd "$_"; }
