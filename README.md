# My Dotfiles
I am currently using ubuntu 24.04

## setup
To apply this config, you need nix and stow. 
1. Install nix 
```sh 
sh <(curl -L https://nixos.org/nix/install) --daemon
```
2. Download the repo and cd into it. (git will be installed)

3. zsh 
```
chmod +x ./nix/bootstrap.sh
./nix/bootstrap.sh

```

2. Install GNU stow

```
stow home
```


