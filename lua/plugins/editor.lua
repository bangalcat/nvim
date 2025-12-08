return {
  -- add folding range to capabilities
  {
    "neovim/nvim-lspconfig",
  },
  {
    "keaising/im-select.nvim",
    event = { "BufReadPost" },
    opts = {
      default_command = "/opt/homebrew/bin/im-select",
    },
  },
  {
    "HakonHarnes/img-clip.nvim",
    keys = {
      { "<leader>pi", "<cmd>PasteImage<CR>", desc = "Paste Image" },
    },
  },
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            layout = {
              preview = "main",
            },
          },
        },
        formatters = {
          file = {
            filename_first = true,
            truncate = 80,
          },
        },
      },
    },
  },
}
