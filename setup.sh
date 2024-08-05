#!/usr/bin/env bash
# ------------------
# This script installs oh-my-zsh, copies files to their destinantion and setups zsh with fuzzy history autocomplete

# Get oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Get autonsuggestions plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Get autocomplete plugin
mkdir -p $HOME/.oh-my-zsh/custom/plugins/
git clone https://github.com/larkery/zsh-histdb $HOME/.oh-my-zsh/custom/plugins/zsh-histdb

# Open new zsh session
exec zsh
