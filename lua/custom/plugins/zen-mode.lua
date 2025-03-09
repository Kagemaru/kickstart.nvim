return {
  { --- ZenMode
    'folke/zen-mode.nvim',
    opts = {
      window = {
        width = 0.8,
      },
    },
    keys = {
      { '<C-w>m', '<cmd>ZenMode<cr>', desc = 'Toggle ZenMode' },
    },
  },
}
