local map = function(keys, func, desc)
  vim.keymap.set('n', keys, func, { desc = desc })
end

map('<leader>gf', '<CMD>e <cfile><CR>', 'Create and [G]o to [F]ile')
map('<leader>vgf', '<CMD>vert sfind <Plug><cfile><CR>')
