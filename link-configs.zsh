#!/usr/bin/env zsh

# init zsh-autosuggestions module
git submodule update --init

ln -snf "$PWD/zsh" "$HOME/.config/zsh"
ln -snf "$PWD/zsh/.zshrc" "$HOME/.zshrc"

ln -snf "$PWD/yabai" "$HOME/.config/yabai"
ln -snf "$PWD/skhd" "$HOME/.config/skhd"

# Not synced for now as i switched to ghostty
# ln -snf "$PWD/iterm2" "$HOME/.config/iterm2"
