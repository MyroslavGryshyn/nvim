vim.g.mapleader = " "
vim.keymap.set("n", "<leader>n", vim.cmd.Ex)

vim.keymap.set("i", "jj", "<Esc>", {})
vim.keymap.set("n", "<leader>li", ":Lazy install<CR>", {})
vim.keymap.set("n", "<leader>lu", ":Lazy update<CR>", {})
