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
      function()
        require("mason-lspconfig").setup_handlers {
          -- The first entry (without a key) will be the default handler
          -- and will be called for each installed server that doesn't have
          -- a dedicated handler.
          function(server_name) -- default handler (optional)
            require("lspconfig")[server_name].setup {}
          end,
          -- Next, you can provide a dedicated handler for specific servers.
          -- For example, a handler override for the `rust_analyzer`:
          ["rust_analyzer"] = function()
            require("rust-tools").setup {}
          end,
        }
      end,
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- require 'lspconfig'.lua_ls.setup {}
      -- require 'lspconfig'.csharp_ls.setup {}
      -- require 'lspconfig'.gdscript.setup {}
      -- require 'lspconfig'.gdshader_lsp.setup {}
      local wk = require('which-key')
      wk.add({
        { "<leader>f", function() vim.lsp.buf.format() end, desc = "Format Current Buffer" }
      })
    end,
  },
}
