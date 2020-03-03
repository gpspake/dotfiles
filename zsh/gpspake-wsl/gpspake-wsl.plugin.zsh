export WINDOWS_HOME_DIRECTORY="/c/Users/gspake"
export WINDOWS_HOSTS_PATH="/c/Windows/System32/drivers/etc/hosts"

# wh to cd to windows home
wh() { cd ${WINDOWS_HOME_DIRECTORY}/$1; }
# tab complete wh against windows home
_wh() { _files -W ${WINDOWS_HOME_DIRECTORY} -/; }
compdef _wh wh

# edit windows hosts file
alias whosts='sudo vim ${WINDOWS_HOSTS_PATH}'