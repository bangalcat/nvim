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
    dependencies = {
      { "roobert/tailwindcss-colorizer-cmp.nvim", config = true },
    },
    opts = {
      inlay_hints = { enabled = false },
      diagnostics = { virtual_text = { prefix = "icons" } },

      servers = {
        jsonls = {
          -- lazy-load schemastore when needed
          on_new_config = function(new_config)
            new_config.settings.json.schemas = new_config.settings.json.schemas or {}
            vim.list_extend(new_config.settings.json.schemas, require("schemastore").json.schemas())
          end,
          settings = {
            json = {
              format = {
                enable = true,
              },
              validate = { enable = true },
            },
          },
        },
        tsserver = {
          root_dir = function(...)
            return require("lspconfig.util").root_pattern(".git")(...)
          end,
          single_file_support = false,
          settings = {
            typescript = {
              inlayHints = {
                includeInlayParameterNameHints = "literal",
                includeInlayParameterNameHintsWhenArgumentMatchesName = false,
                includeInlayFunctionParameterTypeHints = true,
                includeInlayVariableTypeHints = false,
                includeInlayPropertyDeclarationTypeHints = true,
                includeInlayFunctionLikeReturnTypeHints = true,
                includeInlayEnumMemberValueHints = true,
              },
            },
            javascript = {
              inlayHints = {
                includeInlayParameterNameHints = "all",
                includeInlayParameterNameHintsWhenArgumentMatchesName = false,
                includeInlayFunctionParameterTypeHints = true,
                includeInlayVariableTypeHints = true,
                includeInlayPropertyDeclarationTypeHints = true,
                includeInlayFunctionLikeReturnTypeHints = true,
                includeInlayEnumMemberValueHints = true,
              },
            },
          },
        },
        html = {},
        emmet_ls = {},
        -- marksman = {},
        -- gopls = {},
        tailwindcss = {
          filetypes_exclude = { "markdown" },
          init_options = {
            userLanguages = {
              elixir = "html-eex",
              eelixir = "html-eex",
              heex = "html-eex",
            },
          },
          settings = {
            tailwindCSS = {
              experimental = {
                classRegex = {
                  'class[:]\\s*"([^"]*)"',
                },
              },
            },
          },
        },
        lexical = {
          filetypes = {
            "elixir",
            "eelixir",
            "heex",
          },
          root_dir = function(fname)
            local util = require("lspconfig.util")
            -- return util.find_git_ancestor(fname) or util.root_pattern("mix.exs")(fname) or vim.loop.os_homedir()
            return util.root_pattern("mix.exs", ".git")(fname) or vim.loop.os_homedir()
          end,
          cmd = { "/Users/donghyun/workspace/utils/lexical/bin/start_lexical.sh" },
          -- cmd = { "/Users/donghyun/workspace/lexical/_build/dev/package/lexical/bin/start_lexical.sh" },
          settings = {},
        },
      },
      setup = {
        tailwindcss = function(_, opts)
          local tw = require("lspconfig.server_configurations.tailwindcss")
          --- @param ft string
          opts.filetypes = vim.tbl_filter(function(ft)
            return not vim.tbl_contains(opts.filetypes_exclude or {}, ft)
          end, tw.default_config.filetypes)
        end,
        clangd = function(_, opts)
          opts.capabilities.offsetEncoding = { "utf-16" }
        end,
        emmet_ls = function(_, opts)
          opts.capabilities.textDocument.completion.completionItem.snippetSupport = true
          opts.filetypes = {
            "css",
            "eruby",
            "html",
            "heex",
            "javascript",
            "javascriptreact",
            "less",
            "sass",
            "scss",
            "svelte",
            "pug",
            "typescriptreact",
            "vue",
          }
        end,
      },
    },
  },

  -- nvim-lint
  {
    "mfussenegger/nvim-lint",
    event = { "BufReadPost", "BufNewFile" },
    config = function(_, _)
      local lt = require("lint")
      lt.linters_by_ft = {
        markdown = { "markdownlint" },
        telekasten = { "markdownlint" },
      }
      vim.api.nvim_create_autocmd({ "BufWritePost" }, {
        callback = function()
          require("lint").try_lint()
        end,
      })
    end,
  },
  {
    "nvimtools/none-ls.nvim",
    enabled = false,
  },
}
