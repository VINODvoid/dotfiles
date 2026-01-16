return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPre", "BufNewFile" },

    dependencies = {
      "windwp/nvim-ts-autotag",
      "JoosepAlviste/nvim-ts-context-commentstring",
    },

    -- ✅ Lazy-safe configuration
    opts = {
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },

      indent = {
        enable = true,
      },

      autotag = {
        enable = true,
      },

      ensure_installed = {
        "json",
        "javascript",
        "typescript",
        "tsx",
        "yaml",
        "html",
        "css",
        "prisma",
        "markdown",
        "markdown_inline",
        "svelte",
        "graphql",
        "bash",
        "lua",
        "vim",
        "dockerfile",
        "gitignore",
        "query",
        "vimdoc",
        "c",
        "cpp",
        "python",
        "go",
        "rust",
        "toml",
        "sql",
        "regex",
        "jsdoc",
      },

      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          node_decremental = "<bs>",
        },
      },
    },

    -- ✅ Runs ONLY after plugin is loaded
    config = function(_, opts)
      local status_ok, treesitter = pcall(require, "nvim-treesitter.configs")
      if not status_ok then
        return
      end
      treesitter.setup(opts)
    end,
  },
}

