-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'junegunn/fzf.vim',
  {
    'soywod/iris.vim',
    init = function()
      vim.g.iris_name = 'Thomas Burkhalter'
      vim.g.iris_mail = 'burkhalter@puzzle.ch'
      vim.g.iris_imap_host = 'imap.puzzle.ch'
      vim.g.iris_imap_port = 993
      vim.g.iris_imap_login = 'burkhalter@puzzle.ch'
      vim.g.iris_imap_passwd_show_cmd = 'pass show sso'
      vim.g.iris_smtp_host = 'smtp.puzzle.ch'
      vim.g.iris_smtp_port = 587
      vim.g.iris_smtp_login = 'burkhalter@puzzle.ch'
      vim.g.iris_smtp_passwd_show_cmd = 'pass show sso'
      vim.g.iris_download_dir = '~/Mail'
    end,
  },
  'tpope/vim-rails',
  'vim-test/vim-test',
  'tpope/vim-dispatch',
  'jesseduffield/lazygit',
  'nvim-focus/focus.nvim',
  {
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
  {
    'folke/snacks.nvim',
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      bigfile = { enabled = true },
      bufdelete = { enabled = true },
      dashboard = { enabled = true },
      debug = { enabled = true },
      git = { enabled = true },
      gitbrowse = { enabled = true },
      lazygit = { enabled = true },
      notify = { enabled = true },
      notifier = {
        enabled = true,
        timeout = 3000,
      },
      profiler = { enabled = true },
      quickfile = { enabled = true },
      rename = { enabled = true },
      scratch = { enabled = true },
      statuscolumn = { enabled = true },
      terminal = { enabled = true },
      toggle = { enabled = true },
      win = { enabled = true },
      words = { enabled = true },
      styles = {
        notification = {
          wo = { wrap = true }, -- Wrap notifications
        },
      },
    },
    keys = {
      {
        '<leader>un',
        function()
          Snacks.notifier.hide()
        end,
        desc = 'Dismiss All Notifications',
      },
      {
        '<leader>bd',
        function()
          Snacks.bufdelete()
        end,
        desc = 'Delete Buffer',
      },
      {
        '<leader>gg',
        function()
          Snacks.lazygit()
        end,
        desc = 'Lazygit',
      },
      {
        '<leader>gb',
        function()
          Snacks.git.blame_line()
        end,
        desc = 'Git Blame Line',
      },
      {
        '<leader>gB',
        function()
          Snacks.gitbrowse()
        end,
        desc = 'Git Browse',
      },
      {
        '<leader>gF',
        function()
          Snacks.lazygit.log_file()
        end,
        desc = 'Lazygit Current File History',
      },
      {
        '<leader>gl',
        function()
          Snacks.lazygit.log()
        end,
        desc = 'Lazygit Log (cwd)',
      },
      {
        '<leader>cR',
        function()
          Snacks.rename()
        end,
        desc = 'Rename File',
      },
      {
        '<c-/>',
        function()
          Snacks.terminal()
        end,
        desc = 'Toggle Terminal',
      },
      {
        '<c-_>',
        function()
          Snacks.terminal()
        end,
        desc = 'which_key_ignore',
      },
      {
        ']]',
        function()
          Snacks.words.jump(vim.v.count1)
        end,
        desc = 'Next Reference',
        mode = { 'n', 't' },
      },
      {
        '[[',
        function()
          Snacks.words.jump(-vim.v.count1)
        end,
        desc = 'Prev Reference',
        mode = { 'n', 't' },
      },
      {
        '<leader>N',
        desc = 'Neovim News',
        function()
          Snacks.win {
            file = vim.api.nvim_get_runtime_file('doc/news.txt', false)[1],
            width = 0.6,
            height = 0.6,
            wo = {
              spell = false,
              wrap = false,
              signcolumn = 'yes',
              statuscolumn = ' ',
              conceallevel = 3,
            },
          }
        end,
      },
    },
    init = function()
      vim.api.nvim_create_autocmd('User', {
        pattern = 'VeryLazy',
        callback = function()
          -- Setup some globals for debugging (lazy-loaded)
          _G.dd = function(...)
            Snacks.debug.inspect(...)
          end
          _G.bt = function()
            Snacks.debug.backtrace()
          end
          vim.print = _G.dd -- Override print to use snacks for `:=` command

          -- Create some toggle mappings
          Snacks.toggle.option('spell', { name = 'Spelling' }):map '<leader>us'
          Snacks.toggle.option('wrap', { name = 'Wrap' }):map '<leader>uw'
          Snacks.toggle.option('relativenumber', { name = 'Relative Number' }):map '<leader>uL'
          Snacks.toggle.diagnostics():map '<leader>ud'
          Snacks.toggle.line_number():map '<leader>ul'
          Snacks.toggle.option('conceallevel', { off = 0, on = vim.o.conceallevel > 0 and vim.o.conceallevel or 2 }):map '<leader>uc'
          Snacks.toggle.treesitter():map '<leader>uT'
          Snacks.toggle.option('background', { off = 'light', on = 'dark', name = 'Dark Background' }):map '<leader>ub'
          Snacks.toggle.inlay_hints():map '<leader>uh'
        end,
      })
    end,
  },
  {
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
  'mg979/vim-visual-multi',
}
