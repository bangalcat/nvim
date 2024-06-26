return {
  {
    "lewis6991/gitsigns.nvim",
    keys = {
      { "<leader>ght", ":Gitsigns toggle_current_line_blame<CR>", desc = "Toggle current line blame" },
    },
    opts = {
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
        delay = 1000,
        ignore_whitespace = false,
      },
      current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d %H:%M> - <summary>",

      -- on_attach = function(buffer)
      --   local gs = package.loaded.gitsigns
      --
      --   local function map(mode, l, r, desc)
      --     vim.keymap.set(mode, l, r, { buffer = buffer, desc = desc })
      --   end
      --
      --   -- stylua: ignore start
      --   map("n", "]h", gs.next_hunk, "Next Hunk")
      --   map("n", "[h", gs.prev_hunk, "Prev Hunk")
      --   map({ "n", "v" }, "<leader>ghs", ":Gitsigns stage_hunk<CR>", "Stage Hunk")
      --   map({ "n", "v" }, "<leader>ghr", ":Gitsigns reset_hunk<CR>", "Reset Hunk")
      --   map("n", "<leader>ghS", ":Gitsigns stage_buffer<CR>", "Stage Buffer")
      --   map("n", "<leader>ghu", ":Gitsigns undo_stage_hunk", "Undo Stage Hunk")
      --   map("n", "<leader>ghR", ":Gitsigns reset_buffer<CR>", "Reset Buffer")
      --   map("n", "<leader>ghp", ":Gitsigns preview_hunk<CR>", "Preview Hunk")
      --   map("n", "<leader>ghb", function() gs.blame_line({ full = true }) end, "Blame Line")
      --   map("n", "<leader>ghd", gs.diffthis, "Diff This")
      --   map("n", "<leader>ghD", function() gs.diffthis("~") end, "Diff This ~")
      --   map("n", "<leader>ght", ":Gitsigns toggle_current_line_blame<CR>", "Toggle current line blame" )
      --   map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>", "GitSigns Select Hunk")
      -- end,
    },
    {
      "almo7aya/openingh.nvim",
      keys = {
        { "gko", "<cmd>OpenInGHRepo<CR>", desc = "Open Github Repo" },
        { "gkf", "<cmd>OpenInGHFile<CR>", desc = "Open current File in Github" },
        { "gkl", "<cmd>OpenInGHFileLines<CR>", desc = "Open current Line in Github" },
      },
    },
  },
}
