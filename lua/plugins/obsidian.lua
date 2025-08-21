return {
  "obsidian-nvim/obsidian.nvim",
  version = "*",
  ft = "markdown",
  lazy = true,
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

    completion = {
      nvim_cmp = false,

      blink = true,

      min_chars = 2,
    },

    callbacks = {
      enter_note = function(_, note)
        vim.keymap.set("n", "gf", "<cmd>Obsidian follow_link<cr>", {
          buffer = note.bufnr,
          desc = "Obsidian follow link",
        })

        vim.keymap.set("n", "fn", "<cmd>Obsidian new_from_templates<cr>", {
          buffer = note.bufnr,
          desc = "Obsidian New From Templates",
        })
      end,
    },
    note_id_func = function(title)
      return title
    end,

    picker = {
      name = "snacks.pick",

      note_mappings = {
        -- Create a new note from your query.
        new = "<C-x>",
        -- Insert a link to the selected note.
        insert_link = "<C-l>",
      },
      tag_mappings = {
        -- Add tag(s) to current note.
        tag_note = "<C-x>",
        -- Insert a tag at the current location.
        insert_tag = "<C-l>",
      },
    },
  },
}
