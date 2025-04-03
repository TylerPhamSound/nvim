return {
  "nvim-neorg/neorg",
  -- lazy-load on filetype
  ft = "norg",
  -- options for neorg. This will automatically call `require("neorg").setup.(opts)`
  opts = {
    load = {
      ["core.defaults"] = {},
      ["core.concealer"] = {},
    }
  },
  keys = {
    { "<leader>eo", "<cmd> Oil --float /home/tyler/Documents/Neorg/<cr>", desc = "Edit Neorg Files" },
  }
}
