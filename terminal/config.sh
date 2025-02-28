#!/bin/bash

# Exit if any command fails
set -e

# Install Zsh
echo "Installing Zsh..."
sudo apt update && sudo apt install zsh -y

# Install Oh My Zsh
echo "Installing Oh My Zsh..."
sh -c ./omz-config.sh


echo "Copying theme and .zshrc..."
cp -r  ./oh-my-zsh "$HOME/.oh-my-zsh"
cp ./zshrc "$HOME/.zshrc"

# Change default shell to Zsh
echo "Changing default shell to Zsh..."
sudo chsh -s "$(command -v zsh)" "$USER"

echo "Installation complete! Please restart your terminal or log out and back in."

