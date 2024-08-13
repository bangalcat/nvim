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
        jsonls = {
          -- lazy-load schemastore when needed
          -- on_new_config = function(new_config)
          --   new_config.settings.json.schemas = new_config.settings.json.schemas or {}
          --   vim.list_extend(new_config.settings.json.schemas, require("schemastore").json.schemas())
          -- end,
          -- settings = {
          --   json = {
          --     format = {
          --       enable = true,
          --     },
          --     validate = { enable = true },
          --   },
          -- },
        },
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
