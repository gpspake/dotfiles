# ---------------------
# Environment Variables
# ---------------------

# check for wsl https://stackoverflow.com/a/43618657/1827642
if grep -qEi "(Microsoft|WSL)" /proc/version &> /dev/null; then
  export HOME_DIRECTORY="/c/Users/gspake"
  export HOSTS_PATH="/c/Windows/System32/drivers/etc/hosts"
else
  export HOME_DIRECTORY="~"
  export HOSTS_PATH="/etc/hosts"
fi

export CODE_DIRECTORY="${HOME_DIRECTORY}/code"
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
#edit hosts
alias hosts='sudo vim ${HOSTS_PATH}'

# ---------
# Functions
# ---------

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
wh() { cd ${HOME_DIRECTORY}/$1; }
# tab complete wh against windows home
_wh() { _files -W ${HOME_DIRECTORY} -/; }
compdef _wh wh

# c to cd to ~/code
c() { cd ${CODE_DIRECTORY}/$1; }
# tab complete c against code
_c() { _files -W ${CODE_DIRECTORY} -/; }
compdef _c c

