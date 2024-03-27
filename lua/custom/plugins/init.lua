-- In here I'll add plugins that do not require really long configuration and aren't working with some other
-- plugin for the same task

return {
    { 'lukas-reineke/indent-blankline.nvim', main = 'ibl', opts = {} },
    {
        'catppuccin/nvim',
        name = 'catppuccin',
        priority = 1000,
        init = function()
            vim.cmd.colorscheme 'catppuccin-mocha'
        end,
    },
    -- Highlight todo, notes, etc in comments
    { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },
}
