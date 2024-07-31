return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'sainnhe/gruvbox-material',
    -- 'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      vim.g.background = 'dark'
      vim.cmd.colorscheme 'gruvbox-material'
    end,
    -- init = function()
    --   vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
    --   vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
    -- end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
