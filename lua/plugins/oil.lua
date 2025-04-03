return {
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      columns = {
        "icon",
        -- "permissions",
        "size",
        "mtime",
      },
      delete_to_trash = true,
      float = {
        max_width = 0.5,
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
      { "<leader>o", "<cmd>Oil --float<cr>", desc = "Oil (File Explorer)" },
    },
  }
}
