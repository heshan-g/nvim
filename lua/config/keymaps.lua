local map = vim.keymap.set

-- Telescope ------------------------------------------------------------------
local telescope = require("telescope.builtin")

map("n", "<leader>sf", function()
  telescope.find_files()
end, { desc = "Find files" })

map("n", "<leader>sg", function()
  telescope.live_grep()
end, { desc = "Live grep" })

