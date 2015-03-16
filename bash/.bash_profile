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
## dir to cd into a project from anywhere - @vongrippen
## tab complete not working in bash
function d() { cd ~/Development/$1; }
function _d() { _files -W ~/Development -/; }
