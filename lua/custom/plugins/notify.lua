return {
  'rcarriga/nvim-notify',
  opts = {
    stages = 'slide',
    render = 'default',
    max_height = function()
      return math.floor(vim.o.lines * 0.60)
    end,
    max_width = function()
      return math.floor(vim.o.columns * 0.60)
    end,
    on_open = function(win)
      vim.api.nvim_win_set_config(win, { zindex = 100 })
    end,
  },
  init = function()
    vim.notify = require 'notify'
  end,
}
