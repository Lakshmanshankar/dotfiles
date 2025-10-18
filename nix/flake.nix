
{
  description = "Lakshman's CLI + Dev Environment";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
  };

  outputs = { self, nixpkgs, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };

      myPkgs = pkgs // {
        go = pkgs.go_1_25;         
        nodejs_22 = pkgs.nodejs_22;
        neovim = pkgs.neovim_0_11;
      };

      commonPkgs = with myPkgs; [
        delta zsh zsh-autosuggestions zsh-syntax-highlighting
        oh-my-zsh zsh-autocomplete fzf zoxide ripgrep fd bat btop jq htop dust
        eza tldr tmux git lazygit kitty starship xclip pnpm
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
