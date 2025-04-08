return {
  {
    "williamboman/mason.nvim",
    opts = {
      function() require('mason').setup() end,
    }
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      function()
        require('mason-lspconfig').setup({
          ensure_installed = { "lua_ls", "gdscript", "csharp_ls", "neorg" }
        })
      end,
    }
  },
  {
    "mfussenegger/nvim-dap"
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require 'lspconfig'.lua_ls.setup {}
      require 'lspconfig'.csharp_ls.setup {}
      require 'lspconfig'.gdscript.setup {}
      require 'lspconfig'.gdshader_lsp.setup {}
      local wk = require('which-key')
      wk.add({
        { "<leader>f", function() vim.lsp.buf.format() end, desc = "Format Current Buffer" }
      })
    end,
  },
}
