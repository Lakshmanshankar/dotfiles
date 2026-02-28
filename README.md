# Dotfiles
These are my personal dotfiles for my ubuntu 22.04 machine.

## setup
To apply this config, you need `nix` and `gnw stow`. 

1. Download or clone this repo.
```sh
git clone https://github.com/lakshmanshankar/dotfiles.git
```

2. Install nix 
```sh 
sh <(curl -L https://nixos.org/nix/install) --daemon
```

3. bash
```
nix profile install .#default
```

4. Stow configs
```
stow home
```


### Nix:

```sh
nix profile list
```

```sh
nix profile remove {name}
```

```sh 
nix profile add .#default
```


### Tmux and TPM:
[Tmux plugin manager](https://github.com/tmux-plugins/tpm)

#### Installation:
```sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

#### Usage:
```sh
tmux new
```
