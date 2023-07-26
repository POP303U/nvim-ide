
--  _   _                 _
-- | \ | | ___  _____   _(_)_ __ ___
-- |  \| |/ _ \/ _ \ \ / / | '_ ` _ \
-- | |\  |  __/ (_) \ V /| | | | | | |
-- |_| \_|\___|\___/ \_/ |_|_| |_| |_|

-- This file just loads all the lua files and configurations.
-- If a new file is created but not mentioned here it will not load.

-- init basic settings
require 'core.lazy'
require 'core.remap'
require 'core.options'

-- loads colortheme
-- you can change your colorscheme here
require 'core.plugin_config.theme'

-- loads plugins
require 'core.plugin_config.telescope'
require 'core.plugin_config.treesitter'
require 'core.plugin_config.lualine'
require 'core.plugin_config.nvim-cmp'
require 'core.plugin_config.nvim-tree'
require 'core.plugin_config.toggleterm'
require 'core.plugin_config.navigator'
require 'core.plugin_config.indent-blankline'

-- loads lsp-config
require 'core.plugin_config.lsp.lsp-zero'

-- load transparency last
require 'core.plugin_config.transparent'
