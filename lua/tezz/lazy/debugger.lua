return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"leoluz/nvim-dap-go",
		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio", -- dependency of dap ui
		"theHamsta/nvim-dap-virtual-text",
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")

		dapui.setup()
		require("dap-go").setup()
		require("nvim-dap-virtual-text").setup()

		vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint)
		vim.keymap.set("n", "<leader>gb", dap.run_to_cursor)

		-- Eval var under cursor
		vim.keymap.set("n", "<space>?", function()
			require("dapui").eval(nil, { enter = true })
		end)

		-- vim.keymap.set("n", "<F1>", dap.continue)
		-- vim.keymap.set("n", "<F2>", dap.step_into)
		-- vim.keymap.set("n", "<F3>", dap.step_over)
		-- vim.keymap.set("n", "<F4>", dap.step_out)
		-- vim.keymap.set("n", "<F5>", dap.step_back)
		-- vim.keymap.set("n", "<F13>", dap.restart)

		vim.keymap.set("n", "<leader>dc", dap.continue, { desc = "Debug: Continue" })
		vim.keymap.set("n", "<leader>di", dap.step_into, { desc = "Debug: Step Into" })
		vim.keymap.set("n", "<leader>do", dap.step_over, { desc = "Debug: Step Over" })
		vim.keymap.set("n", "<leader>dO", dap.step_out, { desc = "Debug: Step Out" })
		vim.keymap.set("n", "<leader>dr", dap.restart, { desc = "Debug: Restart" })
		vim.keymap.set("n", "<leader>dq", dap.terminate, { desc = "Debug: Quit" })

		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end
	end,
}
