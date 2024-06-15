-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Remove entire word in insert mode
vim.keymap.set('i', '<C-BS>', '<Esc>viwc')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Gitsigns blame keymap
vim.keymap.set('n', '<leader>gb', ':Gitsigns toggle_current_line_blame<CR>', { desc = 'Toggle line blaming for git' })

-- Restart lsp
vim.keymap.set('n', '<S-C-r>', ':LspRestart<CR>', { desc = 'Ctrl + [R]estart lsp' })
-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- greatest remap ever
vim.keymap.set('x', '<leader>p', [["_dP]], { desc = '[P]aste without copying text' })

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]], { desc = '[Y]ank to system clipboard' })
vim.keymap.set('n', '<leader>Y', [["+Y]])

vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]], { desc = '[D]elete without copying text' })

-- Mark file as executable
vim.keymap.set('n', '<leader>x', '<cmd>!chmod +x %<CR>', { silent = true, desc = 'Mark file as E[X]utable' })

-- Replace word
vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = 'Replace hovered word on all of the file' })

-- Golang stuff
vim.keymap.set('n', '<leader>ge', 'oif err != nil {<CR>}<Esc>Oreturn err<Esc>', { desc = '[G]olang [E]rror' })
