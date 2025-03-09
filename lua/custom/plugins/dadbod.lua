return {
  {
    'kristijanhusak/vim-dadbod-ui',
    dependencies = {
      { 'tpope/vim-dadbod', filetype = 'sql', lazy = true },
      { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true },
    },
    cmd = {
      'DBUI',
      'DBUIToggle',
      'DBUIAddConnection',
      'DBUIFindBuffer',
    },
    init = function()
      -- DBUI Config
      vim.g.db_ui_use_nerd_fonts = 1

      local psql = function(db)
        return 'postgres://postgres:postgres@localhost:5432/' .. db
      end

      vim.g.dbs = {
        { name = 'kpt_dev', url = psql 'key_point_tracker_dev' },
        { name = 'kpt_test', url = psql 'key_point_tracker_test' },
        { name = 'ptime_int', url = psql 'pitc_ptime_int' },
      }
    end,
  },
}
