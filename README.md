# CIPH3R's NVIMRC

Minimal Neovim configuration built on top of LazyVim.

## Requirements

- **Neovim ≥ 0.11.2**
- **Git**
- **Nerd Font**

## Dependencies

Install required tools:

```bash
sudo apt update
sudo apt install -y build-essential ripgrep fzf lazygit fd-find
```

Install Tree-sitter CLI:

```bash
npm install -g tree-sitter-cli
```

## Installation

Clone the repository directly into the Neovim config directory:

```bash
git clone https://github.com/cipherswami/nvimrc ~/.config/nvim
```

Start Neovim:

```bash
nvim
```

Lazy.nvim will automatically install plugins on first launch.

## Uninstall

Remove the configuration and plugin data:

```bash
rm -rf ~/.config/nvim ~/.local/share/nvim ~/.local/state/nvim ~/.cache/nvim
```

## License

This project is licensed under the MIT License. See the [LICENSE](./LICENSE) file for more details.
