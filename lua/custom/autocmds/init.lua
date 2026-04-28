-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

local vim = vim
local api = vim.api
local M = {}
-- function to create a list of commands and convert them to autocommands
-------- This function is taken from https://github.com/norcalli/nvim_utils
function M.nvim_create_augroups(definitions)
  for group_name, definition in pairs(definitions) do
    api.nvim_command('augroup ' .. group_name)
    api.nvim_command 'autocmd!'
    for _, def in ipairs(definition) do
      local command = table.concat(vim.tbl_flatten { 'autocmd', def }, ' ')
      api.nvim_command(command)
    end
    api.nvim_command 'augroup END'
  end
end

local autoCommands = {
  -- other autocommands
  open_folds = {
    { 'BufReadPost,FileReadPost', '*', 'normal zR' },
  },
}

M.nvim_create_augroups(autoCommands)

-- Fix trailing whitespace on save
vim.api.nvim_create_autocmd({ 'BufWritePre' }, {
  pattern = { '*' },
  callback = function()
    local save_cursor = vim.fn.getpos '.'
    vim.cmd [[%s/\s\+$//e]]
    vim.fn.setpos('.', save_cursor)
  end,
})
