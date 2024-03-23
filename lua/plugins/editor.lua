return {
  -- add folding range to capabilities
  {
    "neovim/nvim-lspconfig",
    opts = {
      capabilities = {
        textDocument = {
          foldingRange = {
            dynamicRegistration = false,
            lineFoldingOnly = true,
          },
        },
      },
    },
  },

  -- advanced switch plugin
  {
    "AndrewRadev/switch.vim",
    enabled = false,
    event = { "BufReadPost" },
    keys = {
      { "<M-c>", "<cmd>Switch<CR>", desc = "Switch" },
    },
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
}
