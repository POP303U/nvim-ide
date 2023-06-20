local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

local plugins = {
  ---------------------------------------------
   -- snippets for lsp-zero
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'saadparwaiz1/cmp_luasnip',
  'rafamadriz/friendly-snippets',

  ---------------------------------------------
   -- a world of colors in neovim
  'rose-pine/neovim',
  'catppuccin/nvim',
  'bluz71/vim-nightfly-colors',
  'bluz71/vim-moonfly-colors',
  'jacoborus/tender.vim',
  'ellisonleao/gruvbox.nvim',
  'folke/tokyonight.nvim',
  'nyoom-engineering/oxocarbon.nvim',
  'savq/melange-nvim',
  'Mofiqul/vscode.nvim',
  'ray-x/aurora',
  'AlexvZyl/nordic.nvim',
  'Shatur/neovim-ayu',

  ---------------------------------------------
   -- file explorer
  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',

  ---------------------------------------------
   -- navigation
  'christoomey/vim-tmux-navigator',
  'szw/vim-maximizer',

  ---------------------------------------------
   -- status line
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },

  ---------------------------------------------
   -- syntax highlighting
  'nvim-treesitter/nvim-treesitter',

  ---------------------------------------------
   -- fuzzy finder
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    dependencies = { {'nvim-lua/plenary.nvim'} }
  },

  ---------------------------------------------
   -- lsp-zero
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
      -- LSP Support
      'neovim/nvim-lspconfig',             -- Required
      {                                      -- Optional
        'williamboman/mason.nvim',
        init = function()
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
}

local opts = {}

require("lazy").setup(plugins, opts)
