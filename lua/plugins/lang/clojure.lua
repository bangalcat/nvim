local M = {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        clojure = { "clj-kondo" },
      },
    },
  },
  { "PaterJason/nvim-treesitter-sexp", enabled = false },
  { "julienvincent/nvim-paredit", opts = {}, event = "LazyFile" },
}

return M
