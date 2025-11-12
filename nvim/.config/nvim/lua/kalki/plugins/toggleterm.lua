return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			size = function(term)
				if term.direction == "horizontal" then
					return 15
				elseif term.direction == "vertical" then
					return vim.o.columns * 0.4
				end
			end,
			open_mapping = [[<C-\>]], -- Toggle terminal with Ctrl+\
			hide_numbers = true,
			shade_terminals = true,
			shading_factor = 2,
			start_in_insert = true,
			insert_mappings = true,
			terminal_mappings = true,
			persist_size = true,
			persist_mode = true,
			direction = "float", -- 'vertical' | 'horizontal' | 'tab' | 'float'
			close_on_exit = true,
			shell = vim.o.shell,
			float_opts = {
				border = "curved", -- 'single' | 'double' | 'shadow' | 'curved'
				winblend = 0,
			},
		})

		-- Custom terminal keybindings
		function _G.set_terminal_keymaps()
			local opts = { buffer = 0 }
			vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts) -- Exit terminal mode with Esc
			vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts) -- Exit terminal mode with jk
			vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
			vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
			vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
			vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
			vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
		end

		vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

		-- Custom terminal instances
		local Terminal = require("toggleterm.terminal").Terminal

		-- Horizontal terminal
		local horizontal = Terminal:new({
			direction = "horizontal",
			size = 15,
		})

		function _HORIZONTAL_TOGGLE()
			horizontal:toggle()
		end

		-- Vertical terminal
		local vertical = Terminal:new({
			direction = "vertical",
			size = vim.o.columns * 0.4,
		})

		function _VERTICAL_TOGGLE()
			vertical:toggle()
		end

		-- Keymaps
		vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm direction=float<CR>", { desc = "Toggle floating terminal" })
		vim.keymap.set(
			"n",
			"<leader>th",
			"<cmd>lua _HORIZONTAL_TOGGLE()<CR>",
			{ desc = "Toggle horizontal terminal" }
		)
		vim.keymap.set("n", "<leader>tv", "<cmd>lua _VERTICAL_TOGGLE()<CR>", { desc = "Toggle vertical terminal" })
	end,
}
