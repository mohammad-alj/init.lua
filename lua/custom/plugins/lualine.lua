return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
        options = {
            icons_enabled = true,
            theme = 'auto',
            component_separators = { left = '', right = '' }, --
            section_separators = { left = '', right = '' },
            disabled_filetypes = {
                statusline = {},
                winbar = {},
            },
            ignore_focus = {},
            always_divide_middle = true,
            globalstatus = false,
            refresh = {
                statusline = 1000,
                tabline = 1000,
                winbar = 1000,
            },
        },
        sections = {
            lualine_a = { { 'mode', icon = '' } },
            lualine_b = { { 'branch', icon = '' }, { 'diff', padding = { left = 0, right = 1 } } },
            lualine_c = {
                { 'filetype', icon_only = true, padding = { left = 1 }, colored = true },
                {
                    'filename',
                    padding = 0,
                    path = 1 --[[ Relative path ]],
                },
                'diagnostics',
            },
            lualine_x = { { 'hostname', icon = '󱩛' } },
            lualine_y = { { 'location', icon = '' } },
            lualine_z = { 'progress' },
        },
        inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = { { 'filename', path = 1 } },
            lualine_x = {},
            lualine_y = {},
            lualine_z = {},
        },
        tabline = {},
        winbar = {},
        inactive_winbar = {},
        extensions = {},
    },
}
