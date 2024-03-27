return {
    {
        'tpope/vim-fugitive', -- This is so awesome how is this legal
        config = function()
            vim.keymap.set('n', '<leader>gg', ':Git ', { desc = 'A faster way to use git inside of neovim' })
        end,
    },
    {
        -- Adds git related signs to the gutter, as well as utilities for managing changes
        -- See `:help gitsigns` to understand what the configuration keys do
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup {
                signs = {
                    add = { text = '+' },
                    change = { text = '~' },
                    delete = { text = '_' },
                    topdelete = { text = '‾' },
                    changedelete = { text = '~' },
                },
            }
            vim.keymap.set('n', '<leader>gb', ':Gitsigns toggle_current_line_blame<CR>', { desc = 'Toggle line blaming' })
        end,
    },
}
