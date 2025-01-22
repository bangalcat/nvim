local M = {
  {
    "TreyBastian/nvim-jack-in",
    enable = false,
    keys = {
      { "<localleader>rk", "<cmd>Clj<CR>", desc = "Clojure Jack-In" },
      { "<localleader>rl", "<cmd>Lein<CR>", desc = "Clojure Jack-In (Lein)" },
    },
    config = true,
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        clojure = { "clj-kondo" },
      },
    },
  },
}

return M
