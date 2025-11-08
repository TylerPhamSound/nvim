return {
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      columns = {
        "icon",
        -- "permissions",
        -- "size",
        "mtime",
      },
      delete_to_trash = true,
      float = {
        max_width = 0.75,
        max_height = 0.75,
        border = "rounded",
      }
    },
    -- Optional dependencies
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
    keys = {
      -- { "<leader>o",  group = "Oil" }, -- Group names don't show up for me unless defined in which-key.lua
      { "<leader>oc", "<cmd>Oil --float /home/tyler/.config/<cr>", desc = "Oil (Dotfiles)"},
      { "<leader>of", "<cmd>Oil --float /home/tyler/.config/fish/<cr>", desc = "Oil (Fish Config)"},
      { "<leader>o.", "<cmd>Oil --float<cr>", desc = "Oil (Current Directory)" },
      { "<leader>og", "<cmd>Oil --float /home/tyler/.config/ghostty/<cr>", desc = "Oil (Ghostty Config)"},
      { "<leader>on", "<cmd>Oil --float /home/tyler/.config/nvim/<cr>", desc = "Oil (Neovim Config)"},
      { "<leader>oot", "<cmd> Oil --float /home/tyler/Nextcloud/Documents/Obsidian/team-applesauce/<cr>", desc = "Obsidian (team-applesauce)"},
      { "<leader>oop", "<cmd> Oil --float /home/tyler/Nextcloud/Documents/Obsidian/personal/<cr>", desc = "Obsidian (personal)"},
      { "<leader>ooy", "<cmd> Oil --float /home/tyler/Nextcloud/Documents/Obsidian/yhs/<cr>", desc = "Obsidian (yhs)"},
      { "<leader>ooh", "<cmd> Oil --float /home/tyler/Nextcloud/Documents/Obsidian/thexxis-tech/<cr>", desc = "Obsidian (thexxis-tech)"},
      { "<leader>op", "<cmd>Oil --float /home/tyler/Documents/Presenterm/<cr>", desc = "Oil (Presenterm)"},
      { "<leader>ot", "<cmd>Oil --float /home/tyler/.config/tmux/<cr>", desc = "Oil (Tmux Config)"},
    },
  }
}
