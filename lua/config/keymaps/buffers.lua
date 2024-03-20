return {
    -- Open a blank buffer when closing the last buffer
    vim.keymap.set('n', '<leader>q', '<cmd>bp<bar>sp<bar>bn<bar>bd<CR>', { desc = 'Close buffer' }),
    vim.keymap.set('n', 'H', '<cmd>bp<CR>', { desc = 'Previous buffer' }),
    vim.keymap.set('n', 'L', '<cmd>bn<CR>', { desc = 'Next buffer' }),
}
