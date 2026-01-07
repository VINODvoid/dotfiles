-- ===================================================================
-- Navbuddy - Keyboard-centric Breadcrumb Navigation
-- Navigate through code symbols with keyboard shortcuts
-- ===================================================================

return {
  "SmiteshP/nvim-navbuddy",
  dependencies = {
    "SmiteshP/nvim-navic",
    "MunifTanjim/nui.nvim",
  },
  keys = {
    { "<leader>nb", "<cmd>Navbuddy<cr>", desc = "Nav Buddy" },
  },
  config = function()
    local navbuddy = require("nvim-navbuddy")
    local actions = require("nvim-navbuddy.actions")

    navbuddy.setup({
      window = {
        border = "rounded",
        size = "60%",
        position = "50%",
        scrolloff = nil,
        sections = {
          left = {
            size = "20%",
            border = nil,
          },
          mid = {
            size = "40%",
            border = nil,
          },
          right = {
            border = nil,
            preview = "leaf",
          },
        },
      },
      node_markers = {
        enabled = true,
        icons = {
          leaf = "  ",
          leaf_selected = " → ",
          branch = " ",
        },
      },
      icons = {
        File = "󰈔 ",
        Module = "󰆧 ",
        Namespace = "󰅪 ",
        Package = "󰏗 ",
        Class = "𝓒 ",
        Method = "ƒ ",
        Property = " ",
        Field = "󰆨 ",
        Constructor = " ",
        Enum = "ℰ ",
        Interface = "󰜰 ",
        Function = " ",
        Variable = " ",
        Constant = " ",
        String = "𝓐 ",
        Number = "# ",
        Boolean = "⊨ ",
        Array = "󰅪 ",
        Object = "⦿ ",
        Key = "🔐 ",
        Null = "NULL ",
        EnumMember = " ",
        Struct = "𝓢 ",
        Event = "🗲 ",
        Operator = "+ ",
        TypeParameter = "𝙏 ",
      },
      use_default_mappings = true,
      mappings = {
        ["<esc>"] = actions.close(),
        ["q"] = actions.close(),
        ["j"] = actions.next_sibling(),
        ["k"] = actions.previous_sibling(),
        ["h"] = actions.parent(),
        ["l"] = actions.children(),
        ["0"] = actions.root(),
        ["v"] = actions.visual_name(),
        ["V"] = actions.visual_scope(),
        ["y"] = actions.yank_name(),
        ["Y"] = actions.yank_scope(),
        ["i"] = actions.insert_name(),
        ["I"] = actions.insert_scope(),
        ["a"] = actions.append_name(),
        ["A"] = actions.append_scope(),
        ["r"] = actions.rename(),
        ["d"] = actions.delete(),
        ["f"] = actions.fold_create(),
        ["F"] = actions.fold_delete(),
        ["c"] = actions.comment(),
        ["<enter>"] = actions.select(),
        ["o"] = actions.select(),
        ["s"] = actions.split(),
        ["v"] = actions.vsplit(),
        ["t"] = actions.telescope({
          layout_config = {
            height = 0.60,
            width = 0.60,
            prompt_position = "top",
            preview_width = 0.50,
          },
          layout_strategy = "horizontal",
        }),
        ["g?"] = actions.help(),
      },
      lsp = {
        auto_attach = true,
        preference = nil,
      },
      source_buffer = {
        follow_node = true,
        highlight = true,
        reorient = "smart",
        scrolloff = nil,
      },
    })
  end,
}
