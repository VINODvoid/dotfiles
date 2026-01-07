return {
  "gorbit99/codewindow.nvim",
  event = "VeryLazy",
  keys = {
    { "<leader>mm", "<cmd>lua require('codewindow').toggle_minimap()<CR>", desc = "Toggle minimap" },
  },
  config = function()
    local codewindow = require("codewindow")
    codewindow.setup({
      auto_enable = false,
      minimap_width = 15,
      width_multiplier = 4,
      use_lsp = true,
      use_treesitter = true,
      use_git = true,
      exclude_filetypes = {
        "help",
        "alpha",
        "dashboard",
        "neo-tree",
        "NvimTree",
        "Trouble",
        "lazy",
        "mason",
        "notify",
        "toggleterm",
        "lazyterm",
      },
      max_minimap_height = nil,
      max_lines = nil,
      z_index = 1,
      show_cursor = true,
      screen_bounds = "lines",
      window_border = "none",
    })
  end,
}
