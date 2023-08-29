return {
  {
    "preservim/vim-markdown",
    branch = "master",
    dependencies = { "godlygeek/tabular" },
    ft = { "markdown", "telekasten" },
    keys = {
      { "<leader>mt", "<cmd>Toc<CR>", { desc = "Table of Content Toggle" } },
    },
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown", "telekasten" },
    build = "cd app && npm install",
    keys = {
      { "<leader>mp", "<cmd>MarkdownPreview<CR>", { desc = "MarkdownPreview" } },
    },
  },
}
