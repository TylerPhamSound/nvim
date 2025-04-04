return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      spec = {
        { "<leader>n", group = "Neorg" },
        { "<leader>o", group = "Oil" },
        { "<leader>w", proxy = "<c-w>",    group = "Windows" },
        { "<leader>t", group = "Telescope" },
      }
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)"
      },
    },
  }
}
