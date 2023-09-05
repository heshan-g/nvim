-- Configurations are defined during initial setup in init.lua (root dir)
return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
    'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  },
  config = function()
    require("barbar").setup {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
      sidebar_filetypes = {
        ['neo-tree'] = {
          event = "BufWipeout",
          text = (function()
            local cwd = vim.fn.getcwd()
            local current_dir = vim.fn.fnamemodify(cwd, ":t")
            return current_dir
          end)(),
        },
      },
      focus_on_close = 'left',
      -- Enable highlighting visible buffers
      highlight_visible = true,
    }
  end,

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
