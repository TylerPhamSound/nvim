return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    opts = {
      pickers = {
        find_files = {
          theme = "ivy"
        },
        lsp_references = {
          theme = "dropdown"
        }
      }
    },
    -- config = {
    --   function()
    --     require("telescope").setup {
    --       pickers = {
    --         find_files = {
    --           theme = "ivy"
    --         },
    --         lsp_references = {
    --           theme = "dropdown"
    --         }
    --       }
    --     }
    --   end
    -- },
    keys = {
      { "<leader>t",  group = "Telescope" }, -- Group names don't show up for me unless defined in which-key.lua
      { "<leader>tf", require("telescope.builtin").find_files,                                                         desc = "Find files",         mode = "n" },
      { "<leader>th", require("telescope.builtin").help_tags,                                                          desc = "Find help",          mode = "n" },
      { "<leader>tot", function() require("telescope.builtin").find_files { cwd = "/home/tyler/Documents/Obsidian/team-applesauce/" } end, desc = "Find Obsidian files (team-applesauce)", mode = "n" },
      { "<leader>top", function() require("telescope.builtin").find_files { cwd = "/home/tyler/Documents/Obsidian/personal/" } end, desc = "Find Obsidian files (personal)", mode = "n" },
      { "<leader>toy", function() require("telescope.builtin").find_files { cwd = "/home/tyler/Documents/Obsidian/yhs/" } end, desc = "Find Obsidian files (yhs)", mode = "n" },
      { "<leader>toh", function() require("telescope.builtin").find_files { cwd = "/home/tyler/Documents/Obsidian/thexxis-tech/" } end, desc = "Find Obsidian files (thexxis-tech)", mode = "n" },
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
