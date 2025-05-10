-- download  lazy if not found
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

-- tell neovim where you can find lazy
vim.opt.rtp:prepend(lazypath)

-- telling lua to look for plugin in tezz/lazy folder
require("lazy").setup({
	spec = "tezz.lazy",
	change_detection = { notify = false },
})
-- note: source % will exceute this file again
-- move line using shift+V (J or K)
