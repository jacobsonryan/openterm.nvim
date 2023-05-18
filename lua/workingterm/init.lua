local M = {}

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

M.setup = function(key)
  if(key)
    then
      keymap('t', key.key, [[<C-\><C-n>]], opts)
  end
end

M.tab = function()
  local cwd = vim.fn.getcwd()
  vim.api.nvim_command("tabnew | terminal")
  local command = ':call jobsend(b:terminal_job_id, "cd ' .. cwd .. '\\n")'
  vim.api.nvim_command(command)
end

M.vsplit = function()
  local cwd = vim.fn.getcwd()
  vim.api.nvim_command("vsplit | terminal")
  vim.api.nvim_command("<C-w>w")
  local command = ':call jobsend(b:terminal_job_id, "cd ' .. cwd .. '\\n")'
  vim.api.nvim_command(command)
end
return M
