return {
  -- {
  --   'soywod/iris.vim',
  --   init = function()
  --     vim.g.iris_name = 'Thomas Burkhalter'
  --     vim.g.iris_mail = 'burkhalter@puzzle.ch'
  --     vim.g.iris_imap_host = 'imap.puzzle.ch'
  --     vim.g.iris_imap_port = 993
  --     vim.g.iris_imap_login = 'burkhalter@puzzle.ch'
  --     vim.g.iris_imap_passwd_show_cmd = 'pass show sso'
  --     vim.g.iris_smtp_host = 'smtp.puzzle.ch'
  --     vim.g.iris_smtp_port = 587
  --     vim.g.iris_smtp_login = 'burkhalter@puzzle.ch'
  --     vim.g.iris_smtp_passwd_show_cmd = 'pass show sso'
  --     vim.g.iris_download_dir = '~/Mail'
  --   end,
  -- },

  {
    'pimalaya/himalaya-vim',
    init = function()
      local g = vim.g

      g.himalaya_folder_picker_telescope_view = 1
    end,
  },
}
