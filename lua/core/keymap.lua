-- variable for conciseness
local keymap = vim.keymap
local current_dir = vim.fn.getcwd()

-- leader key
vim.g.mapleader = ' '

-- set theme light or dark
keymap.set('n', '<leader>sth', ':lua vim.opt.background = "light"<cr>')
keymap.set('n', '<leader>std', ':lua vim.opt.background = "dark"<cr>')
keymap.set('n', '<leader>cs', ':colorscheme ')

-- general keymaps
keymap.set('n', '<leader>nh', ':nohl<CR>')
keymap.set('n', 'x', '"_x')

keymap.set('n', '<leader>+', '<c-a>')          -- increment selected number
keymap.set('n', '<leader>-', '<c-x>')          -- decrement selected number

keymap.set('n', '<leader>sv', '<c-w>v')        -- split window vertically
keymap.set('n', '<leader>sh', '<c-w>s')        -- split window horizontally
keymap.set('n', '<leader>se', '<c-w>=')        -- make split windows equal width (if changed)
keymap.set('n', '<leader>sx', ':close<cr>')    -- close current split window

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

-- neogit
keymap.set('n', '<leader>g', ':Neogit kind=vsplit<CR>')

-- Lazy
keymap.set('n', '<leader>l', ':Lazy<CR>')

-- Undotree
keymap.set('n', '<leader>ut', vim.cmd.UndotreeToggle)

-- Oil
keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- ToggleTerm
keymap.set('n', '<leader>th', ':ToggleTerm size=10 dir=' .. current_dir .. ' direction=horizontal<CR>')
keymap.set('n', '<leader>tv', ':ToggleTerm size=40 dir=' .. current_dir .. ' direction=vertical<CR>')
keymap.set('n', '<leader>tf', ':ToggleTerm size=20 dir=' .. current_dir .. ' direction=float<CR>')
keymap.set('t', '<C-n>', [[<C-\><C-n>]])
