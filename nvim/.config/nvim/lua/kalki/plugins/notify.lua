return {
	"rcarriga/nvim-notify",
	event = "VeryLazy",
	config = function()
		local notify = require("notify")
		notify.setup({
			background_colour = "#000000",
			fps = 30,
			icons = {
				DEBUG = "",
				ERROR = "",
				INFO = "",
				TRACE = "✎",
				WARN = "",
			},
			level = 2,
			minimum_width = 50,
			render = "compact",
			stages = "fade_in_slide_out",
			timeout = 3000,
			top_down = true,
		})

		-- Set as default notify handler
		vim.notify = notify

		-- Keymaps
		vim.keymap.set("n", "<leader>un", function()
			require("notify").dismiss({ silent = true, pending = true })
		end, { desc = "Dismiss all notifications" })
	end,
}
