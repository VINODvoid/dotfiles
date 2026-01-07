-- ===================================================================
-- Inc-rename - Incremental LSP Rename
-- Live preview of LSP rename with incremental updates
-- VSCode-like rename experience
-- ===================================================================

return {
  "smjonas/inc-rename.nvim",
  cmd = "IncRename",
  keys = {
    {
      "<leader>rn",
      function()
        return ":IncRename " .. vim.fn.expand("<cword>")
      end,
      expr = true,
      desc = "Incremental rename",
    },
  },
  config = function()
    require("inc_rename").setup({
      cmd_name = "IncRename",
      hl_group = "Substitute",
      preview_empty_name = false,
      show_message = true,
      input_buffer_type = nil,
      post_hook = nil,
    })
  end,
}
