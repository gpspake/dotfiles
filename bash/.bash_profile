# COLORS
export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Custom prompt
export PS1="\n\[\e[30;1m\]\[\016\]┌─\[\017\](\[\e[34;1m\]\u\[\e[30;1m\])-(\[\e[34;1m\]\@ \d\[\e[30;1m\])->\[\e[30;1m\]\n\[\016\]└\[\017\](\[\[\e[32;1m\]\w\[\e[30;1m\])--> \[\e[0m\]"

# PATH
export PATH="$PATH:~/bin"

# PATHS
export CODE_DIRECTORY="~/Code"
export DOTFILES_DIRECTORY="$CODE_DIRECTORY/dotfiles"

export AZPROXY="http://proxy.autozone.com"

# ALIASES
## ll to detailed direct list
alias ll="ls -la"

#edit bash profile
alias bashedit="vim ~/.bash_profile"

#source bash profile after editing
alias bashsource="source ~/.bash_profile"

#go to dotfiles
alias dotfiles="cd ${DOTFILES_DIRECTORY}"

#go to development
alias code="cd ${CODE_DIRECTORY}"

## ll after cd - @speakingcode
function cd() {
  new_directory="$*";
  if [ $# -eq 0 ]; then 
    new_directory=${HOME};
  fi;
  builtin cd "${new_directory}" && ll
}

alias nukenodemodules = "find . -name \"node_modules\" -type d -prune -exec rm -rf '{}' \\;"

#mkdir and cd
function mkcd() { mkdir -p "$@" && cd "$_"; }

## "c <tab>" to autocomplete against anything in Code directory
## http://drawingablank.me/blog/bash-alias-with-subdirectory-tabcompletion.html
function c() { cd "${CODE_DIRECTORY}/$1"; }
complete -C ~/.bash/development_completion -o filenames -o nospace d
