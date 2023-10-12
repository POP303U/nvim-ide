-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    icons = {
      hint = "H",
      info = "I",
      warning = "W",
      error = "E",
    },
  },
   renderer = {
     root_folder_modifier = ":t",
  -- These icons are visible when you install web-devicons
     icons = {
       glyphs = {
         default = "",
         symlink = "",
         folder = {
           arrow_open = "",
           arrow_closed = "",
           default = "",
           open = "",
           empty = "",
           empty_open = "",
           symlink = "",
           symlink_open = "",
         },
       },
     },
   },
})