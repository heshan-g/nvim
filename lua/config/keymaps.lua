local map = vim.keymap.set

map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- Telescope ------------------------------------------------------------------
local telescope = require("telescope.builtin")

map("n", "<leader>sf", function()
  telescope.find_files()
end, { desc = "Find files" })

map("n", "<leader>sg", function()
  telescope.live_grep()
end, { desc = "Live grep" })

map("n", "<leader>sk", function()
  telescope.keymaps()
end, { desc = "Keymaps" })

