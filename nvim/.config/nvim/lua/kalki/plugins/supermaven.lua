-- ===================================================================
-- Supermaven AI Assistant
-- Fast AI completion with 1M token context window
-- Alternative to GitHub Copilot
-- ===================================================================

return {
  "supermaven-inc/supermaven-nvim",
  enabled = false, -- Set to true to enable Supermaven (disable Copilot if using this)
  event = "InsertEnter",
  config = function()
    require("supermaven-nvim").setup({
      keymaps = {
        accept_suggestion = "<M-l>",
        clear_suggestion = "<C-]>",
        accept_word = "<M-j>",
      },
      ignore_filetypes = { "markdown", "help", "gitcommit" },
      color = {
        suggestion_color = "#ffffff",
        cterm = 244,
      },
      log_level = "info", -- "off", "error", "warn", "info", "debug", "trace"
      disable_inline_completion = false,
      disable_keymaps = false,
    })
  end,
}
