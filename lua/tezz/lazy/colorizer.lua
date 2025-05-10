return {
	"catgoose/nvim-colorizer.lua",
	event = "BufReadPre",
	opts = { -- set to setup table
	},
	config = function()
		require("colorizer").setup({
			filetypes = { "css", "tsx", "jsx" },
			user_default_options = {
				tailwind = true,
				css = true,
				names = false,
			},
		})
		-- All options that can be passed to `user_default_options` in setup() can be
		-- passed to `attach_to_buffer`
		-- Similar for other functions

		-- Attach to buffer
		require("colorizer").attach_to_buffer(0, { mode = "background", css = true })
	end,
}
