# My Neovim Config

A [LazyVim](https://www.lazyvim.org/) based configuration managed with [lazy.nvim](https://github.com/folke/lazy.nvim).

## Plugins

### Core

- [LazyVim](https://www.lazyvim.org/) Neovim config for the lazy
- [lazy.nvim](https://github.com/folke/lazy.nvim) A modern plugin manager for Neovim
- [snacks.nvim](https://github.com/folke/snacks.nvim) Explorer, picker, dashboard, terminal, and more

### Coding

- [blink.cmp](https://github.com/Saghen/blink.cmp) Completion engine
  - [blink-copilot](https://github.com/giuxtaposition/blink-copilot) Copilot source for blink.cmp
- [mini.snippets](https://github.com/echasnovski/mini.snippets) Snippet engine
  - [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) Preconfigured snippets for different languages
- [mini.surround](https://github.com/echasnovski/mini.surround) Surround actions
- [mini.ai](https://github.com/echasnovski/mini.ai) Extended text objects
- [mini.pairs](https://github.com/echasnovski/mini.pairs) Auto pairs
- [yanky.nvim](https://github.com/gbprod/yanky.nvim) Improved yank and put
- [neogen](https://github.com/danymat/neogen) Annotation generator
- [ts-comments.nvim](https://github.com/folke/ts-comments.nvim) Treesitter-based commenting
- [nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag) Auto close/rename HTML tags

### Editor

- [mini.files](https://github.com/echasnovski/mini.files) File explorer
- [mini.move](https://github.com/echasnovski/mini.move) Move lines and selections
- [flash.nvim](https://github.com/folke/flash.nvim) Navigate code with search labels
- [grug-far.nvim](https://github.com/MagicDuck/grug-far.nvim) Find and replace
- [harpoon](https://github.com/ThePrimeagen/harpoon/tree/harpoon2) Quick file navigation
- [im-select.nvim](https://github.com/keaising/im-select.nvim) Auto-switch input method based on edit mode
- [img-clip.nvim](https://github.com/HakonHarnes/img-clip.nvim) Paste images from clipboard
- [dial.nvim](https://github.com/monaqa/dial.nvim) Enhanced increment/decrement
- [inc-rename.nvim](https://github.com/smjonas/inc-rename.nvim) Incremental LSP rename
- [overseer.nvim](https://github.com/stevearc/overseer.nvim) Task runner
- [hardtime.nvim](https://github.com/m4xshen/hardtime.nvim) Break bad Vim habits
- [trouble.nvim](https://github.com/folke/trouble.nvim) Pretty diagnostics and references
- [which-key.nvim](https://github.com/folke/which-key.nvim) Keybinding popup
- [todo-comments.nvim](https://github.com/folke/todo-comments.nvim) Highlight and search TODO comments
- [project.nvim](https://github.com/ahmedkhalf/project.nvim) Project management

### UI

- [catppuccin](https://github.com/catppuccin/nvim) Active colorscheme (mocha)
- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) Alternative theme (moon)
- [noice.nvim](https://github.com/folke/noice.nvim) Replaces UI for messages, cmdline, and popupmenu
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) Buffer line
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) Status line
- [rainbow-delimiters.nvim](https://github.com/HiPhish/rainbow-delimiters.nvim) Rainbow brackets
- [nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua) Color tag highlighter
- [mini.hipatterns](https://github.com/echasnovski/mini.hipatterns) Highlight patterns
- [mini.icons](https://github.com/echasnovski/mini.icons) Icon provider
- [render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim) Rendered markdown in-buffer
- [nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context) Sticky function/class context

### LSP & Languages

- [mason.nvim](https://github.com/williamboman/mason.nvim) LSP/DAP/linter/formatter package manager
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) LSP configurations
- [lazydev.nvim](https://github.com/folke/lazydev.nvim) Neovim Lua development
- [conform.nvim](https://github.com/stevearc/conform.nvim) Formatter (shfmt, biome, prettier)
- [nvim-lint](https://github.com/mfussenegger/nvim-lint) Linter integration
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) Treesitter configurations
- [neotest](https://github.com/nvim-neotest/neotest) Test runner framework
  - [neotest-elixir](https://github.com/jfpedroza/neotest-elixir)
  - [neotest-jest](https://github.com/nvim-neotest/neotest-jest) (uses `pnpm test`)
  - [neotest-python](https://github.com/nvim-neotest/neotest-python)
  - [neotest-rspec](https://github.com/olimorris/neotest-rspec)
- Custom `expert` LSP for Elixir (non-Mason binary)
- [nvim-paredit](https://github.com/julienvincent/nvim-paredit) Structural editing for Clojure
- [nvim-jdtls](https://github.com/mfussenegger/nvim-jdtls) Java LSP

### AI

- [copilot.lua](https://github.com/zbirenbaum/copilot.lua) GitHub Copilot
- [CopilotChat.nvim](https://github.com/CopilotC-Nvim/CopilotChat.nvim) Copilot Chat
- [claudecode.nvim](https://github.com/coder/claudecode.nvim) Claude Code integration

### Git

- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) Git decorations and inline blame
- [openingh.nvim](https://github.com/almo7aya/openingh.nvim) Open files/repos in GitHub

### Tools

- [vim-dadbod](https://github.com/tpope/vim-dadbod) Database interface
  - [vim-dadbod-ui](https://github.com/kristijanhusak/vim-dadbod-ui)
  - [vim-dadbod-completion](https://github.com/kristijanhusak/vim-dadbod-completion)
- [obsidian.nvim](https://github.com/obsidian-nvim/obsidian.nvim) Obsidian vault integration
- [nvim-sops](https://github.com/lucidph3nx/nvim-sops) SOPS encrypt/decrypt
- [kulala.nvim](https://github.com/mistweaverco/kulala.nvim) REST client
- [chezmoi.nvim](https://github.com/xvzc/chezmoi.nvim) Chezmoi integration
- [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim) Markdown preview in browser

### Debug

- [nvim-dap](https://github.com/mfussenegger/nvim-dap) Debug Adapter Protocol
  - [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
  - [nvim-dap-virtual-text](https://github.com/theHamsta/nvim-dap-virtual-text)
  - [nvim-dap-python](https://github.com/mfussenegger/nvim-dap-python)
  - [nvim-dap-ruby](https://github.com/suketa/nvim-dap-ruby)

### Helpers

- [plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [nui.nvim](https://github.com/MunifTanjim/nui.nvim) UI component library
- [persistence.nvim](https://github.com/folke/persistence.nvim) Session management
