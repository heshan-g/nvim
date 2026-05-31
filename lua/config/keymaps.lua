local map = vim.keymap.set

map("n", "H", "<cmd>bprevious<CR>")
map("n", "L", "<cmd>bnext<CR>")
map("n", "<leader>q", "<cmd>bdelete<CR>")

map("n", "<leader>y", "<cmd>YankRelativePath<CR>")
map("n", "<leader>Y", "<cmd>YankAbsolutePath<CR>")
