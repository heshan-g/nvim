local map = vim.keymap.set

map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

map("n", "H", "<cmd>bprevious<CR>")
map("n", "L", "<cmd>bnext<CR>")
map("n", "<leader>q", "<cmd>bdelete<CR>")

map("n", "<leader>y", "<cmd>YankRelativePath<CR>")
map("n", "<leader>Y", "<cmd>YankAbsolutePath<CR>")
