return {
  { -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    config = function()
      require('ibl').setup {
        indent = {
          char = '▏',
          tab_char = '▏',
          smart_indent_cap = true,
          priority = 2,
          repeat_linebreak = false,
        },
        scope = {
          enabled = true,
          show_start = false,
          show_end = false,
        },
        exclude = {
          filetypes = {
            'dashboard',
            'help',
            'neo-tree',
            'Trouble',
            'trouble',
            'lazy',
            'mason',
            'notify',
          },
        },
      }
    end,
  },
}
