return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  dependencies = { { 'nvim-tree/nvim-web-devicons' } },
  config = function()
    local logo = [[
    ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗
    ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║
    ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║
    ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║
    ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║
    ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝
    ]]
    logo = string.rep('\n', 8) .. logo .. '\n\n\n'

    require('dashboard').setup {
      theme = 'doom',
      config = {
        header = vim.split(logo, '\n'),
        center = {
          { icon = '󱀲   ', desc = 'Open File        ', action = 'Telescope find_files ', key = 'f' },
          { icon = '   ', desc = 'New File         ', action = 'ene | startinsert', key = 'n' },
          { icon = '   ', desc = 'Recent Files     ', action = 'Telescope oldfiles', key = 'r' },
          { icon = '   ', desc = 'Search Text      ', action = 'Telescope live_grep', key = 't' },
          { icon = '󰒲   ', desc = 'Lazy             ', action = 'Lazy', key = 'l' },
          { icon = '   ', desc = 'Quit             ', action = 'qa', key = 'q' },
        },
      },
    }
  end,
}
