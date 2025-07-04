return {
  {
    "echasnovski/mini.nvim",
    version = false,
    config = function()
      require('mini.ai').setup()
      require('mini.align').setup()
      require('mini.animate').setup()
      require('mini.diff').setup({
        view = {
          style = 'number',
          signs = { add = '+', change = '~', delete = '-' },
        },
      })

      require('mini.icons').setup()
      require('mini.indentscope').setup()
      require('mini.operators').setup()
      require('mini.statusline').setup({ use_icons = true })
      require('mini.surround').setup()
    end
  },
}
