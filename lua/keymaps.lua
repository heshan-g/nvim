return {
  -- window switching
  vim.keymap.set("n", "<C-h>", "<C-w>h", { silent = true }),
  vim.keymap.set("n", "<C-j>", "<C-w>j", { silent = true }),
  vim.keymap.set("n", "<C-k>", "<C-w>k", { silent = true }),
  vim.keymap.set("n", "<C-l>", "<C-w>l", { silent = true }),

  -- neo-tree toggle
  vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>"),

  -- bufferline
  vim.keymap.set("n", "H", ":BufferLineCyclePrev<CR>", { silent = true }),
  vim.keymap.set("n", "L", ":BufferLineCycleNext<CR>", { silent = true }),
  vim.keymap.set("n", "<leader>x", ":bd<CR>", { silent = true }),
  vim.keymap.set("n", "<leader>X", ":bd!<CR>", { silent = true }),

  -- terminal
  vim.keymap.set("t", "<esc><esc>", '<C-\\><C-n>')
}
