return {
  "leath-dub/snipe.nvim",
  opts = {
    ui = {
      position = "center",
      open_win_override = {
        border = "rounded",
      }
    }
  },
  keys = {
    { "<leader>s", function() require("snipe").open_buffer_menu() end, desc = "Open Snipe buffer menu" }
  },
}
