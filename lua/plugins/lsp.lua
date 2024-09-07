return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        -- "marksman",
        "markdownlint",
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = { virtual_text = { prefix = "icons" }, update_in_insert = true },

      servers = {
        bashls = {},
        jsonls = {},
        html = {},
        emmet_ls = {
          filetypes = {
            "css",
            "eruby",
            "html",
            "javascript",
            "javascriptreact",
            "less",
            "sass",
            "scss",
            "svelte",
            "pug",
            "typescriptreact",
            "vue",
          },
        },
        tailwindcss = {
          -- filetypes_exclude = { "markdown" },
          -- init_options = {
          --   userLanguages = {
          --     elixir = "html-eex",
          --     eelixir = "html-eex",
          --     heex = "html-eex",
          --   },
          -- },
          -- settings = {
          --   tailwindCSS = {
          --     experimental = {
          --       classRegex = {
          --         'class[:]\\s*"([^"]*)"',
          --       },
          --     },
          --   },
          -- },
        },
        -- marksman = {},
        -- gopls = {},
      },
      setup = {
        clangd = function(_, opts)
          opts.capabilities.offsetEncoding = { "utf-16" }
        end,
        emmet_ls = function(_, opts)
          opts.capabilities.textDocument.completion.completionItem.snippetSupport = true
        end,
      },
    },
  },
}
