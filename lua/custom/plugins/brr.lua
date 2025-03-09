return {
  { --- BRR
    'leobeosab/brr.nvim',
    opts = {
      root = '~/org/obsidian/Notizen/zettelkasten/scratches',
      style = {
        width = 0.8,
        height = 0.8,
        title_padding = 2,
      },
    },
    keys = {
      { '<leader>,', '<cmd>Scratch scratch.md<cr>', desc = 'Open persistent scratch' },
      { '<leader>.', '<cmd>Scratch<cr>', desc = 'Open daily scratch' },
      { '<leader>f.', '<cmd>ScratchList<cr>', desc = 'Find scratch' },
    },
  },
}
