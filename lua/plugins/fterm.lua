return {
  "numtostr/FTerm.nvim",
  version = "*",
  event = "VeryLazy",
  config = function()
    require("FTerm").setup({
      border = "rounded",
      dimensions  = {
        height = 0.95,
        width = 0.8,
      },
      -- blend = 15,
    })

    -- "_" is used in place of "/". <C-_> == <C-/>
    vim.keymap.set({ "t", "n", "v" }, "<C-_>", require("FTerm").toggle)
  end
}
