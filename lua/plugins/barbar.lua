-- Configurations are defined during initial setup in init.lua (root dir)
return {
  -- Move Previous and Next
  vim.keymap.set("n", "H", ":BufferPrevious<CR>", { silent = true }),
  vim.keymap.set("n", "L", ":BufferNext<CR>", { silent = true }),

  -- Re-order to Previous and Next
  vim.keymap.set("n", "(", ":BufferMovePrevious<CR>", { silent = true }),
  vim.keymap.set("n", ")", ":BufferMoveNext<CR>", { silent = true }),

  -- BufferPick
  vim.keymap.set("n", "<leader>bp", ":BufferPick<CR>"),

  -- Restore last closed buffer
  vim.keymap.set("n", "<leader>br", ":BufferRestore<CR>"),

  -- Close buffer
  vim.keymap.set("n", "<leader>x", ":BufferClose<CR>", { silent = true }),
  vim.keymap.set("n", "<leader>X", ":BufferClose!<CR>", { silent = true }),
}
