# Dotfiles

My personal dotfiles for Ubuntu 22.04, managed using [GNU Stow](https://www.gnu.org/software/stow/) and [Nix](https://nixos.org/).

## Setup

### 1. Install prerequisites

Install Git and GNU Stow using APT:

```sh
sudo apt update
sudo apt install -y git stow curl
```

### 2. Clone the repository

```sh
git clone https://github.com/lakshmanshankar/dotfiles.git
cd dotfiles
```

### 3. Install Nix

Install Nix using the official installation script:

```sh
sh <(curl -L https://nixos.org/nix/install) --daemon
```

After installation, restart your terminal or load the appropriate shell configuration so that the Nix commands are available.

### 4. Install packages

Install the default package set defined in the repository's Nix flake:

```sh
nix profile install .#default
```

### 5. Apply dotfiles

Use GNU Stow to create symlinks for the configurations in the `home` directory:

```sh
stow home
```

Review the symlinks and resolve any conflicts with existing configuration files before applying the setup.

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

