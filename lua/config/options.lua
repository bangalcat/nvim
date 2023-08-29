-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.mapleader = " "

local opts = {
  ai = true,
  autoindent = true,
  foldenable = false,
  spelllang = "en,cjk",
  undodir = os.getenv("HOME") .. "/.vim/undodir",
  undofile = true, -- enable persistent undo
  undolevels = 10000,
}

if vim.g.neovide then
  vim.opt.guifont = { "FiraCode Nerd Font Mono", "h9" }
  vim.g.neovide_scale_factor = 0.3
end

vim.filetype.add({
  extension = {
    livemd = "markdown",
  },
})

for k, v in pairs(opts) do
  vim.opt[k] = v
end
