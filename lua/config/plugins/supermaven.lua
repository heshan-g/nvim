return {
  {
    "supermaven-inc/supermaven-nvim",
    config = function()
      require("supermaven-nvim").setup({
        condition = function()
          return true; -- true == stopped by default
        end,
      })
    end,
  },
}
