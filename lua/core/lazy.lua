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

--TODO
vim.opt.rtp:prepend(lazypath)

local plugins = {
    ---------------------------------------------
    -- icons (dependencies)
    'nvim-tree/nvim-web-devicons',
    'nvim-lua/plenary.nvim',

    ---------------------------------------------
    -- a world of colors in neovim
    'rose-pine/neovim',
    'catppuccin/nvim',
    'overcache/NeoSolarized',
    'EdenEast/nightfox.nvim',
    'sainnhe/edge',
    'monsonjeremy/onedark.nvim',
    'NLKNguyen/papercolor-theme',
    'Rigellute/shades-of-purple.vim',
    'bluz71/vim-nightfly-colors',
    'liuchengxu/space-vim-dark',
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

    -- Speedy Explorers --
    'stevearc/oil.nvim',
    'theprimeagen/harpoon',

    -- navigation --
    'numToStr/Navigator.nvim',
    'szw/vim-maximizer',

    -- status line --
    'nvim-lualine/lualine.nvim',

    -- syntax highlighting --
    'nvim-treesitter/nvim-treesitter',

    -- fuzzy finder --
    'nvim-telescope/telescope.nvim',

    -- startup screen --
    'nvimdev/dashboard-nvim',

    -- terminal --
    { 'akinsho/toggleterm.nvim',          version = "*",  config = true },

    -- git integration
    "TimUntersberger/neogit",
    'f-person/git-blame.nvim',

    -- indenting help --
    'lukas-reineke/indent-blankline.nvim',

    -- type hints --
    'lvimuser/lsp-inlayhints.nvim',

    -- undotree --
    'mbbill/undotree',

    -- transparency support --
    'xiyaowong/transparent.nvim',

    --========================================--
    -- lsp-zero yay --
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x' },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip' },
    --========================================--

}

local opts = { inlay_hints = true }
require("lazy").setup(plugins, opts)
