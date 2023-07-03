return {
  "numtostr/FTerm.nvim",
  version = "*",
  event = "VeryLazy",
  config = function()
    require("FTerm").setup({
      border = "single",
      dimensions  = {
        height = 0.95,
        width = 0.6,
      },
      -- blend = 15,
    })

    -- "_" is used in place of "/". <C-_> == <C-/>
    vim.keymap.set({ "t", "n", "v" }, "<C-_>", require("FTerm").toggle)
  end
}
