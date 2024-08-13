return {
  {
    "mpas/marp-nvim",
    keys = {
      { "<Leader>MT", "<cmd>MarpToggle<cr>", noremap = true, silent = true, desc = "Toggle Marp" },
      { "<Leader>MS", "<cmd>MarpStatus<cr>", noremap = true, silent = true, desc = "Marp Status" },
    },
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters = {
        markdownlint = {
          args = { "--disable", "MD025", "--" },
        },
      },
    },
  },
}
