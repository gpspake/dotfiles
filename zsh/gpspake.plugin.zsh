export DEVELOPMENT_DIRECTORY="$HOME/development"
export DOTFILES_DIRECTORY="$HOME/dotfiles"

# ALIASES
## ll to detailed direct list
alias ll='ls -la'
# edit bash profile
alias bashedit='vim ${DOTFILES_DIRECTORY}/bash/.bash_profile'
# source bash profile after editing
alias bashsource='source ${DOTFILES_DIRECTORY}/bash/.bash_profile'
# edit zsh
alias zshedit='vim ${DOTFILES_DIRECTORY}/zsh/gpspake.plugin.zsh'
# source zsh after editing
alias zshsource='source ${DOTFILES_DIRECTORY}/zsh/gpspake.plugin.zsh'
# go to dotfiles
alias dotfiles='cd ${DOTFILES_DIRECTORY}'
# go to development
alias dev='cd ${DEVELOPMENT_DIRECTORY}'

## ll after cd - @speakingcode
function cd() {
  new_directory="$*";
  if [ $# -eq 0 ]; then
    new_directory=${HOME};
  fi;
  builtin cd "${new_directory}" && ll
}

# h to cd to home - @vongrippen
h() { cd ~/$1; }
# tab complete h against home
_h() { _files -W ~/ -/; }
compdef _h h

# d to cd to development - @vongrippen
unalias d
d() { cd ~/development/$1; }
# tab complete d against development
_d() { _files -W ~/development -/; }
compdef _d d

#mkdir and cd
function mkcd() { mkdir -p "$@" && cd "$_"; }





