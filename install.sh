#!/usr/bin/env bash

# ============================================================
# @file       : install.sh
# @brief      : Install script for Neovim (LazyVim based).
# ============================================================

set -euo pipefail

REPO="https://github.com/cipherswami/nvimrc.git"
TMP_DIR="/tmp/nvimrc"
DEST="$HOME/.config/nvim"

green()  { printf '\033[32m%s\033[0m\n' "$*"; }
yellow() { printf '\033[33m%s\033[0m\n' "$*"; }
red()    { printf '\033[31m%s\033[0m\n' "$*"; }
bold()   { printf '\033[1m%s\033[0m\n'  "$*"; }

# --- Install NVIM RC ---
bold "[#] Installing CIPH3R's Neovim config"

# --- Clean previous temp if exists ---
rm -rf "$TMP_DIR"

# --- Clone repo ---
yellow "- Cloning repository"
git clone --depth=1 "$REPO" "$TMP_DIR"

# --- Backup old config ---
if [ -d "$DEST" ]; then
  BACKUP="${DEST}.bak"
  yellow "- Backing up existing config → $BACKUP"
  rm -rf "$BACKUP"
  mv "$DEST" "$BACKUP"
fi

# --- Install new config ---
yellow "- Installing new config"
mkdir -p "$(dirname "$DEST")"
cp -r "$TMP_DIR/src" "$DEST"
green "+ Neovim config installed"
echo

# --- Cleanup ---
rm -rf "$TMP_DIR"

bold "[#] Installation done"
echo
