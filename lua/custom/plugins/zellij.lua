return {
  -- {
  --   'fresh2dev/zellij.vim',
  --   lazy = false,
  --   keys = {
  --     { '<leader>zjf', '<cmd>ZellijNewPane<cr>', mode = { 'n' }, desc = 'ZelliJ New Pane' },
  --     { '<leader>zjo', '<cmd>ZellijNewPaneSplit<cr>', mode = { 'n' }, desc = 'ZelliJ New Split' },
  --     { '<leader>zjv', '<cmd>ZellijNewPaneVSplit<cr>', mode = { 'n' }, desc = 'ZelliJ New Vertical Split' },
  --     { '<leader>zjrf', "<cmd>execute 'ZellijNewPane ' . input('Command: ')<cr>", mode = { 'n' }, desc = 'Execute cmd in new Pane' },
  --     { '<leader>zjro', "<cmd>execute 'ZellijNewPaneSplit ' . input('Command: ')<cr>", mode = { 'n' }, desc = 'Execute cmd in Split' },
  --     { '<leader>zjrv', "<cmd>execute 'ZellijNewPaneVSplit ' . input('Command: ')<cr>", mode = { 'n' }, desc = 'Execute cmd in Vertical Split' },
  --   },
  -- },
  -- {
  --   'swaits/zellij-nav.nvim',
  --   lazy = true,
  --   event = 'VeryLazy',
  --   keys = {
  --     { '<c-h>', '<cmd>ZellijNavigateLeftTab<cr>', { silent = true, desc = 'navigate left or tab' } },
  --     { '<c-j>', '<cmd>ZellijNavigateDown<cr>', { silent = true, desc = 'navigate down' } },
  --     { '<c-k>', '<cmd>ZellijNavigateUp<cr>', { silent = true, desc = 'navigate up' } },
  --     { '<c-l>', '<cmd>ZellijNavigateRightTab<cr>', { silent = true, desc = 'navigate right or tab' } },
  --   },
  --   opts = {},
  -- },
  {
    'GR3YH4TT3R93/zellij-nav.nvim',
    cond = os.getenv 'ZELLIJ' == '0',           -- Only load plugin if in active Zellij instance
    event = 'VeryLazy',                         -- Lazy load plugin for improved startup times
    init = function()                           -- Only needed if you want to override default keymaps otherwise just call opts = {}
      vim.g.zellij_nav_default_mappings = false -- Default: true
    end,
    opts = {},                                  -- Optional
    keys = {
      { '<A-h>',        '<cmd>ZellijNavigateLeft<cr>',                                  { silent = true, desc = 'navigate left' } },
      { '<A-j>',        '<cmd>ZellijNavigateDown<cr>',                                  { silent = true, desc = 'navigate down' } },
      { '<A-k>',        '<cmd>ZellijNavigateUp<cr>',                                    { silent = true, desc = 'navigate up' } },
      { '<A-l>',        '<cmd>ZellijNavigateRight<cr>',                                 { silent = true, desc = 'navigate right' } },
      { '<leader>zjf',  '<cmd>ZellijNewPane<cr>',                                       mode = { 'n' },                            desc = 'ZelliJ New Pane' },
      { '<leader>zjo',  '<cmd>ZellijNewPaneSplit<cr>',                                  mode = { 'n' },                            desc = 'ZelliJ New Split' },
      { '<leader>zjv',  '<cmd>ZellijNewPaneVSplit<cr>',                                 mode = { 'n' },                            desc = 'ZelliJ New Vertical Split' },
      { '<leader>zjt',  '<cmd>ZellijNewTab<cr>',                                        mode = { 'n' },                            desc = 'ZelliJ New Tab' },
      { '<leader>zjrf', "<cmd>execute 'ZellijNewPane ' . input('Command: ')<cr>",       mode = { 'n' },                            desc = 'Execute cmd in new Pane' },
      { '<leader>zjro', "<cmd>execute 'ZellijNewPaneSplit ' . input('Command: ')<cr>",  mode = { 'n' },                            desc = 'Execute cmd in Split' },
      { '<leader>zjrv', "<cmd>execute 'ZellijNewPaneVSplit ' . input('Command: ')<cr>", mode = { 'n' },                            desc = 'Execute cmd in Vertical Split' },
      { '<leader>zjrt', "<cmd>execute 'ZellijNewTab' . input('Command: ')<cr>",         mode = { 'n' },                            desc = 'Execute cmd in Vertical Split' },
    }, -- define your own keymaps e.g keys = { { "<C-h>", "<cmd>ZellijNavigateUp<CR>", { silent = true, desc = "Move to Zellij pane up" } } }
  },
}
