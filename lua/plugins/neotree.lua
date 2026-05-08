return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    -- "nvim-tree/nvim-web-devicons", -- optional, but recommended
  },
  lazy = false, -- neo-tree will lazily load itself
  opts = {
    filesystem = {
      commands = {
        -- Override delete to use trash instead of rm
        delete = function(state)
          local path = state.tree:get_node().path
          vim.fn.system({ "trash", vim.fn.fnameescape(path) })
          require("neo-tree.sources.manager").refresh(state.name)
        end,
      },
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = false,
      },
      follow_current_file = {
        enabled = true,
      },
      window = {
        width = 35,
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
          modified  = "M", -- or "", but this is redundant info if you use git_status_colors on the name
          deleted   = "D", -- "✖" -- this can only be used in the git_status source
          renamed   = "R", -- this can only be used in the git_status source
          -- Status type
          untracked = "U",
          ignored   = "i",
          unstaged  = "",
          staged    = "✔",
          conflict  = "C",
        }
      },
      icon = {
        default = "",
        folder_closed = "",
        folder_open = "",
        folder_empty = "",
      },
    },
  },
}
