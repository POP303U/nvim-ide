-- disable netrw at the very start of your init.lua (necessary for config to work)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd( [[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]] )
-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 35,
  },
  renderer = {
    icons = {
      glyphs = {
        folder = {
          arrow_closed = "",
          arrow_open = "",
        },
      },
    },
  },
  update_focused_file = {
    enable = true,
    update_root = true,
  },
  filters = {
    dotfiles = false,
  },
})


