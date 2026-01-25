# Dotfiles

Minimal dotfiles for macOS.

## Install

```bash
brew bundle
./stow.sh
```

## Scripts

- `stow.sh` - Creates symlinks from dotfiles to home directory. Fails if files already exist.
- `adopt.sh` - Pulls existing config files into this repo and creates symlinks. Use once on a new machine to preserve current settings.

## Brewfile

- `brew bundle` - Install all packages
- `brew bundle dump --force` - Update Brewfile with currently installed packages

## Making Changes

- Edit directly - open ~/.zshrc or ~/.config/ghostty/config in any editor
- Changes auto-save to the dotfiles repo (same file via symlink)
- Commit when ready - cd ~/workspace/dotfiles && git add . && git commit

