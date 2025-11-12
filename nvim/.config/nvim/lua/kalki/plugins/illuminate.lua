return {
	"RRethy/vim-illuminate",
	event = { "BufReadPost", "BufNewFile" },
	config = function()
		require("illuminate").configure({
			providers = {
				"lsp",
				"treesitter",
				"regex",
			},
			delay = 100,
			filetypes_denylist = {
				"dirbuf",
				"dirvish",
				"fugitive",
				"NvimTree",
				"aerial",
			},
			under_cursor = true,
			large_file_cutoff = 2000,
			large_file_overrides = nil,
			min_count_to_highlight = 1,
		})

		-- Keymaps for jumping to references
		vim.keymap.set("n", "]]", function()
			require("illuminate").goto_next_reference(false)
		end, { desc = "Next reference" })
		vim.keymap.set("n", "[[", function()
			require("illuminate").goto_prev_reference(false)
		end, { desc = "Previous reference" })
	end,
}
