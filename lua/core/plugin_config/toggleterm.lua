local local_shell = "pwsh"

function _G.set_terminal_keymaps()
      local opts = {buffer = 0}
      end
    -- if you only want these mappings for toggle term use term://toggleterm instead
vim.cmd('autocmd! TermOpen term:// lua set_terminal_keymaps()')

if package.config:sub(1,1) == "/" then
  local_shell = "bash"
end

require("toggleterm").setup{
  shell = local_shell
}


