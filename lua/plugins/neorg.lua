return {
  "nvim-neorg/neorg",
  -- lazy-load on filetype
  ft = "norg",
  -- options for neorg. This will automatically call `require("neorg").setup.(opts)`
  opts = {
    load = {
      ["core.defaults"] = {},
      ["core.completion"] = {
        config = {
          engine = "nvim-cmp",
        }
      },
      ["core.concealer"] = {
        config = {
          folds = false,
        }
      },
      ["core.dirman"] = {},
      ["core.export"] = {},
      ["core.export.markdown"] = {},
      -- ["core.latex.renderer"] = {},
      -- ["core.presenter"] = {
      --   config = {
      --     zen_mode = "zen-mode",
      --   }
      -- },
      -- ["core.summary"] = {},
      -- ["core.text-objects"] = {},
    }
  },
  -- keys = {
  --   { "<leader>n>", "<Plug>(neorg.presenter.next-page)",     desc = "Neorg presenter next-page" },
  --   { "<leader>n<", "<Plug>(neorg.presenter.previous-page)", desc = "Neorg presenter previous-page" },
  --   { "<leader>ns", "<cmd>Neorg presenter start<cr>",        desc = "Neorg presenter start" },
  --   { "<leader>nc", "<Plug>(neorg.presenter.close)",         desc = "Neorg presenter close" },
  -- },
}
