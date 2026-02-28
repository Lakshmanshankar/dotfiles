{
  description = "Lakshman's nix flake";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
  };
  outputs = { self, nixpkgs, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };

      # ── Language runtimes 
      langPkgs = with pkgs; [
        go_1_25
        nodejs_22
        pnpm
      ];

      # ── Editor & LSP
      editorPkgs = with pkgs; [
        neovim
      ];

      # ── Shell & prompt
      shellPkgs = with pkgs; [
        zsh
        zsh-autosuggestions
        zsh-syntax-highlighting
        zsh-autocomplete
        oh-my-zsh
        starship
      ];

      # ── Terminal
      termPkgs = with pkgs; [
        kitty
        tmux
        xclip
      ];

      # ── CLI utilities
      cliPkgs = with pkgs; [
        fzf       # fuzzy finder
        zoxide    # smart cd
        ripgrep   # fast grep
        fd        # fast find
        bat       # cat with wings
        lsd       # modern ls
        dust      # disk usage
        btop      # system monitor
        tldr      # quick manpages
        jq        # JSON processor
        jnv       # interactive Jq
        wl-clipboard # we love clipboard
      ];

      # ── Version control 
      gitPkgs = with pkgs; [
        git
        lazygit
        delta     # git diff pager
      ];

      commonPkgs = langPkgs ++ editorPkgs ++ shellPkgs ++ termPkgs ++ cliPkgs ++ gitPkgs;
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
