-- Onedark = {
--   'navarasu/onedark.nvim',
--   lazy = true,
--   config = function()
--     require('onedark').setup {
--       style = 'dark', -- dark, darker, cool, deep, warm, warmer, light
--     }
--     -- require('onedark').load()
--   end,
-- }

Kanagawa = {
  'rebelot/kanagawa.nvim',
  lazy = false,
  config = function()
    require('kanagawa').setup {}
    vim.cmd('colorscheme kanagawa-dragon')
  end,
}

return {
  -- Onedark,
  Kanagawa,
}
