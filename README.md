# My Dotfiles
I am currently using ubuntu 24.04

## setup
To apply this config, you need nix and gnw stow. 

1. Install git and clone this repo.
````sh
git clone https://github.com/lakshmanshankar/dotfiles.git
```

2. Install nix 
```sh 
sh <(curl -L https://nixos.org/nix/install) --daemon
```

3. zsh 
```
chmod +x ./nix/bootstrap.sh
./nix/bootstrap.sh
```

2. Install GNU stow

```
stow home
```


