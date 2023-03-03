
#!/bin/bash

# Install Zsh
if [[ -x "$(command -v apt)" ]]; then
    sudo apt update
    sudo apt install -y zsh
elif [[ -x "$(command -v dnf)" ]]; then
    sudo dnf install -y zsh
fi

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


# Set Zsh as default shell
chsh -s $(which zsh)

# Notify the user to restart the terminal for changes to take effect
echo "Zsh, Oh My Zsh, and plugins installed. Please restart your terminal."
