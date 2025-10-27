return {
  {
    'stevearc/oil.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('oil').setup {
        colums = { 'icon' },
        keymaps = {
          ['<C-h>'] = '<C-w><C-h>',
          ['<C-l>'] = '<C-w><C-l>',
          ['<C-v>'] = { 'actions.select', opts = { vertical = true } },
          ['<C-s>'] = { 'actions.select', opts = { horizontal = true } },
          ['<C-r>'] = 'actions.refresh',
          -- ['<C-h>'] = false,
          -- ['<M-h>'] = 'actions.select_split',
        },
        view_options = {
          show_hidden = true,
        },
      }

      local oil = require 'oil'

      -- Open parent directory in current window
      vim.keymap.set('n', '-', oil.open, { desc = 'Open parent directory' })

      -- Open parent directory in floating window
      vim.keymap.set('n', '<space>-', oil.toggle_float, { desc = 'Open oil floating' })
    end,
  },
}
