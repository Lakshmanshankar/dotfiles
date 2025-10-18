#!/usr/bin/env bash
set -e

echo "Installing CLI packages via Nix ....🚀"
nix profile add --extra-experimental-features 'nix-command flakes' .#default

echo "Make sure ~/.nix-profile/bin is in your PATH (add to ~/.zshrc if needed):"
echo 'export PATH=$HOME/.nix-profile/bin:$PATH'

echo "Ready to stow ."
echo "Done!"
