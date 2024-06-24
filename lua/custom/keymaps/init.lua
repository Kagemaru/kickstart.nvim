local map = function(keys, func, desc)
  vim.keymap.set('n', keys, func, { desc = desc })
end

map('<leader>gf', '<CMD>e <cfile><cr>', 'Create and [G]o to [F]ile')
