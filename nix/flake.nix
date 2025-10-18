
{
  description = "Lakshman's CLI + Dev Environment";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/4f3e6e62fe5d1f0d9a5aa3e873ab4d3958266d73"; 
  };
  outputs = { self, nixpkgs, ... }:
    let
      pkgs = nixpkgs.legacyPackages.x86_64-linux;

      myPkgs = pkgs//{
        go = pkgs.go_1_25;
        nodejs = pkgs.nodejs_22;
      };
    in
    {
      packages.x86_64-linux.default = pkgs.buildEnv {
        name = "cli-env";
        paths = with myPkgs; [
          zsh
          zsh-autosuggestions
          zsh-syntax-highlighting
          fzf
          zoxide
          ripgrep
          fd
          bat
          btop
          jq
          htop
          dust
          eza
          tldr
          git
          lazygit
          neovim
          kitty
          starship
          pnpm
          xclip
        ];
      };
    };
}
