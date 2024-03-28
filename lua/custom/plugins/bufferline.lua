return {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        local bufferline = require 'bufferline'
        bufferline.setup {
            options = {
                mode = 'buffers',
                offsets = {
                    {
                        filetype = 'NvimTree',
                        text = 'File Explorer',
                        highlight = 'Directory',
                        separator = false, -- use a "true" to enable the default, or set your own character
                    },
                },
                diagnostics = 'nvim_lsp',
                numbers = 'none',
                indicator = {
                    style = 'none',
                },
                color_icons = true,
                show_buffer_close_icons = false,
                separator_style = 'thin',
            },
        }
        -- Bro thinks he's https://github.com/ThePrimeagen/harpoon
        vim.keymap.set('n', '<C-j>', ':BufferLineGoToBuffer 1<CR>', { desc = 'Goto first buffer' }) -- Goto buffer 1
        vim.keymap.set('n', '<C-k>', ':BufferLineGoToBuffer 2<CR>', { desc = 'Goto second buffer' }) -- Goto buffer 2
        vim.keymap.set('n', '<C-l>', ':BufferLineGoToBuffer 3<CR>', { desc = 'Goto third buffer' }) -- Goto buffer 3
        vim.keymap.set('n', '<C-;>', ':BufferLineGoToBuffer 4<CR>', { desc = 'Goto fourth buffer' }) -- Goto buffer 4

        vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>', { desc = 'Goto next buffer' }) -- Goto prev buffer
        vim.keymap.set('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', { desc = 'Goto previous buffer' }) -- Goto next buffer

        vim.keymap.set('n', '<C-c>', ':BufferLineCyclePrev<CR>:BufferLineCloseRight<CR>', { desc = 'Close this buffer and go to the previous one' }) -- CLose current buffer
        vim.keymap.set('n', '<C-v>', ':BufferLineCycleNext<CR>:BufferLineCloseLeft<CR>', { desc = 'Close this buffer and go the next one' }) -- CLose current buffer
        vim.keymap.set('n', '<C-a>', ':BufferLineCloseOthers<CR>', { desc = 'Close all buffers except this one' }) -- Close the rest of the buffer without this one
    end,
}
