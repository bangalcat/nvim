-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")

vim.keymap.set("x", "<leader>pp", [["_dP]], { desc = "Paste over selection" })
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- vim.keymap.set({ "n" }, "<leader>fs", "<cmd>w<cr><esc>", { desc = "Save file" })

-- my own keymaps
vim.keymap.set("i", "jk", "<Esc>")
-- vim.keymap.set("n", "<Tab>", "")
-- vim.keymap.set("n", "<A-i>", "<C-i>", { noremap = false })
vim.keymap.set("n", "<leader>ght", ":Gitsigns toggle_current_line_blame<CR>", { desc = "Toggle Current Line Blame" })
