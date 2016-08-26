#!/usr/bin/env bash
# Wrapper for stuff that runs the script directly through bash...
export PATH=~/.nix-profile/bin/:$PATH
export NIX_PATH=~/.nix-defexpr/channels/nixpkgs/
./build-and-serve.sh
