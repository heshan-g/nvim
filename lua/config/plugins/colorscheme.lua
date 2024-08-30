Kanagawa = {
  'rebelot/kanagawa.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('kanagawa').setup {}
    -- vim.cmd('colorscheme kanagawa-dragon')
  end,
}

Rosepine = {
  "rose-pine/neovim",
  lazy = false,
  config = function()
    require('rose-pine').setup {}
    vim.cmd('colorscheme rose-pine-main')
  end,
  name = "rose-pine",
}

return {
  Kanagawa,
  Rosepine,
}
