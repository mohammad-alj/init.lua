return {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        require('bufferline').setup {
            options = {
                offsets = {
                    {
                        filetype = 'NvimTree',
                        text = 'File Explorer',
                        highlight = 'Directory',
                        separator = true, -- use a "true" to enable the default, or set your own character
                    },
                },
                diagnostics = 'nvim_lsp',
            },
        }
        -- Bro thinks he's https://github.com/ThePrimeagen/harpoon
        vim.keymap.set('n', '<C-j>', ':BufferLineGoToBuffer 1<CR>', { desc = 'Goto first buffer' }) -- Goto buffer 1
        vim.keymap.set('n', '<C-k>', ':BufferLineGoToBuffer 2<CR>', { desc = 'Goto second buffer' }) -- Goto buffer 2
        vim.keymap.set('n', '<C-l>', ':BufferLineGoToBuffer 3<CR>', { desc = 'Goto third buffer' }) -- Goto buffer 3
        vim.keymap.set('n', '<C-;>', ':BufferLineGoToBuffer 4<CR>', { desc = 'Goto fourth buffer' }) -- Goto buffer 4

        vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>', { desc = 'Goto next buffer' }) -- Goto prev buffer
        vim.keymap.set('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', { desc = 'Goto previous buffer' }) -- Goto next buffer

        vim.keymap.set('n', '<C-c>l', ':BufferLineCloseRight<CR>', { desc = 'Close right buffer' }) -- Close current buffer
        vim.keymap.set('n', '<C-c>h', ':BufferLineCloseLeft<CR>', { desc = 'Close left buffer' }) -- Close the rest of the buffer without this one
        vim.keymap.set('n', '<C-a>', ':BufferLineCloseOthers<CR>', { desc = 'Close all buffers except this one' }) -- Close the rest of the buffer without this one
    end,
}
