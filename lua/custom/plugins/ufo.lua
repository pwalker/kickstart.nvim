-- Makes folding look modern and keep high performance
return {
  'kevinhwang91/nvim-ufo',
  dependencies = { 'kevinhwang91/promise-async' },
  config = function()
    vim.opt.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
    vim.opt.foldlevelstart = 99

    -- Use nice arrow icons for folds
    vim.opt.fillchars = {
      foldopen = '', -- icon when fold is open (arrow down)
      foldclose = '', -- icon when fold is closed (arrow right)
      foldsep = ' ', -- no vertical line between folds
    }

    -- Optional: show a fold column so the icons are visible
    -- vim.opt.foldcolumn = '1'

    -- treesitter as the main provider; indent as fallback
    require('ufo').setup {
      provider_selector = function(bufnr, filetype, buftype)
        return { 'treesitter', 'indent' }
      end,
    }
  end,
}
