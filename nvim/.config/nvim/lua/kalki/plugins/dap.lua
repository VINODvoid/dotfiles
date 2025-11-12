return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"theHamsta/nvim-dap-virtual-text",
		"nvim-neotest/nvim-nio",
		"williamboman/mason.nvim",
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")

		-- Setup dap-ui
		dapui.setup({
			icons = { expanded = "▾", collapsed = "▸", current_frame = "*" },
			controls = {
				icons = {
					pause = "⏸",
					play = "▶",
					step_into = "⏎",
					step_over = "⏭",
					step_out = "⏮",
					step_back = "b",
					run_last = "▶▶",
					terminate = "⏹",
					disconnect = "⏏",
				},
			},
		})

		-- Setup virtual text
		require("nvim-dap-virtual-text").setup({
			enabled = true,
			enabled_commands = true,
			highlight_changed_variables = true,
			highlight_new_as_changed = false,
			show_stop_reason = true,
			commented = false,
			only_first_definition = true,
			all_references = false,
			filter_references_pattern = "<module",
			virt_text_pos = "eol",
			all_frames = false,
			virt_lines = false,
			virt_text_win_col = nil,
		})

		-- Automatically open/close dapui
		dap.listeners.after.event_initialized["dapui_config"] = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated["dapui_config"] = function()
			dapui.close()
		end
		dap.listeners.before.event_exited["dapui_config"] = function()
			dapui.close()
		end

		-- Sign icons
		vim.fn.sign_define("DapBreakpoint", { text = "🔴", texthl = "", linehl = "", numhl = "" })
		vim.fn.sign_define("DapBreakpointCondition", { text = "🟡", texthl = "", linehl = "", numhl = "" })
		vim.fn.sign_define("DapLogPoint", { text = "🔵", texthl = "", linehl = "", numhl = "" })
		vim.fn.sign_define("DapStopped", { text = "▶️", texthl = "", linehl = "", numhl = "" })
		vim.fn.sign_define("DapBreakpointRejected", { text = "⚫", texthl = "", linehl = "", numhl = "" })

		-- Keybindings
		vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "Toggle breakpoint" })
		vim.keymap.set("n", "<leader>dB", function()
			dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
		end, { desc = "Set conditional breakpoint" })
		vim.keymap.set("n", "<leader>dc", dap.continue, { desc = "Continue" })
		vim.keymap.set("n", "<leader>dC", dap.run_to_cursor, { desc = "Run to cursor" })
		vim.keymap.set("n", "<leader>di", dap.step_into, { desc = "Step into" })
		vim.keymap.set("n", "<leader>do", dap.step_over, { desc = "Step over" })
		vim.keymap.set("n", "<leader>dO", dap.step_out, { desc = "Step out" })
		vim.keymap.set("n", "<leader>dr", dap.repl.toggle, { desc = "Toggle REPL" })
		vim.keymap.set("n", "<leader>dl", dap.run_last, { desc = "Run last" })
		vim.keymap.set("n", "<leader>dt", dap.terminate, { desc = "Terminate" })
		vim.keymap.set("n", "<leader>du", dapui.toggle, { desc = "Toggle DAP UI" })
		vim.keymap.set("n", "<leader>dh", function()
			require("dap.ui.widgets").hover()
		end, { desc = "Hover" })
		vim.keymap.set("n", "<leader>dp", function()
			require("dap.ui.widgets").preview()
		end, { desc = "Preview" })

		-- Basic adapter configurations
		-- Note: Install debuggers via Mason: :Mason -> search for "debugpy", "node-debug2-adapter", etc.

		-- Node.js / TypeScript (install node-debug2-adapter via Mason)
		dap.adapters.node2 = {
			type = "executable",
			command = "node",
			args = { vim.fn.stdpath("data") .. "/mason/packages/node-debug2-adapter/out/src/nodeDebug.js" },
		}

		dap.configurations.javascript = {
			{
				type = "node2",
				request = "launch",
				program = "${file}",
				cwd = vim.fn.getcwd(),
				sourceMaps = true,
				protocol = "inspector",
				console = "integratedTerminal",
			},
		}

		dap.configurations.typescript = dap.configurations.javascript

		-- Python (install debugpy via Mason)
		dap.adapters.python = {
			type = "executable",
			command = vim.fn.stdpath("data") .. "/mason/packages/debugpy/venv/bin/python",
			args = { "-m", "debugpy.adapter" },
		}

		dap.configurations.python = {
			{
				type = "python",
				request = "launch",
				name = "Launch file",
				program = "${file}",
				pythonPath = function()
					return "/usr/bin/python"
				end,
			},
		}

		-- C/C++ (install codelldb via Mason)
		dap.adapters.codelldb = {
			type = "server",
			port = "${port}",
			executable = {
				command = vim.fn.stdpath("data") .. "/mason/packages/codelldb/codelldb",
				args = { "--port", "${port}" },
			},
		}

		dap.configurations.cpp = {
			{
				name = "Launch file",
				type = "codelldb",
				request = "launch",
				program = function()
					return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
				end,
				cwd = "${workspaceFolder}",
				stopOnEntry = false,
			},
		}

		dap.configurations.c = dap.configurations.cpp
	end,
}
