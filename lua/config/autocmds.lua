-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd({ "BufLeave", "FocusLost" }, {
  callback = function()
    if vim.bo.modified and not vim.bo.readonly and vim.fn.expand("%") ~= "" and vim.bo.buftype == "" then
      vim.api.nvim_command("silent update")
    end
  end,
})
-- formatter setup
-- currently, it is only for markdown files.
-- if 'null-ls' is removed, then add more setup.
vim.api.nvim_create_augroup("FormatAutogroup", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = ".md",
  group = "FormatAutogroup",
  command = "FormatWrite",
})
