return {
  {
    "telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "debugloop/telescope-undo.nvim",
    },
    keys = {
      {
        "<leader>fP",
        function()
          require("telescope.builtin").find_files({
            cwd = require("lazy.core.config").options.root,
          })
        end,
        desc = "Find Plugin File",
      },
      { "<leader>fu", "<cmd>Telescope undo<cr>" },
    },
    config = function()
      require("telescope").setup({
        defaults = {
          layout_config = {
          }
        },
        extensions = {
          undo = {
            side_by_side = true,
            layout_strategy = "vertical",
            layout_config = {
              preview_height = 0.8,
            },
          },
          media_files = {
          }
        },
      })
      require("telescope").load_extension("undo")
      require("telescope").load_extension("media_files")
    end,
  },
  {
    "nvim-telescope/telescope-media-files.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
  },
}
