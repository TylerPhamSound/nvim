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
          ensure_installed = { "lua_ls", "gdscript", "csharp_ls" }
        })
      end,
    }
  },
  {
    "mfussenegger/nvim-dap"
  }
}
