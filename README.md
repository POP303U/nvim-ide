# vscode-nvim

**Easy to use neovim-config tailored to vscode users looking to migrate to Neovim**

This setup is still in early development, bugs and breaking changes may occur!

Important update: this config switched to using lazy as the package manager!  

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

+ [Ripgrep](https://github.com/BurntSushi/ripgrep) is required for grep searching with Telescope 
+ [Any Nerd Font](https://www.nerdfonts.com/) is required to be set as your terminal font for icons in my config

```bash
git clone https://github.com/POP303U/vscode-nvim ~/.config/nvim --depth 1 && nvim
```

After Neovim started up and lazy installed all plugins, quit and reopen Neovim!

## Features

**Plugins**

+ lazy: fastest package manager in town 
+ lualine: custom status bar for neovim
+ telescope: fuzzy finder in neovim
+ lsp-zero: lsp-server support with lsp-zero
+ nvim-cmp: auto completion with nvim-cmp
+ nvim-tree: filetree within neovim
+ treesitter: syntax highlighting for neovim

Treesitter will install highlighting automatically when entering a file.

Install any lsp-server using :LspInstall while in a file

This config is tailored to rust developers and you might have to do research to use other lsp-servers,
although using :LspInstall on a file like Typescript or Haskell will work 99% of the time.

## Keybindings

**Plugin Specific**
+ <Space>sl
