return {
  'nvimtools/none-ls.nvim',
  config = function()
    local null_ls = require 'null-ls'
    null_ls.setup {
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.diagnostics.checkstyle.with {
          extra_args = { '-c', '/home/lucag/Documents/programmieren/assignment4/checkstyle-sheet4-5.xml' },
        },
      },
    }

    vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
  end,
}
