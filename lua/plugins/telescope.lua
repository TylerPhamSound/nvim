return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = {
      function()
        require("telescope").setup {
          pickers = {
            find_files = {
              theme = "ivy"
            },
            lsp_references = {
              theme = "dropdown"
            }
          }
        }
      end
    },
    keys = {
      { "<leader>t",  group = "Telescope" }, -- Group names don't show up for me unless defined in which-key.lua
      { "<leader>tf", require("telescope.builtin").find_files,                                                         desc = "Find files",         mode = "n" },
      { "<leader>th", require("telescope.builtin").help_tags,                                                          desc = "Find help",          mode = "n" },
      { "<leader>to", function() require("telescope.builtin").find_files { cwd = "/home/tyler/Documents/Neorg/" } end, desc = "Find files (Neorg)", mode = "n" },
      {
        "<leader>tn",
        function()
          require("telescope.builtin").find_files {
            cwd = vim.fn.stdpath("config") }
        end,
        desc = "Find files (Neovim Config)"
      },
      { "<leader>tr", require("telescope.builtin").lsp_references, desc = "List LSP references", mode = "n" },
    },
  }
}
