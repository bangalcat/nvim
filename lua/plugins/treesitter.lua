return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        "tsx",
        "typescript",
        "elixir",
        "eex",
        "heex",
        "markdown",
        "markdown_inline",
        "haskell",
      })
    end,
  },
}
