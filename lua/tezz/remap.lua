vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "jk", "<esc>")

-- move visual line up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- append below lines with space
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>p", [["+p]])
vim.keymap.set("n", "<leader>P", [["+P]])

-- yank the current word in normal mode
vim.keymap.set("n", "<leader>yw", "yiw", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>ee", "oif err != nil {<CR>}<Esc>Oreturn err<Esc>")

-- mini jump
-- vim.keymap.set("n", "<leader>j", "3j", { noremap = true })
-- vim.keymap.set("n", "<leader>k", "3k", { noremap = true })
vim.keymap.set("n", "<leader>v", "V", { noremap = true })

-- multiple window management
vim.keymap.set("n", "<leader>h", "<C-w>", { noremap = true })
