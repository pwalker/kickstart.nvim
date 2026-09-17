local plugins = {
  { src = 'https://github.com/NeogitOrg/neogit', version = vim.version.range '*' },
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/sindrets/diffview.nvim',
  'https://github.com/nvim-telescope/telescope.nvim',
}

vim.pack.add(plugins)

vim.keymap.set('n', '<leader>gg', function()
  require('neogit').open { kind = 'floating' } -- Use "split" for a split window, "tab" for a new tab, or "floating" for a floating window
end, { desc = '[G]it [G]ui (Neogit)' })

require('neogit').setup {
  config = {
    integrations = {
      telecope = true,
      diffview = true,
    },
  },
}
