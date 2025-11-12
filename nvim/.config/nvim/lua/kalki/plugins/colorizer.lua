return {
	"NvChad/nvim-colorizer.lua",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("colorizer").setup({
			filetypes = { "*" },
			user_default_options = {
				RGB = true, -- #RGB hex codes
				RRGGBB = true, -- #RRGGBB hex codes
				names = true, -- "Name" codes like Blue or red
				RRGGBBAA = true, -- #RRGGBBAA hex codes
				AARRGGBB = true, -- 0xAARRGGBB hex codes
				rgb_fn = true, -- CSS rgb() and rgba() functions
				hsl_fn = true, -- CSS hsl() and hsla() functions
				css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
				css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
				mode = "background", -- Set the display mode (foreground/background/virtualtext)
				tailwind = true, -- Enable tailwind colors
				sass = { enable = true, parsers = { "css" } },
				virtualtext = "■",
				always_update = false,
			},
			buftypes = {},
		})

		-- Toggle colorizer
		vim.keymap.set("n", "<leader>ct", "<cmd>ColorizerToggle<CR>", { desc = "Toggle colorizer" })
	end,
}
