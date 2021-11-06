# Dotfiles

## Getting Started

These dotfiles are configured to be placed at `${HOME}/code/dotfiles` 
by default. If you want to put them in a different location, 
update environment variables accordingly.

Create a code directory if there isn't one
```bash
$ mkdir -p ~/code
```

Clone dotfiles repo to code directory
```bash
$ git clone https://github.com/gpspake/dotfiles $HOME/code/dotfiles
```

Run setup script to create symlinks
```bash
$ ~/dotfiles/scripts/setup.sh
```

For Windows Subsystem Linux, add `gpspake-wsl` to plugins in `~/.zshrc`
```
plugins=(git gpspake gpspake-wsl)
```

## Homebrew

Use brew to install CLI and desktop applications on OSX
```bash
$ ~/dotfiles/scripts/brew.sh
```
