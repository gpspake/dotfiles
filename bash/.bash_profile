# COLORS
export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# ALIAS
## ll to detailed direct list
alias ll='ls -la'

## ll after cd - @speakingcode
function cd() {
  new_directory="$*";
  if [ $# -eq 0 ]; then 
    new_directory=${HOME};
  fi;
  builtin cd "${new_directory}" && ll
}

## "d <tab>" to autocomplete against anything in ~/Development 
## http://drawingablank.me/blog/bash-alias-with-subdirectory-tabcompletion.html
function d() { cd "$HOME/Development/$1"; }
complete -C ~/.bash/development_completion -o filenames -o nospace d
