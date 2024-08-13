return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {})
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "elixir", "heex", "eex" } },
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
        -- elixirls = {},
      },
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
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = function(_, opts)
      opts.linters_by_ft = {
        elixir = { "credo" },
      }
      opts.linters = {
        credo = {
          condition = function(ctx)
            return vim.fs.find({ ".credo.exs" }, { path = ctx.filename, upward = true })[1]
          end,
        },
      }
    end,
  },
}
