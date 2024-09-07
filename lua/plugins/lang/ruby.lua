-- textDocument/diagnostic support until 0.10.0 is released
return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "zidhuss/neotest-minitest",
    },
    opts = {
      adapters = {
        ["neotest-minitest"] = {
          test_cmd = function()
            return vim.iter({ "bin/rails", "test" }):flatten():totable()
          end,
        },
      },
    },
  },
  {
    "mfussenegger/nvim-dap",
    optional = true,
    dependencies = {
      "suketa/nvim-dap-ruby",
      config = function()
        require("dap-ruby").setup()
      end,
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- solargraph = {
        --   init_options = { format = false, diagnostics = false, autoformat = false, formatting = false },
        -- },
        ruby_lsp = {
          mason = false,
          cmd = { os.getenv("HOME") .. "/.local/share/asdf/shims/ruby-lsp" },
          -- on_attach = function(client, buffer)
          --   setup_diagnostics(client, buffer)
          --   add_ruby_deps_command(client, buffer)
          -- end,
        },
      },
    },
  },
  {
    "weizheheng/ror.nvim",
    keys = {
      { "<leader>rc", ":lua require('ror.commands').list_commands()<CR>", desc = "Table of Content Toggle" },
    },
    opts = {
      test = {
        message = {
          -- These are the default title for nvim-notify
          file = "Running test file...",
          line = "Running single test...",
        },
        coverage = {
          -- To customize replace with the hex color you want for the highlight
          -- guibg=#354a39
          up = "DiffAdd",
          -- guibg=#4a3536
          down = "DiffDelete",
        },
        notification = {
          -- Using timeout false will replace the progress notification window
          -- Otherwise, the progress and the result will be a different notification window
          timeout = false,
        },
        pass_icon = "✅",
        fail_icon = "❌",
      },
    },
  },
}
