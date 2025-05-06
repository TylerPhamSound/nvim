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
      { "<leader>of", "<cmd>Oil --float<cr>", desc = "Oil (File Explorer)" },
      { "<leader>og", "<cmd>Oil --float /home/tyler/.config/ghostty/<cr>", desc = "Oil (Ghostty Config)"},
      { "<leader>on", "<cmd>Oil --float /home/tyler/.config/nvim/<cr>", desc = "Oil (Neovim Config)"},
      { "<leader>oo", "<cmd>Oil --float /home/tyler/Documents/Neorg/<cr>", desc = "Oil (Neorg)"},
      { "<leader>ot", "<cmd>Oil --float /home/tyler/.config/tmux/<cr>", desc = "Oil (Tmux Config)"},
    },
  }
}
