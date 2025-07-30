buffers = {
  -- Open a blank buffer when closing the last buffer
  vim.keymap.set('n', '<leader>q', '<cmd>bp<bar>sp<bar>bn<bar>bd<bar>bp<CR>', { desc = 'Close buffer' }),
  vim.keymap.set('n', '<leader>Q', '<cmd>bp<bar>sp<bar>bn<bar>bd!<CR>', { desc = 'Force-close buffer' }),
  vim.keymap.set('n', 'H', '<cmd>bp<CR>', { desc = 'Previous buffer' }),
  vim.keymap.set('n', 'L', '<cmd>bn<CR>', { desc = 'Next buffer' }),
}

windows = {
  -- Move between windows using Ctrl + [h,j,k,l]
  vim.keymap.set('n', '<C-h>', '<C-w>h', { silent = true }),
  vim.keymap.set('n', '<C-j>', '<C-w>j', { silent = true }),
  vim.keymap.set('n', '<C-k>', '<C-w>k', { silent = true }),
  vim.keymap.set('n', '<C-l>', '<C-w>l', { silent = true }),
}

return {
  buffers,
  windows,
}

