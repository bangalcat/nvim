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
