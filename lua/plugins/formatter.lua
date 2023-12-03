-- This is temporary setup.
-- When the 'null-ls' plugin is removed, then add more details.

return {
  {
    "mhartington/formatter.nvim",
    enabled = false,
    cmd = { "FormatWrite" },
    event = { "BufReadPre", "BufNewFile" },
    keys = {
      { "<leader>bf", "<cmd>Format<CR>", mode = "n", silent = true },
    },
    config = function()
      local util = require("formatter.util")

      local markdown_format = function()
        return {
          exe = "mdformat",
          args = {
            util.escape_path(util.get_current_buffer_file_path()),
            "--",
            "-",
          },
          stdin = true,
        }
      end

      require("formatter").setup({
        -- Enable or disable logging
        logging = true,
        -- Set the log level
        log_level = vim.log.levels.WARN,
        -- All formatter configurations are opt-in
        filetype = {
          -- Formatter configurations for filetype "lua" go here
          -- and will be executed in order
          elixir = { require("formatter.filetypes.elixir").mixformat },
          lua = { require("formatter.filetypes.lua").stylua },
          -- markdown = { markdown_format },
          -- telekasten = { markdown_format },

          -- Use the special "*" filetype for defining formatter configurations on
          -- any filetype
          ["*"] = {
            -- "formatter.filetypes.any" defines default configurations for any
            -- filetype
            -- require("formatter.filetypes.any").remove_trailing_whitespace,
          },
        },
      })

      -- formatter setup
      vim.api.nvim_create_augroup("FormatAutogroup", { clear = true })
      vim.api.nvim_create_autocmd("BufWritePost", {
        -- pattern = ".md",
        group = "FormatAutogroup",
        command = "FormatWrite",
      })
    end,
  },
}
