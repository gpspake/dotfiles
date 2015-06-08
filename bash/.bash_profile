# COLORS
export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# PATHS
export DEVELOPMENT_DIRECTORY="$HOME/development"
export DOTFILES_DIRECTORY="$HOME/dotfiles"

# ALIASES
## ll to detailed direct list
alias ll='ls -la'
#edit bash profile
alias bashedit='vim ${DOTFILES_DIRECTORY}/bash/.bash_profile'
#source bash profile after editing
alias bashsource='source ${DOTFILES_DIRECTORY}/bash/.bash_profile'
#go to dotfiles
alias dotfiles='cd ${DOTFILES_DIRECTORY}'
#go to development
alias dev='cd ${DEVELOPMENT_DIRECTORY}'

## ll after cd - @speakingcode
function cd() {
  new_directory="$*";
  if [ $# -eq 0 ]; then 
    new_directory=${HOME};
  fi;
  builtin cd "${new_directory}" && ll
}

#mkdir and cd
function mkcd() { mkdir -p "$@" && cd "$_"; }

## "d <tab>" to autocomplete against anything in ~/Development 
## http://drawingablank.me/blog/bash-alias-with-subdirectory-tabcompletion.html
function d() { cd "${DEVELOPMENT_DIRECTORY}/$1"; }
complete -C ~/.bash/development_completion -o filenames -o nospace d
