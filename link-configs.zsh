#!/usr/bin/env zsh

# init zsh-autosuggestions module
git submodule init

ln -snf "$PWD/zsh" "$HOME/.config/zsh"
ln -snf "$PWD/zsh/.zshrc" "$HOME/.zshrc"

ln -snf "$PWD/yabai" "$HOME/.config/yabai"
ln -snf "$PWD/skhd" "$HOME/.config/skhd"
