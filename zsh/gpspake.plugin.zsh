export CODE_DIRECTORY="/c/Users/gspake/code"
export DOTFILES_DIRECTORY="/c/Users/gspake/code/dotfiles"
export HOSTS_PATH="/c/Windows/System32/drivers/etc/hosts"

# ll to detailed direct list
alias ll='ls -la'
# edit zsh
alias zshedit='vim ${DOTFILES_DIRECTORY}/zsh/gpspake/gpspake.plugin.zsh'
# source zsh after editing
alias zshsource='source ${DOTFILES_DIRECTORY}/zsh/gpspake/gpspake.plugin.zsh'
# go to dotfiles
alias dotfiles='cd ${DOTFILES_DIRECTORY}'
#edit hosts
alias hosts='sudo vim ${HOSTS_PATH}'

## ll after cd - @speakingcode
cd() {
  new_directory="$*";
  if [ $# -eq 0 ]; then
    new_directory=${HOME};
  fi;
  builtin cd "${new_directory}" && ll
}

# mkdir and cd
mkcd() { mkdir -p "$@" && cd "$_"; }

# h to cd to home - @vongrippen
h() { cd ~/$1; }
# tab complete h against home
_h() { _files -W ~/ -/; }
compdef _h h

# wh to cd to windows home
wh() { cd /c/Users/gspake/$1; }
# tab complete wh against windows home
_wh() { _files -W /c/Users/gspake -/; }
compdef _wh wh

# c to cd to ~/code
c() { cd ${CODE_DIRECTORY}/$1; }
# tab complete c against code
_c() { _files -W ${CODE_DIRECTORY} -/; }
compdef _c c

