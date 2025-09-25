return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        flavour = 'mocha',
        integrations = {
          blink_cmp = true,
          diffview = true,
          -- flash = true,
          neogit = true,
        },
      }

      vim.cmd.colorscheme 'catppuccin'
    end,
  },
}
