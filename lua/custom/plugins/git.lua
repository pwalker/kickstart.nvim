return {
  -- See `:help gitsigns` to understand what the configuration keys do
  { -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
      current_line_blame = true, -- Enable blame line highlight
      current_line_blame_opts = {
        delay = 300, -- Delay before blame info shows up (in milliseconds)
        virt_text = true,
        virt_text_pos = 'eol', -- Position blame text at end of the line
        ignore_whitespace = false,
      },
    },
  },

  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim', -- required
      'sindrets/diffview.nvim', -- optional - Diff integration
      'nvim-telescope/telescope.nvim', -- optional
    },
    config = {
      integrations = {
        telecope = true,
        diffview = true,
      },
    },
  },
}
