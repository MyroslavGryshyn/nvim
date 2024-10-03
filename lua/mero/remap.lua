vim.g.mapleader = " "
vim.keymap.set("n", "<leader>n", vim.cmd.Ex)

vim.keymap.set("i", "jj", "<Esc>", {})
vim.keymap.set("n", "<leader>li", ":Lazy install<CR>", {})
vim.keymap.set("n", "<leader>lu", ":Lazy update<CR>", {})

vim.keymap.set("n", "-", ":nohl<CR>", {})
vim.keymap.set("n", "W", ":w<CR>", {})
vim.keymap.set("n", "Q", ":q<CR>", {})

-- Use ctrl-[hjkl] to select the active split!
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

vim.keymap.set({"n", "v"}, "gy", [["+y]])
vim.keymap.set({"n", "v"}, "gp", [["+P]])

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Rename as in IDE
vim.keymap.set("n", "<leader>rr", "<Plug>(coc-rename)")

vim.keymap.set("n", "<leader>v", ":vsplit<CR>")

vim.keymap.set("n", "QA", ":qa<CR>")

vim.keymap.set("n", "<F9>", ":Black<CR>")
