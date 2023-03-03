# My Dotfiles

I am currently using terminal a lot and this config has some depedencies which needs to be installed before  stowing.

1. git
```
sudo apt install git 
```

```
sudo dnf install git
```

## pre requisties

1. Node.js ([nvm](https://www.freecodecamp.org/news/node-version-manager-nvm-install-guide/)) & [bun](bun.sh) & pnpm
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
```

```
curl -fsSL https://bun.sh/install | bash
```

```
npm install -g pnpm
```


2. python 3+(virtualenv)
3. gcc & [rustup](https://www.rust-lang.org/tools/install)
```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

# Env

1. Kitty
```
sudo apt install kitty
```

```
sudo dnf install kitty
```

2. Neovim
(Install using Bob version manager or using snap or whatever )

3. tmux
```
sudo apt install tmux
```

```
sudo dnf install tmux
```
Tmux plugin Manager
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
then prefix + shift I


## Other tools

1. [bat](https://github.com/sharkdp/bat)
```
sudo apt install bat
```

```
sudo dnf install bat
```


2. lsd

3.[zoxide](https://github.com/ajeetdsouza/zoxide)
```
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash
```

4. fzf & fd
5. ripgrep
6. xclip
7. starship
```
curl -sS https://starship.rs/install.sh | sh
```

## Zsh

1. auto-suggestions
2. syntax highlighting

## Todo

1. change git username in the sytem or .gitconfig file
```
chmod +x ./install.sh
./install.sh
```

2. zsh 
```
chmod +x ./zsh.sh
./zsh.sh

```

2. Install GNU stow

```
stow .
```


