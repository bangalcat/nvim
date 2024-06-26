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
    enabled = false,
    event = { "BufReadPre", "BufNewFile" },
    ft = { "elixir", "heex", "eex" },
    config = function()
      local elixir = require("elixir")
      local elixirls = require("elixir.elixirls")

      elixir.setup({
        nextls = { enable = false },
        credo = { enable = false },
        elixirls = {
          enable = true,
          tag = "v0.20.0",
          settings = elixirls.settings({
            dialyzerEnabled = true,
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
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        lexical = {
          mason = false,
          cmd = { os.getenv("HOME") .. "/workspace/utils/lexical/bin/start_lexical.sh" },
          -- cmd = { os.getenv("HOME") .. "/workspace/lexical/_build/dev/package/lexical/bin/start_lexical.sh" },
          settings = {},
        },
      },
    },
    seutp = {
      -- lexical = function(_, opts)
      --   opts.flags = {
      --     debounce_text_changes = 150,
      --     allow_incremental_sync = false,
      --   }
      -- end,
    },
  },
  {

    "jfpedroza/neotest-elixir",
  },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "jfpedroza/neotest-elixir",
    },
    opts = {
      adapters = {
        ["neotest-elixir"] = {},
      },
    },
  },
}
