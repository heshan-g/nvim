return {
  -- Adds git releated signs to the gutter, as well as utilities for managing changes
  'lewis6991/gitsigns.nvim',
  opts = {
    -- See `:help gitsigns.txt`
    signs = {
      add = { text = '▎' },
      change = { text = '▎' },
      delete = { text = '▁' },
      topdelete = { text = '▎' },
      changedelete = { text = '▎' },
      untracked = { text = '▎' },
    },
    current_line_blame_opts = {
      virt_text = true,
      virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
      delay = 0,
      ignore_whitespace = false,
    },
    on_attach = function(bufnr)
      vim.keymap.set('n', '[h', require('gitsigns').prev_hunk, { buffer = bufnr, desc = 'Previous hunk' })
      vim.keymap.set('n', ']h', require('gitsigns').next_hunk, { buffer = bufnr, desc = 'Next hunk' })
      vim.keymap.set('n', '<leader>ph', require('gitsigns').preview_hunk, { buffer = bufnr, desc = 'Preview hunk' })
      vim.keymap.set('n', '<leader>gb', require('gitsigns').blame_line, { buffer = bufnr, desc = 'Blame line' })
      vim.keymap.set('n', '<leader>gl', require('gitsigns').toggle_current_line_blame, { buffer = bufnr, desc = 'Toggle blame line' })
      vim.keymap.set(
        'n',
        '<leader>gh',
        ':Gitsigns toggle_linehl<CR>:Gitsigns toggle_word_diff<CR>',
        { buffer = bufnr, desc = 'Toggle highlight' }
      )
      vim.keymap.set('n', '<leader>gr', require('gitsigns').reset_hunk, { buffer = bufnr, desc = 'Reset hunk' })
      vim.keymap.set('n', '<leader>gd', require('gitsigns').diffthis, { buffer = bufnr, desc = 'Git Diff' })
    end,
  },
}
