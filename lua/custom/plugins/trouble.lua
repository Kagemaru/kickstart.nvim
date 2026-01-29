return {
  { -- Pretty list of LSP Errors/Messages, Telescope results
    'folke/trouble.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      local toggle = function(param)
        require('trouble').toggle(param)
      end

      local map = function(keys, func, desc)
        vim.keymap.set('n', keys, func, { desc = 'Trouble: ' .. desc })
      end

      map('<leader>xx', function()
        toggle()
      end, 'Toggle')
      map('<leader>xw', function()
        toggle 'workspace_diagnostics'
      end, 'Workspace Diagnostics')
      map('<leader>xd', function()
        toggle 'document_diagnostics'
      end, 'Document Diagnostics')
      map('<leader>xq', function()
        toggle 'quickfix'
      end, 'Quickfix')
      map('<leader>xl', function()
        toggle 'loclist'
      end, 'Local List')
      map('gR', function()
        toggle 'lsp_references'
      end, 'LSP References')
    end,
  },
}
