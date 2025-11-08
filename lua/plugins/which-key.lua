return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      spec = {
        { "<leader>b", "<cmd>Floaterminal<cr>", desc = "Toggle/Spawn Floaterminal", mode = "n" },
        { "<leader>f", function() vim.lsp.buf.format() end, desc = "Format Current Buffer" },
        { "<leader>o", group = "Oil" },
        { "<leader>oo", group = "Obsidian" },
        { "<leader>w", proxy = "<c-w>",    group = "Windows" },
        { "<leader>t", group = "Telescope" },
        { "<leader>to", group = "Obsidian" },
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
