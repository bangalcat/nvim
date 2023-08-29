return {
  {
    "mrcjkb/haskell-tools.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim", -- optional
    },
    branch = "2.x.x", -- recommended
    ft = { "haskell", "lhaskell", "cabal", "cabalproject" },
    init = function() end,
    config = function(_, opts)
      local ht = require("haskell-tools")
      local bufnr = vim.api.nvim_get_current_buf()
      local def_opts = { noremap = true, silent = true, buffer = bufnr }
      -- haskell-language-server relies heavily on codeLenses,
      -- so auto-refresh (see advanced configuration) is enabled by default
      vim.keymap.set(
        "n",
        "<space>hca",
        vim.lsp.codelens.run,
        vim.tbl_extend("force", def_opts, { desc = "run codelens" })
      )
      -- Hoogle search for the type signature of the definition under the cursor
      vim.keymap.set(
        "n",
        "<space>hs",
        ht.hoogle.hoogle_signature,
        vim.tbl_extend("force", def_opts, { desc = "hoogle signature" })
      )
      -- Evaluate all code snippets
      vim.keymap.set(
        "n",
        "<space>hea",
        ht.lsp.buf_eval_all,
        vim.tbl_extend("force", def_opts, { desc = "eval all code snippets" })
      )
      -- Toggle a GHCi repl for the current package
      vim.keymap.set(
        "n",
        "<leader>rr",
        ht.repl.toggle,
        vim.tbl_extend("force", def_opts, { desc = "toggle repl for current package" })
      )
      -- Toggle a GHCi repl for the current buffer
      vim.keymap.set("n", "<leader>hrf", function()
        ht.repl.toggle(vim.api.nvim_buf_get_name(0))
      end, vim.tbl_extend("force", def_opts, { desc = "toggle repl for current buffer" }))
      vim.keymap.set("n", "<leader>hrq", ht.repl.quit, vim.tbl_extend("force", def_opts, { desc = "quit repl" }))

      -- Detect nvim-dap launch configurations
      -- (requires nvim-dap and haskell-debug-adapter)
      -- ht.dap.discover_configurations(bufnr)
    end,
  },
}
