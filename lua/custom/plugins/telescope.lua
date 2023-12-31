return {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 
        'nvim-lua/plenary.nvim',
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        "nvim-tree/nvim-web-devicons"
    },
    config = function()
        local builtin = require("telescope.builtin")

        vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
        vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
        vim.keymap.set("n", "<leader>fr", builtin.oldfiles, {})
        vim.keymap.set("n", "<leader>fg", builtin.git_files, {})
        vim.keymap.set("n", "<leader>fs", builtin.live_grep, {})
    end
}
