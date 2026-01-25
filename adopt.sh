#!/usr/bin/env bash
# Use this once to adopt existing configs into the repo
stow -v -R --adopt -t ~ zsh
stow -v -R --adopt -t ~/.config ghostty
stow -v -R --adopt -t ~/.config starship
stow -v -R --adopt -t ~ vscode
stow -v -R --adopt -t ~ nvim
