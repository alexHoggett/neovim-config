return {
  'nvimdev/dashboard-nvim',
  lazy = false,
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      theme = 'hyper',
    }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
