return {
  {
    'folke/which-key.nvim',
    opts = {
      defaults = {
        ['<leader>v'] = { name = '+visual' },
      },
    },
  },
  {
    'deponian/nvim-base64',
    version = '*',
    keys = {
      -- Decode/encode selected sequence from/to base64
      -- (mnemonic: [b]ase64)
      { '<Leader>vb', '<Plug>(FromBase64)', mode = 'x', desc = 'Convert from Base64' },
      { '<Leader>vB', '<Plug>(ToBase64)', mode = 'x', desc = 'Convert to Base64' },
    },
    config = function()
      require('nvim-base64').setup()
    end,
  },
}
