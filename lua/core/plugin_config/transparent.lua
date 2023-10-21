require("transparent").setup({
    groups = { -- table: default groups
        'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
        'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
        'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
        'SignColumn', 'CursorLineNr', 'EndOfBuffer',
    },
    extra_groups = {
        "NormalFloat",
        "NvimTreeNormal",
        "Telescope"
    },
    exclude_groups = {}, -- table: groups you don't want to clear
})

-- Available options are:
---- :TransparentEnable
---- :TransparentDisable
---- :TransparentToggle
vim.cmd(":TransparentEnable")
