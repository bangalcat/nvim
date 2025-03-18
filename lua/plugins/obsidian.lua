return {
  "epwalsh/obsidian.nvim",
  version = "*",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  event = {
    -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
    -- refer to `:h file-pattern` for more examples
    "BufReadPre "
      .. vim.fn.expand("~")
      .. "/personal/second_brain/*.md",
    "BufNewFile " .. vim.fn.expand("~") .. "/personal/second_brain/*.md",
  },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "personal",
        path = vim.fn.expand("~") .. "/personal/second_brain",
      },
    },
    daily_notes = {
      folder = "Dated Notes/Notes/daily",
      template = "obsidian_templates/daily_note.md",
    },
    new_notes_location = "current_dir",

    templates = {
      folder = "obsidian_templates",
    },

    mappings = {
      ["gd"] = {
        action = function()
          return require("obsidian").util.gf_passthrough()
        end,
        opts = { noremap = false, expr = true, buffer = true },
      },
      -- Toggle check-boxes.
      ["<leader>ch"] = {
        action = function()
          return require("obsidian").util.toggle_checkbox()
        end,
        opts = { buffer = true },
      },
    },

    note_id_func = function(title)
      return title
    end,

    picker = {
      name = "telescope.nvim",
    },
  },
}
