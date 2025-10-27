return {
  'Kurama622/llm.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', 'MunifTanjim/nui.nvim' },
  cmd = { 'LLMSessionToggle', 'LLMSelectedTextHandler', 'LLMAppHandler' },
  config = function()
    require('llm').setup {
      url = 'https://openrouter.ai/',
      model = 'grok-4-fast:free',
      api_type = 'x-ai',
    }
  end,
  keys = {
    { '<leader>ac', mode = 'n', '<cmd>LLMSessionToggle<cr>' },
  },
}
