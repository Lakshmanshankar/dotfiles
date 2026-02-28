#!/usr/bin/env bash
set -e

echo "Installing cli packages via Nix .... 🚀"
nix profile add .#default

echo "Make sure ~/.nix-profile/bin is in your PATH (add to ~/.zshrc if needed):"
echo 'export PATH=$HOME/.nix-profile/bin:$PATH'
echo "Done! 🎉"
