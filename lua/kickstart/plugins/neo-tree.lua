-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = 'v3.*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    vim.fn.sign_define('DiagnosticSignError', { text = '', texthl = 'DiagnosticSignError' })
    vim.fn.sign_define('DiagnosticSignWarn', { text = '', texthl = 'DiagnosticSignWarn' })
    vim.fn.sign_define('DiagnosticSignInfo', { text = '', texthl = 'DiagnosticSignInfo' })
    vim.fn.sign_define('DiagnosticSignHint', { text = '󰌶', texthl = 'DiagnosticSignHint' })

    require('neo-tree').setup {
      sources = { 'filesystem' },
      filesystem = { bind_to_cwd = false, hijack_netrw_behavior = 'disabled' },
      window = {
        width = 37,
        mappings = {
          ['\\'] = 'close_window',
        },
      },
      source_selector = {
        winbar = true,
        sources = {
          { source = 'filesystem' },
        },
      },
      default_component_configs = {
        git_status = {
          symbols = {
            -- Change type
            added = '',
            modified = '',
            deleted = '',
            renamed = '',
            -- Status type
            untracked = '',
            ignored = '',
            unstaged = '',
            staged = '',
            conflic = '',
          },
        },
      },
    }

    vim.keymap.set('n', '\\', '<cmd>Neotree reveal<cr>', { desc = 'Toggle Neotree' })
  end,
}
