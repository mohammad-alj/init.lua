return {
    'nvim-tree/nvim-tree.lua',
    config = function()
        -- disable netrw at the very start of your init.lua
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        -- optionally enable 24-bit colour
        vim.opt.termguicolors = true

        vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', { desc = 'Toggle [N]vimtree' })

        -- OR setup with some options
        require('nvim-tree').setup {
            sort = {
                sorter = 'case_sensitive',
            },
            view = {
                width = 30,
                side = 'right',
            },
            renderer = {
                group_empty = true,
            },
            filters = {
                dotfiles = false,
            },
        }
    end,
}
