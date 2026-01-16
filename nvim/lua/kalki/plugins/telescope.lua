return {
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		event = "VeryLazy",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",
			},
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			local telescope = require("telescope")
			local actions = require("telescope.actions")
			local builtin = require("telescope.builtin")

			telescope.setup({
				defaults = {
					prompt_prefix = "   ",
					selection_caret = " ",
					path_display = { "smart" },

					layout_strategy = "horizontal",
					layout_config = {
						horizontal = {
							preview_width = 0.55,
						},
						width = 0.9,
						height = 0.85,
					},

					sorting_strategy = "ascending",
					winblend = 0,

					mappings = {
						i = {
							["<C-j>"] = actions.move_selection_next,
							["<C-k>"] = actions.move_selection_previous,
							["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
							["<Esc>"] = actions.close,
						},
						n = {
							["q"] = actions.close,
						},
					},
				},

				pickers = {
					find_files = {
						hidden = true, -- show dotfiles
					},
				},

				extensions = {
					fzf = {
						fuzzy = true,
						override_generic_sorter = true,
						override_file_sorter = true,
						case_mode = "smart_case",
					},
				},
			})

			telescope.load_extension("fzf")

			-- keymaps (builtin is preferred)
			local keymap = vim.keymap.set

			keymap("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
			keymap("n", "<leader>fr", builtin.oldfiles, { desc = "Recent files" })
			keymap("n", "<leader>fs", builtin.live_grep, { desc = "Live grep" })
			keymap("n", "<leader>fc", builtin.grep_string, { desc = "Grep word under cursor" })
			keymap("n", "<leader>fb", builtin.buffers, { desc = "Find buffers" })
			keymap("n", "<leader>fh", builtin.help_tags, { desc = "Help tags" })
		end,
	},
}
