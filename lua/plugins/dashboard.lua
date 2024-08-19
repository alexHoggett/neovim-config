return {
  'nvimdev/dashboard-nvim',
  lazy = false,
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      theme = 'hyper',
      config = {
        week_header = {
          enable = true,  --boolean use a week header
          concat = "أنا المُسافِرُ داخِلي وأنا المُحاصَرُ بالثُّنائيات"  --concat string after time string line
        },
        disable_move = true,  -- boolean default is false disable move key
        shortcut = {
          -- action can be a function type
          { desc = "Find Files", group = 'DashboardHeader', key = 'z', action = 'Telescope find_files' },
          { desc = "Open File Tree", group = 'DashboardHeader', key = 'x', action  = 'Neotree filesystem reveal left' }
        },
      }
    }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
