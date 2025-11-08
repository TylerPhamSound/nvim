return {
  "oflisback/obsidian-bridge.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  opts = {
    -- your config here
    obsidian_server_address = "http://localhost:27123",
    scroll_sync = false,
    cert_path = nil,
    warnings = true,
    picker = "telescope",
  },
  event = {
    "BufReadPre *.md",
    "BufNewFile *.md",
  },
  lazy = true,
}
