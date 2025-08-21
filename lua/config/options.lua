-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.mapleader = " "

vim.g.maplocalleader = ","

local opts = {
  ai = true,
  autoindent = true,
  relativenumber = false,
  spelllang = "en,cjk",
  undodir = os.getenv("HOME") .. "/.vim/undodir",
  undofile = true, -- enable persistent undo
  undolevels = 10000,
}

if vim.g.neovide then
  vim.opt.guifont = { "FiraCode D2CodingLigature Nerd", "h9" }
  vim.g.neovide_scale_factor = 0.3
end

vim.filetype.add({
  extension = {
    livemd = "markdown",
  },
})

vim.g.copilot_file_types = { yaml = true, yml = true }

for k, v in pairs(opts) do
  vim.opt[k] = v
end

vim.g.snacks_animate = false

vim.g.root_spec = { { "mix.exs", "elixir" }, "lsp", { ".git", "lua" }, "cwd" }

vim.env.PATH = vim.env.HOME .. "/.local/share/mise/shims:" .. vim.env.PATH
