local cmp = require("cmp")
cmp.setup({
   snippet = {
      expand = function(args)
         vim.fn["vsnip#anonymous"](args.body)
      end,
   },
   mapping = {
      ["<C-p>"] = cmp.mapping.select_prev_item(),
      ["<C-n>"] = cmp.mapping.select_next_item(),
      ["<C-d>"] = cmp.mapping.scroll_docs(-4),
      ["<C-f>"] = cmp.mapping.scroll_docs(4),
      ["<C-Space>"] = cmp.mapping.complete(),
      ["<C-e>"] = cmp.mapping.close(),
      ["<CR>"] = cmp.mapping.confirm({
         behavior = cmp.ConfirmBehavior.Replace,
         select = true,
      }),
   },
   formatting = {
      format = function(_, vim_item)
         vim.cmd("packadd lspkind-nvim")
         vim_item.kind = require("lspkind").presets.codicons[vim_item.kind]
         .. "  "
         .. vim_item.kind
         return vim_item
      end,
   },
   sources = {
      { name = "nvim_lsp" },
      { name = "vsnip" },
      { name = "path" },
   },
})

vim.cmd([[
augroup NvimCmp
au!
au FileType TelescopePrompt lua require('cmp').setup.buffer { enabled = false }
augroup END
]])
