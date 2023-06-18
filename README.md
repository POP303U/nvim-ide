# vscode-nvim

**Easy to use neovim-config tailored to vscode users.**

## Setup

Uninstall any existing config you might have installed!

### Uninstall:

```bash
# Linux / Macos
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
# Windows
rd -r ~\AppData\Local\nvim
rd -r ~\AppData\Local\nvim-data
```

Then, clone my repo using this command:

### Install:

```bash
git clone https://github.com/POP303U/vscode-nvim ~/.config/nvim --depth 1 && nvim
```

After its finished installing, Neovim will open and error a bit. Just press Enter and it will Install all Packages with packer,
after that you should quit and reopen Neovim and everything should be installed! 

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



