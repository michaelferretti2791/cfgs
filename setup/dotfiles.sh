#!/usr/local/bin/bash

# Script to symlink dotfiles

# export DOTFILES=$HOME/Dropbox/App/config/dotfiles
export DOTFILES="/Volumes/Seagate Backup Plus Drive/Dropbox/App/config/dotfiles"
ln -fs "$DOTFILES"/.bash_aliases $HOME/.
ln -fs "$DOTFILES"/.bash_profile $HOME/.
# ln -fs "$DOTFILES"/.bash_prompt $HOME/.
ln -fs "$DOTFILES"/.bashrc $HOME/.
ln -fs "$DOTFILES"/.curlrc $HOME/.
ln -fs "$DOTFILES"/.editorconfig $HOME/.
# ln -fs "$DOTFILES"/.exports $HOME/.
# ln -fs "$DOTFILES"/.functions $HOME/.
ln -fs "$DOTFILES"/.gitignore_global $HOME/.
# ln -fs "$DOTFILES"/.inputrc $HOME/.
ln -fs "$DOTFILES"/.wgetrc $HOME/.
ln -fs "$DOTFILES"/.zlogin $HOME/.
ln -fs "$DOTFILES"/.zlogout $HOME/.
ln -fs "$DOTFILES"/.zprofile $HOME/.
ln -fs "$DOTFILES"/.zshenv $HOME/.
ln -fs "$DOTFILES"/.zshrc $HOME/.
ln -fs "$DOTFILES"/.hushlogin $HOME/.
# ln -fs "$DOTFILES"/bin $HOME/bin
# ln -fs $HOME/Dropbox/App/Code/User/settings.json "$HOME/Library/Application Support/Code/User/."
# ln -fs $HOME/Dropbox/App/Code/User/projects.json "$HOME/Library/Application Support/Code/User/."
# ln -fs $HOME/Dropbox/App/Code/User/syncLocalSettings.json "$HOME/Library/Application Support/Code/User/."
# rm -rfv "$HOME/Library/Application Support/Code/User/snippets"
# ln -fs $HOME/Dropbox/App/Code/User/snippets "$HOME/Library/Application Support/Code/User/snippets"
# ln -fs /Users/mferretti/Dropbox/App/VSCode/User/vsicons.settings.json "/Users/mferretti/Library/Application Support/Code/User/vsicons.settings.json"

