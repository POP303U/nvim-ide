local ensure_packer = function()
  local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    vim.fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  -- package manager (self init)
  use 'wbthomason/packer.nvim'

  -- lsp-saga

  --[[
  use({
    "glepnir/lspsaga.nvim",
    opt = true,
    branch = "main",
    event = "LspAttach",
    config = function()
        require("lspsaga").setup({})
    end,
    requires = {
        {"nvim-tree/nvim-web-devicons"},
        --Please make sure you install markdown and markdown_inline parser
        {"nvim-treesitter/nvim-treesitter"}
    }
  })
  ]]--

  -- snippets for lsp-zero
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'

  ---------------------------------------------
  -- a world of colors in neovim
  use { "catppuccin/nvim", as = "catppuccin" }
  use { "bluz71/vim-nightfly-colors", as = "nightfly" }
  use { "bluz71/vim-moonfly-colors",  as = "moonfly" }
  use { "jacoborus/tender.vim" }
  use { "ellisonleao/gruvbox.nvim" }
  use { "folke/tokyonight.nvim" }
  use { "nyoom-engineering/oxocarbon.nvim" }
  use { "savq/melange-nvim" }
  use { "Mofiqul/vscode.nvim" }
  use { "ray-x/aurora" }
  use { "AlexvZyl/nordic.nvim" }
  use { "Shatur/neovim-ayu" }
  --
  ---------------------------------------------

  -- file explorer
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'

  -- navigation
  use 'christoomey/vim-tmux-navigator'
  use 'szw/vim-maximizer'

  -- status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- syntax highlighting
  use 'nvim-treesitter/nvim-treesitter'

   -- fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {                                      -- Optional
        'williamboman/mason.nvim',
        run = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
    }



}
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
