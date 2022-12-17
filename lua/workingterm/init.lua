local M = {}

M.open = function()
  local cwd = vim.fn.getcwd()
  vim.api.nvim_command("tabnew | terminal")
  local command = ':call jobsend(b:terminal_job_id, "cd ' .. cwd .. '\\n")'
  vim.api.nvim_command(command)
end

return M
