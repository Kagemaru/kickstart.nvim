local nmap = function(keys, func, desc)
  vim.keymap.set('n', keys, func, { desc = desc })
end

local vmap = function(keys, func, desc)
  vim.keymap.set('v', keys, func, { desc = desc })
end

nmap('<leader>gf', '<CMD>e <cfile><CR>', 'Create and [G]o to [F]ile')
nmap('<leader>vgf', '<CMD>vert sfind <Plug><cfile><CR>')

nmap('<leader>dg1', '<CMD>diffget 1<CR>', 'Get change to first buffer')
nmap('<leader>dg2', '<CMD>diffget 2<CR>', 'Get change to second buffer')
nmap('<leader>dg3', '<CMD>diffget 2<CR>', 'Get change to third buffer')
nmap('<leader>dp1', '<CMD>diffput 1<CR>', 'Put change to first buffer')
nmap('<leader>dp2', '<CMD>diffput 2<CR>', 'Put change to second buffer')
nmap('<leader>dp3', '<CMD>diffput 2<CR>', 'Put change to third buffer')

vmap('<leader>dg1', '<CMD>diffget 1<CR>', 'Get change to first buffer')
vmap('<leader>dg2', '<CMD>diffget 2<CR>', 'Get change to second buffer')
vmap('<leader>dg3', '<CMD>diffget 2<CR>', 'Get change to third buffer')
vmap('<leader>dp1', '<CMD>diffput 1<CR>', 'Put change to first buffer')
vmap('<leader>dp2', '<CMD>diffput 2<CR>', 'Put change to second buffer')
vmap('<leader>dp3', '<CMD>diffput 2<CR>', 'Put change to third buffer')
