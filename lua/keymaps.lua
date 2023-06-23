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

  -- -- floating terminal
  -- local lazyterm = function() Util.float_term(nil, { cwd = Util.get_root() }) end
  -- vim.keymap.set("n", "<leader>ft", lazyterm, { desc = "Terminal (root dir)" })
  -- vim.keymap.set("n", "<leader>fT", function() Util.float_term() end, { desc = "Terminal (cwd)" })
  -- vim.keymap.set("n", "<c-/>", lazyterm, { desc = "Terminal (root dir)" })
  -- vim.keymap.set("n", "<c-_>", lazyterm, { desc = "which_key_ignore" })
}

