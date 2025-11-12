return {
	"sindrets/diffview.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles", "DiffviewFileHistory" },
	config = function()
		require("diffview").setup({
			diff_binaries = false,
			enhanced_diff_hl = false,
			git_cmd = { "git" },
			use_icons = true,
			show_help_hints = true,
			watch_index = true,
			icons = {
				folder_closed = "",
				folder_open = "",
			},
			signs = {
				fold_closed = "",
				fold_open = "",
				done = "✓",
			},
			view = {
				default = {
					layout = "diff2_horizontal",
					winbar_info = false,
				},
				merge_tool = {
					layout = "diff3_horizontal",
					disable_diagnostics = true,
					winbar_info = true,
				},
				file_history = {
					layout = "diff2_horizontal",
					winbar_info = false,
				},
			},
			file_panel = {
				listing_style = "tree",
				tree_options = {
					flatten_dirs = true,
					folder_statuses = "only_folded",
				},
				win_config = {
					position = "left",
					width = 35,
					win_opts = {},
				},
			},
			file_history_panel = {
				log_options = {
					git = {
						single_file = {
							diff_merges = "combined",
						},
						multi_file = {
							diff_merges = "first-parent",
						},
					},
				},
				win_config = {
					position = "bottom",
					height = 16,
					win_opts = {},
				},
			},
			commit_log_panel = {
				win_config = {
					win_opts = {},
				},
			},
			default_args = {
				DiffviewOpen = {},
				DiffviewFileHistory = {},
			},
			hooks = {},
			keymaps = {
				disable_defaults = false,
				view = {
					{ "n", "<tab>", false },
					{ "n", "<s-tab>", false },
					{ "n", "gf", false },
					{ "n", "<C-w><C-f>", false },
					{ "n", "<C-w>gf", false },
					["<leader>e"] = false,
					["<leader>b"] = false,
					["<leader>co"] = false,
					["<leader>ct"] = false,
					["<leader>cb"] = false,
					["<leader>ca"] = false,
					["dx"] = false,
					["<leader>cO"] = false,
					["<leader>cT"] = false,
					["<leader>cB"] = false,
					["<leader>cA"] = false,
					["dX"] = false,
				},
				diff1 = {},
				diff2 = {},
				diff3 = {},
				diff4 = {},
				file_panel = {
					{ "n", "j", false },
					{ "n", "k", false },
					{ "n", "<cr>", false },
					{ "n", "o", false },
					{ "n", "<2-LeftMouse>", false },
					{ "n", "-", false },
					{ "n", "<tab>", false },
					{ "n", "i", false },
					{ "n", "f", false },
					{ "n", "R", false },
					{ "n", "L", false },
					{ "n", "gf", false },
					{ "n", "<C-w><C-f>", false },
					{ "n", "<C-w>gf", false },
					["<leader>e"] = false,
					["<leader>b"] = false,
					["<leader>co"] = false,
					["<leader>ct"] = false,
					["<leader>cb"] = false,
					["<leader>ca"] = false,
					["dx"] = false,
					["<leader>cO"] = false,
					["<leader>cT"] = false,
					["<leader>cB"] = false,
					["<leader>cA"] = false,
					["dX"] = false,
				},
				file_history_panel = {
					{ "n", "g!", false },
					{ "n", "<C-A-d>", false },
					{ "n", "y", false },
					{ "n", "L", false },
					{ "n", "zR", false },
					{ "n", "zM", false },
					{ "n", "j", false },
					{ "n", "k", false },
					{ "n", "<cr>", false },
					{ "n", "o", false },
					{ "n", "<2-LeftMouse>", false },
					{ "n", "<tab>", false },
					{ "n", "i", false },
					{ "n", "f", false },
					{ "n", "gf", false },
					{ "n", "<C-w><C-f>", false },
					{ "n", "<C-w>gf", false },
					["<leader>e"] = false,
					["<leader>b"] = false,
					["<leader>co"] = false,
					["<leader>ct"] = false,
					["<leader>cb"] = false,
					["<leader>ca"] = false,
					["dx"] = false,
					["<leader>cO"] = false,
					["<leader>cT"] = false,
					["<leader>cB"] = false,
					["<leader>cA"] = false,
					["dX"] = false,
				},
				option_panel = {
					{ "n", "<tab>", false },
					{ "n", "q", false },
				},
				help_panel = { { "n", "q", false } },
			},
		})

		-- Keybindings
		vim.keymap.set("n", "<leader>gd", "<cmd>DiffviewOpen<CR>", { desc = "Open Diffview" })
		vim.keymap.set("n", "<leader>gc", "<cmd>DiffviewClose<CR>", { desc = "Close Diffview" })
		vim.keymap.set("n", "<leader>gh", "<cmd>DiffviewFileHistory<CR>", { desc = "File history" })
		vim.keymap.set("n", "<leader>gf", "<cmd>DiffviewFileHistory %<CR>", { desc = "Current file history" })
	end,
}
