return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    keys = {
      { "<leader>t",  group = "Telescope" },
      { "<leader>tf", require("telescope.builtin").find_files,     desc = "Find files",          mode = "n" },
      { "<leader>th", require("telescope.builtin").help_tags,      desc = "Find help",           mode = "n" },
      { "<leader>tr", require("telescope.builtin").lsp_references, desc = "List LSP references", mode = "n" },
      { "<leader>e",  group = "Edit" },
      {
        "<leader>en",
        function()
          require("telescope.builtin").find_files {
            cwd = vim.fn.stdpath("config") }
        end,
        desc = "Edit neovim config"
      }
    },
    config = function()
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
  }
}
