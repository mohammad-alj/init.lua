-- In here I'll add plugins that do not require really long configuration and aren't working with some other
-- plugin for the same task

return {
    { 'lukas-reineke/indent-blankline.nvim', main = 'ibl', opts = {} },
    'ThePrimeagen/vim-be-good',
    {
        'catppuccin/nvim',
        name = 'catppuccin',
        priority = 1000,
        config = function()
            vim.cmd 'colorscheme catppuccin-mocha'
        end,
    }, -- Highlight todo, notes, etc in comments
    { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },

    -- Autopairs
    {
        'windwp/nvim-autopairs',
        event = 'InsertEnter',
        config = true,
        -- use opts = {} for passing setup options
        -- this is equalent to setup({}) function
    },
    {
        'norcalli/nvim-colorizer.lua',
        config = function()
            require('colorizer').setup()
        end,
    },
}
