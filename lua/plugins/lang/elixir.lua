return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "elixir", "heex", "eex" } },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- expert = {
        --   mason = false,
        --   --   -- cmd = { os.getenv("HOME") .. "/workspace/utils/lexical/bin/start_lexical.sh" },
        --   -- cmd = { os.getenv("HOME") .. "/.local/bin/expert" },
        --   cmd = {
        --     os.getenv("HOME") .. "/workspace/projects/expert/apps/expert/_build/prod/rel/plain/bin/start_expert",
        --   },
        --   --   settings = {},
        --   filetypes = { "elixir", "eelixir", "heex" },
        -- },
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
