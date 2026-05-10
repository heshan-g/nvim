return {
  "nvim-telescope/telescope.nvim",
  version = '*',
  dependencies = {
    "nvim-lua/plenary.nvim",
    -- optional but recommended
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  config = function()
    local telescope = require("telescope.builtin")

    vim.keymap.set("n", "<leader><leader>", function()
      telescope.buffers()
    end, { desc = "List open buffers" })

    vim.keymap.set("n", "<leader>sf", function()
      telescope.find_files()
    end, { desc = "Find files" })

    vim.keymap.set("n", "<leader>sg", function()
      telescope.live_grep()
    end, { desc = "Live grep" })

    vim.keymap.set("n", "<leader>sk", function()
      telescope.keymaps()
    end, { desc = "Keymaps" })
  end
}
