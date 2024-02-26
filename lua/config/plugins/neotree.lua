vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    -- "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require('neo-tree').setup {
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
        },
        follow_current_file = {
          enabled = true,
        },
        window = {
          mappings = {
            ["[h"] = "prev_git_modified",
            ["]h"] = "next_git_modified",
          },
        },
      },
      default_component_configs = {
        container = {
          enable_character_fade = true
        },
        name = {
          trailing_slash = true,
          use_git_status_colors = true,
          -- highlight = "NeoTreeFileName",
        },
        git_status = {
          symbols = {
            -- Change type
            -- added     = "✚", -- or "✚", but this is redundant info if you use git_status_colors on the name
            -- modified  = "", -- or "", but this is redundant info if you use git_status_colors on the name
            deleted   = "D", -- "✖" -- this can only be used in the git_status source
            renamed   = "R", -- this can only be used in the git_status source
            -- Status type
            untracked = "U",
            ignored   = "",
            unstaged  = "M",
            staged    = "✔",
            conflict  = "",
          }
        },
        icon = {
          default = "",
          folder_closed = "",
          folder_open = "",
          folder_empty = "",
        },
      }
    }
  end,

  vim.keymap.set("n", "<leader>b", ":Neotree reveal<CR>", { silent = true, desc = "Focus Neo-tree" }),
  vim.keymap.set("n", "<C-b>", ":Neotree toggle<CR>", { silent = true }),
}
