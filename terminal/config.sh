#!/bin/bash

set -e

echo "Installing Zsh..."
sudo apt update && sudo apt install zsh -y

echo "Installing Oh My Zsh..."
sh -c ./omz-config.sh


echo "Copying theme and .zshrc..."
cp -r  ./oh-my-zsh "$HOME/.oh-my-zsh"
cp ./zshrc "$HOME/.zshrc"

echo "Changing default shell to Zsh..."
sudo chsh -s "$(command -v zsh)" "$USER"

echo "Installation complete! Please restart your terminal or log out and back in."

