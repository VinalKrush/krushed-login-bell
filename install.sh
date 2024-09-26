#!/bin/bash

# Check if Rustup is installed
if ! pacman -Q rustup &> /dev/null; then
  # Install Rustup
  sudo pacman -S rustup
  rustup default
fi

# Compile and install the binary using Cargo
cargo build --release
touch /usr/bin/krushed-login-bell
cp target/release/krushed-login-bell /usr/bin/krushed-login-bell