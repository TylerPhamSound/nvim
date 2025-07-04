return {
  -- {
  --   "folke/tokyonight.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     -- load the colorscheme here
  --     vim.cmd([[colorscheme tokyonight-night]])
  --   end,
  -- }
  -- {
  --   "ellisonleao/gruvbox.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function ()
  --     vim.cmd([[colorscheme gruvbox]])
  --   end,
  --   opts = {},
  -- }
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function ()
      vim.cmd([[colorscheme catppuccin-macchiato]])
    end,
  }
}
