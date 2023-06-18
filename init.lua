-- This file just loads all the lua files and configurations.
-- If a new file is created but not mentioned here it will not load.

-- init basic settings
require 'core.keymaps'
require 'core.plugins'
require 'core.options'

-- loads colortheme
-- can be easily changed by using the command ':colorscheme 'name of your theme''
-- for example :colorscheme vscode
require 'core.plugin_config.theme'

-- loads plugins
require 'core.plugin_config.telescope'
require 'core.plugin_config.treesitter'
require 'core.plugin_config.lualine'
require 'core.plugin_config.nvim-cmp'
require 'core.plugin_config.nvim-tree'

-- loads lsp-config
require 'core.plugin_config.lsp.lsp-zero'

