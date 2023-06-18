-- variables for conciseness
local config = vim.g
local keymap = vim.keymap

-- leader key
config.mapleader = ' '

-- set theme light or dark
keymap.set('n', '<leader>sth', ':lua vim.opt.background = "light"<cr>')
keymap.set('n', '<leader>std', ':lua vim.opt.background = "dark"<cr>')
keymap.set('n', '<leader>cs', ':colorscheme ')

-- general keymaps
keymap.set('n', '<leader>nh', ':nohl<CR>')
keymap.set('n', 'x', '"_x')

keymap.set('n', '<leader>+', '<c-a>')
keymap.set('n', '<leader>-', '<c-x>')

keymap.set('n', '<leader>sv', '<c-w>v')     -- split window vertically
keymap.set('n', '<leader>sh', '<c-w>s')     -- split window horizontally
keymap.set('n', '<leader>se', '<c-w>=')     -- make split windows equal width (if changed)
keymap.set('n', '<leader>sx', ':close<cr>') -- close current split window

keymap.set('n', '<leader>to', ':tabnew<cr>')   -- open new tab
keymap.set('n', '<leader>tx', ':tabclose<cr>') -- close current tab
keymap.set('n', '<leader>tn', ':tabn<cr>')     -- go to next tab
keymap.set('n', '<leader>tp', ':tabp<cr>')     -- go to previous tab

-- the best remap ever
keymap.set('v', 'K', ":m '>-2<cr>gv=gv")
keymap.set('v', 'J', ":m '>+1<cr>gv=gv")

-- fixes this stupid issue where cursor goes to end of line with shift-j
keymap.set('n', 'J', 'mzJ`z')

-- paste into system clipboard
keymap.set('n', '<leader>y', "\"+y")
keymap.set('v', '<leader>y', "\"+y")

keymap.set("n", "<leader>rw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- plugin keymaps
--
-- vim-maximizer
keymap.set('n', '<leader>sm', ':MaximizerToggle<CR>')

-- nvim-tree
keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>')
keymap.set('n', '<leader>o', ':NvimTreeFocus<CR>')