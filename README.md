# Kickstart nvimrc

My Neovim configuration based on LazyVim.

## Requirements

- Neovim ≥ 0.11.2
- Git
- Nerd Font

## Installation

Install dependencies:

```bash
sudo apt update && sudo apt install -y build-essential ripgrep fzf lazygit fd-find
sudo ln -sf "$(which fdfind)" /usr/local/bin/fd
npm install -g tree-sitter-cli
```

Install nvimrc:

```bash
curl -fsSL https://raw.githubusercontent.com/cipherswami/nvimrc/main/install.sh | bash
```

## Uninstall

Uninstall nvimrc:

```bash
rm -rf ~/.config/nvim ~/.local/share/nvim ~/.local/state/nvim ~/.cache/nvim
```

## License

This project is licensed under the MIT License. See the [LICENSE](./LICENSE) file for details.
