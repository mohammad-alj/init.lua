return {
    'goolord/alpha-nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
        'nvim-lua/plenary.nvim',
    },
    config = function()
        local dashboard = require 'alpha.themes.dashboard'
        dashboard.section.header.val = {
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                     ]],
            [[       ████ ██████           █████      ██                     ]],
            [[      ███████████             █████                             ]],
            [[      █████████ ███████████████████ ███   ███████████   ]],
            [[     █████████  ███    █████████████ █████ ██████████████   ]],
            [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
            [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
            [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                       ]],
        }

        dashboard.section.buttons.val = {
            dashboard.button('n', '  > New file', ':ene <BAR> startinsert <CR>'),
            dashboard.button('Space ff', '󰈞  > Find file'),
            dashboard.button('Space f.', '  > Recent'),
            dashboard.button('Space fn', '  > Find neovim files', ':cd $HOME/.config/nvim | Telescope find_files<CR>'),
            dashboard.button(':q', '⏻  > Quit NVIM'),
        }

        require('alpha').setup(dashboard.opts)
    end,
}
