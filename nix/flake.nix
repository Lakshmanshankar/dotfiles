{
  description = "Lakshman's CLI + Dev Environment";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
  };

  outputs = { self, nixpkgs, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };

      myPkgs = {
        go = pkgs.go_1_25;
        nodejs = pkgs.nodejs_22;  
        neovim = pkgs.neovim;    
      };

      commonPkgs = with pkgs; [
        # Your custom packages
        myPkgs.go
        myPkgs.nodejs
        myPkgs.neovim
        
        # Other packages
        delta zsh zsh-autosuggestions zsh-syntax-highlighting
        oh-my-zsh zsh-autocomplete fzf zoxide ripgrep fd bat btop jq htop dust
        eza tldr tmux git lazygit kitty starship xclip pnpm hey
      ];
    in
    {
      packages.${system}.default = pkgs.buildEnv {
        name = "cli-env";
        paths = commonPkgs;
      };

      devShells.${system}.default = pkgs.mkShell {
        name = "cli-devshell";
        packages = commonPkgs;
      };
    };
}