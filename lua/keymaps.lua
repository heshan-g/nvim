return {
  -- windows
  vim.keymap.set("n", "<C-h>", "<C-w>h", { silent = true }),
  vim.keymap.set("n", "<C-j>", "<C-w>j", { silent = true }),
  vim.keymap.set("n", "<C-k>", "<C-w>k", { silent = true }),
  vim.keymap.set("n", "<C-l>", "<C-w>l", { silent = true }),

  -- buffers
  vim.keymap.set("n", "<leader>x", ":bd<CR>", { silent = true }),
  vim.keymap.set("n", "<leader>X", ":bd!<CR>", { silent = true }),

  -- terminal
  vim.keymap.set("t", "<esc><esc>", '<C-\\><C-n>')
}
