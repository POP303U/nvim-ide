require("dashboard").setup({
    theme = 'doom',
    config = {
        header = {
            "                                                           ",
            "                                          /$$              ",
            "                                         |__/              ",
            " /$$$$$$$   /$$$$$$   /$$$$$$  /$$    /$$ /$$ /$$$$$$/$$$$ ",
            "| $$__  $$ /$$__  $$ /$$__  $$|  $$  /$$/| $$| $$_  $$_  $$",
            "| $$  \\ $$| $$$$$$$$| $$  \\ $$ \\  $$/$$/ | $$| $$ \\ $$ \\ $$",
            "| $$  | $$| $$_____/| $$  | $$  \\  $$$/  | $$| $$ | $$ | $$",
            "| $$  | $$|  $$$$$$$|  $$$$$$/   \\  $/   | $$| $$ | $$ | $$",
            "|__/  |__/ \\_______/ \\______/     \\_/    |__/|__/ |__/ |__/",
            "                                                           ",
            "                                                           ",
        },
        center = {
            {
                desc = 'Quick Help',
                desc_hl = 'String'
            },

            {
                icon = ' ',
                desc = 'Find Files',
                key = 'ff',
                keymap = 'SPC ',
                key_hl = 'Number',
                key_format = ' %s', -- remove default surrounding `[]`
                action = 'Telescope find_files'
            },
            {
                icon = '󰪺 ',
                icon_hl = 'Title',
                desc = 'Find Recent Files',
                key = 'fo',
                keymap = 'SPC ',
                key_hl = 'Number',
                key_format = ' %s', -- remove default surrounding `[]`
                action = 'Telescope oldfiles'
            },
            {
                icon = '󱞑 ',
                icon_hl = 'Title',
                desc = 'Open Lazy',
                key = 'l ',
                keymap = 'SPC ',
                key_hl = 'Number',
                key_format = ' %s', -- remove default surrounding `[]`
                action = 'Lazy'
            },
            {
                icon = '󱘎 ',
                icon_hl = 'Title',
                desc = 'Open NvimTree',
                key = 'e ',
                keymap = 'SPC ',
                key_hl = 'Number',
                key_format = ' %s', -- remove default surrounding `[]`
                action = 'NvimTreeToggle'
            },
            {
                icon = '󰊢 ',
                icon_hl = 'Title',
                desc = 'Open Neogit',
                key = 'ng',
                keymap = 'SPC ',
                key_hl = 'Number',
                key_format = ' %s', -- remove default surrounding `[]`
                action = 'Neogit'
            },


        },
        footer = { 'Write programs that do one thing and do it well - The Unix Philosophy' } --your footer
    }
})
