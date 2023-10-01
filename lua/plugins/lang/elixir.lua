return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "nextls",
      })
    end,
  },
  {
    "elixir-tools/elixir-tools.nvim",
    event = { "BufReadPre", "BufNewFile" },
    ft = { "elixir", "heex", "eex" },
    config = function()
      local elixir = require("elixir")
      local elixirls = require("elixir.elixirls")

      elixir.setup({
        nextls = { enable = false },
        credo = { enable = true },
        elixirls = {
          enable = true,
          settings = elixirls.settings({
            dialyzerEnabled = false,
            enableTestLenses = true,
          }),
          on_attach = function()
            vim.keymap.set("n", "<space>hca", vim.lsp.codelens.run, { desc = "run codelens" })
            vim.keymap.set("n", "<leader>csp", "<cmd>ElixirFromPipe<cr>", { buffer = true, noremap = true })
            vim.keymap.set("n", "<leader>csf", "<cmd>ElixirToPipe<cr>", { buffer = true, noremap = true })
            vim.keymap.set("v", "<leader>cse", "<cmd>ElixirExpandMacro<cr>", { buffer = true, noremap = true })
          end,
        },
      })
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
}
