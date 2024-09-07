return {
  {
    "mpas/marp-nvim",
    keys = {
      { "<leader>MT", "<cmd>MarpToggle<cr>", noremap = true, silent = true, desc = "Toggle Marp" },
      { "<leader>MS", "<cmd>MarpStatus<cr>", noremap = true, silent = true, desc = "Marp Status" },
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
