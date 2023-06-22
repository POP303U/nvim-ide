function _G.set_terminal_keymaps()
      local opts = {buffer = 0}
      end
    -- if you only want these mappings for toggle term use term://toggleterm instead
vim.cmd('autocmd! TermOpen term:// lua set_terminal_keymaps()')

require("toggleterm").setup{}


