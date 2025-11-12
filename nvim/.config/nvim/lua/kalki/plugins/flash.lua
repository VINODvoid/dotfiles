return {
	"folke/flash.nvim",
	event = "VeryLazy",
	opts = {
		labels = "asdfghjklqwertyuiopzxcvbnm",
		search = {
			multi_window = true,
			forward = true,
			wrap = true,
			mode = "exact",
			incremental = false,
		},
		jump = {
			jumplist = true,
			pos = "start",
			history = false,
			register = false,
			nohlsearch = false,
			autojump = false,
		},
		label = {
			uppercase = true,
			exclude = "",
			current = true,
			after = true,
			before = false,
			style = "overlay",
			reuse = "lowercase",
			distance = true,
			min_pattern_length = 0,
			rainbow = {
				enabled = false,
				shade = 5,
			},
			format = function(opts)
				return { { opts.match.label, opts.hl_group } }
			end,
		},
		highlight = {
			backdrop = true,
			matches = true,
			priority = 5000,
			groups = {
				match = "FlashMatch",
				current = "FlashCurrent",
				backdrop = "FlashBackdrop",
				label = "FlashLabel",
			},
		},
		action = nil,
		pattern = "",
		continue = false,
		config = nil,
		prompt = {
			enabled = true,
			prefix = { { "⚡", "FlashPromptIcon" } },
			win_config = {
				relative = "editor",
				width = 1,
				height = 1,
				row = -1,
				col = 0,
				zindex = 1000,
			},
		},
		remote_op = {
			restore = false,
			motion = false,
		},
		modes = {
			search = {
				enabled = true,
			},
			char = {
				enabled = true,
				keys = { "f", "F", "t", "T", ";", "," },
				search = { wrap = false },
				highlight = { backdrop = true },
				jump = { register = false },
				jump_labels = false,
				label = { exclude = "hjkliardc" },
				multi_line = true,
				virt_text = { { "⚡", "FlashPromptIcon" } },
			},
			treesitter = {
				labels = "abcdefghijklmnopqrstuvwxyz",
				jump = { pos = "range" },
				search = { incremental = false },
				label = { before = true, after = true, style = "inline" },
				highlight = {
					backdrop = false,
					matches = false,
				},
			},
			treesitter_search = {
				jump = { pos = "range" },
				search = { multi_window = true, wrap = true, incremental = false },
				remote_op = { restore = true },
				label = { before = true, after = true, style = "inline" },
			},
		},
	},
	keys = {
		{
			"<leader>j",
			mode = { "n", "x", "o" },
			function()
				require("flash").jump()
			end,
			desc = "Flash jump",
		},
		{
			"<leader>J",
			mode = { "n", "x", "o" },
			function()
				require("flash").treesitter()
			end,
			desc = "Flash Treesitter",
		},
		{
			"<c-s>",
			mode = { "c" },
			function()
				require("flash").toggle()
			end,
			desc = "Toggle Flash Search",
		},
	},
}
