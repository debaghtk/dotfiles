# Dotfiles

Minimal dotfiles for macOS.

## Install

```bash
brew install stow z starship
brew install --cask ghostty
./stow.sh
```

## Scripts

- `stow.sh` - Creates symlinks from dotfiles to home directory. Fails if files already exist.
- `adopt.sh` - Pulls existing config files into this repo and creates symlinks. Use once on a new machine to preserve current settings.

## Making Changes

Edit files normally (e.g. `~/.zshrc`). Changes save to the dotfiles repo via symlink. Commit when ready.
