# vscode-nvim

**Easy to use neovim-config tailored to vscode users.**

## Setup

### Install:

```bash
git clone https://github.com/POP303U/neovim-config ~/.config/nvim --depth 1 && nvim
```

### Uninstall:

```bash
# Linux / Macos
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
# Windows
rd -r ~\AppData\Local\nvim
rd -r ~\AppData\Local\nvim-data
```

Be sure to run :PackerSync on your first startup!

## Features

**Plugins**

+ packer: easy to use package manager
+ lualine: custom status bar for neovim
+ telescope: fuzzy finder in neovim
+ lsp-zero: lsp-server support with lsp-zero
+ nvim-cmp: auto completion with nvim-cmp
+ nvim-tree: filetree within neovim
+ treesitter: syntax highlighting for neovim

Install any lsp-server using :LspInstall
Install any text-highlighter using :TSInstall



