local vim = vim

-- Opens file explorer
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
-- Removes highlighted words
vim.keymap.set("n", "<Esc>", vim.cmd.noh)

-- ThePrimeagen : allows move visual text upwards or downwards
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Replaces visual text with word in register without losing this word from the 
-- register
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Yank and copy to clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")

-- Delets without content going into a register
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- Save
vim.keymap.set("n", "<C-s>", "<cmd>w<CR>")

-- Opens vertical Terminal
vim.keymap.set("n", "<A-v>", "<cmd>vs<CR><C-w>l<cmd>term<CR>i")
-- Opens horizontal Terminal
vim.keymap.set("n", "<A-t>", "<cmd>split<CR><C-w>j<cmd>term<CR>i")
