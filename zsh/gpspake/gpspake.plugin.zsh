# ---------------------
# Environment Variables
# ---------------------

export HOSTS_PATH="/etc/hosts"
export CODE_DIRECTORY="${HOME}/code"
export DOTFILES_DIRECTORY="${CODE_DIRECTORY}/dotfiles"

# -------
# Aliases
# -------

# ll to detailed direct list
alias ll='ls -la'
# edit zsh
alias zshedit='vim ${DOTFILES_DIRECTORY}/zsh/gpspake/gpspake.plugin.zsh'
# source zsh after editing
alias zshsource='source ${DOTFILES_DIRECTORY}/zsh/gpspake/gpspake.plugin.zsh'
# go to dotfiles
alias dotfiles='cd ${DOTFILES_DIRECTORY}'
# edit hosts
alias hosts='sudo vim ${HOSTS_PATH}'

# ---------
# Functions
# ---------

# ll after cd - @speakingcode
cd() {
  new_directory="$*";
  if [ $# -eq 0 ]; then
    new_directory=${HOME};
  fi;
  builtin cd "${new_directory}" && ll
}

# mkdir and cd
mkcd() { mkdir -p "$@" && cd "$_"; }

# c to cd to ~/code - @vongrippen
c() { cd ${CODE_DIRECTORY}/$1; }
# tab complete c against code
_c() { _files -W ${CODE_DIRECTORY} -/; }
compdef _c c

# h to cd to home
h() { cd ~/$1; }
# tab complete h against home
_h() { _files -W ~/ -/; }
compdef _h h
