# Dotfiles

My personal dotfiles for Ubuntu 22.04, managed using [GNU Stow](https://www.gnu.org/software/stow/) and [Nix](https://nixos.org/).
## Setup

### 1. Install prerequisites

Install Git, GNU Stow, curl, and Zsh:

```sh
sudo apt update
sudo apt install -y git stow curl zsh
```

### 2. Clone the repository

```sh
git clone https://github.com/lakshmanshankar/dotfiles.git
cd dotfiles
```

### 3. Set Zsh as the default shell

```sh
chsh -s "$(which zsh)"
```

Log out and log back in for the change to take effect.

Verify the default shell:

```sh
echo "$SHELL"
```

### 4. Install Nix

```sh
sh <(curl -L https://nixos.org/nix/install) --daemon
```

Restart your terminal or load the appropriate shell configuration after installation.

### 5. Install packages

```sh
nix profile install .#default
```

### 6. Apply dotfiles

```sh
stow home
```

## Nix package management

List installed packages:

```sh
nix profile list
```

Remove a package using its installed profile element name:

```sh
nix profile remove <name>
```

Install or update the default package set from this repository:

```sh
nix profile install .#default
```

## Tmux and TPM

This configuration uses [Tmux Plugin Manager (TPM)](https://github.com/tmux-plugins/tpm) to manage Tmux plugins.

### Installation

Clone TPM into the expected directory:

```sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### Usage

Start a Tmux session:

```sh
tmux new
```

Inside Tmux, install the configured plugins using `prefix` + `I` (capital i), usually `Ctrl-b` followed by `Shift-i`.

