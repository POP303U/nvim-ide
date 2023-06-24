-- This file just loads all the lua files and configurations.
-- If a new file is created but not mentioned here it will not load.

-- load basic settings and plugins
require 'core.lazy'
require 'core.remap'
require 'core.options'

-- loads colortheme
-- you can change your colorscheme in this file ->
require 'core.plugin_config.theme'

-- loads configuration for the plugins
require 'core.plugin_config.telescope'
require 'core.plugin_config.treesitter'
require 'core.plugin_config.lualine'
require 'core.plugin_config.nvim-cmp'
require 'core.plugin_config.nvim-tree'
require 'core.plugin_config.toggleterm'

-- loads lsp-config
require 'core.plugin_config.lsp.lsp-zero'

