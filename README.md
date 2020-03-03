# Dotfiles

## Getting Started

These dotfiles are configured to be placed at `${HOME}/code` 
by default. If placed in a different location, 
update environment variables accordingly.

Create a code directory if there isn't one
```bash
$ mkdir -p ~/code
```

Clone dotfiles repo to code directory
```bash
$ git clone https://github.com/gpspake/dotfiles $HOME/code
```

Run setup script to create symlinks
```bash
$ ~/dotfiles/scripts/setup.sh
```

## ZSH

To complete zsh setup, add `gpspake` to plugins in `~/.zshrc`
```
plugins=(git gpspake)
```

For Windows Subsystem Linux, add `gpspake-wsl` to plugins in `~/.zshrc`
```
plugins=(git gpspake gpspake-wsl)
```

## Brew

Use brew to install desktop applications on OSX
```bash
$ ~/dotfiles/scripts/setup.sh
```

