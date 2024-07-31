return {
  'luukvbaal/statuscol.nvim',
  lazy = false,
  config = function()
    local builtin = require 'statuscol.builtin'
    require('statuscol').setup {
      relculright = true,
      ft_ignore = { 'neo-tree' },
      segments = {
        {
          sign = { namespace = { 'diagnostic*' }, maxwidth = 1 },
          click = 'v:lua.ScSa',
        },
        { text = { builtin.lnumfunc, ' ' }, click = 'v:lua.ScLa' },
        {
          sign = { namespace = { 'gitsigns*' }, colwidth = 1 },
          click = 'v:lua.ScSa',
        },
      },
    }
  end,
}
