--  _   _                 _
-- | \ | | ___  _____   _(_)_ __ ___
-- |  \| |/ _ \/ _ \ \ / / | '_ ` _ \
-- | |\  |  __/ (_) \ V /| | | | | | |
-- |_| \_|\___|\___/ \_/ |_|_| |_| |_|

-- This file just loads all the lua files and configurations.
-- If a new file is created but not mentioned here it will not load.

-- init basic settings
require 'core.lazy'
require 'core.keymap'
require 'core.options'

-- loads colortheme
-- you can change your colorscheme here
require 'core.plugin_config.theme'

-- loads plugins
require 'core.plugin_config.telescope'
require 'core.plugin_config.treesitter'
require 'core.plugin_config.lualine'
require 'core.plugin_config.toggleterm'
require 'core.plugin_config.navigator'
require 'core.plugin_config.indent-blankline'
require 'core.plugin_config.neogit'
require 'core.plugin_config.nvim-autopairs'
require 'core.plugin_config.oil'
require 'core.plugin_config.harpoon'
require 'core.plugin_config.colorizer'

-- startup themes
require 'custom.themes.my_theme'

-- load transparency last
require 'core.plugin_config.transparent'

-- loads lsp-config
require 'core.plugin_config.lsp.lsp-zero'
