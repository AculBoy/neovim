return {
  {
    'goolord/alpha-nvim',
    config = function()
      local alpha = require 'alpha'
      local dashboard = require 'alpha.themes.dashboard'
      dashboard.section.header.val = {
        [[                                                     ]],
        [[                                                     ]],
        [[                                                     ]],
        [[                                                     ]],
        [[  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
        [[  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ]],
        [[  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ]],
        [[  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
        [[  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
        [[  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
        [[                                                     ]],
        [[                                                     ]],
        [[                                                     ]],
      }
      dashboard.section.buttons.val = {
        dashboard.button('n', '  [N]ew file', ':ene <BAR> startinsert <CR>'),
        dashboard.button('fr', '󰺄  [F]ind [R]ecent files', ':Telescope oldfiles<CR>'),
        dashboard.button('ff', '  [F]ind [F]iles', ':Telescope find_files<CR>'),
        dashboard.button('fw', '󰱼  [F]ind [W]ord', ':Telescope grep_string<CR>'),
        dashboard.button('s', '  [S]ettings', ':e $MYVIMRC<CR>'),
        dashboard.button('q', '󰅚  [Q]uit NVIM', ':qa<CR>'),
      }
      local handle = io.popen 'fortune -n 100 | cowsay'
      local fortune = handle:read '*a'
      handle:close()
      dashboard.section.footer.val = fortune

      dashboard.config.opts.noautocmd = true

      vim.cmd [[autocmd User AlphaReady echo 'ready']]

      alpha.setup(dashboard.config)
    end,
  },
}
