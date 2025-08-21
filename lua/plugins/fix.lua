-- this file is used to fix some plugins that are not compatible with current lazyvim or neovim version
return {
  -- this is for fix captpuccin.nvim not working with bufferline.nvim
  {
    "akinsho/bufferline.nvim",
    init = function()
      local bufline = require("catppuccin.groups.integrations.bufferline")
      function bufline.get()
        return bufline.get_theme()
      end
    end,
  },
  -- this is for rollback mason.nvim and mason-lspconfig.nvim breaking changes from v2
  { "mason-org/mason.nvim", version = "1.11.0" },
  { "mason-org/mason-lspconfig.nvim", version = "1.32.0" },
}
