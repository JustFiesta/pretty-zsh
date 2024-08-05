#!/usr/bin/env bash
# ------------------
# This script installs oh-my-zsh, copies files to their destinantion and setups zsh with fuzzy history autocomplete

# Copy .zshrc to user's home
cp .zshrc ~/.zshrc

# Get oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Get autonsuggestions plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Get syntax highiting plugin
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Open new zsh session
exec zsh
