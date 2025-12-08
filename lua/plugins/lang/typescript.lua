return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/neotest-jest",
    },
    opts = {
      adapters = {
        ["neotest-jest"] = {
          -- This is the key setting for pnpm
          jestCommand = "pnpm test --",
          env = { CI = true },
          cwd = function(path)
            return vim.fn.getcwd()
          end,
        },
      },
    },
  },
}
