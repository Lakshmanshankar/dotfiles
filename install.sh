
#!/bin/bash

# Check if the user has root privileges
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

# Install dependencies using apt for Debian-based systems
if [ -x "$(command -v apt)" ]; then
    apt update
    apt install -y git kitty tmux bat
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
    curl -fsSL https://bun.sh/install | bash
    npm install -g pnpm
    apt install -y ripgrep xclip stow fzf fd-find
fi

# Install dependencies using dnf for Fedora-based systems
if [ -x "$(command -v dnf)" ]; then
    dnf install -y git kitty tmux bat
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
    curl -fsSL https://bun.sh/install | bash
    npm install -g pnpm
    dnf install -y ripgrep xclip stow fzf fd-find
fi

# Install Rustup for both Debian-based and Fedora-based systems
# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Install Zoxide
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash

# starship
curl -sS https://starship.rs/install.sh | sh


# Other tools installation
# cargo install lsd
# cargo install bat
# cargo install starship

# Install fzf and fd
# Instructions: https://github.com/junegunn/fzf#installation
# Instructions: https://github.com/sharkdp/fd#installation
