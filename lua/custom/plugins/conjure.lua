-- Only add (and thus load) Conjure once a Fennel buffer is actually opened.
-- Adding it eagerly (even with `load = false`) still exposes it to Nvim's
-- normal startup load-plugins pass, so the `vim.pack.add` call itself has to
-- be deferred, not just the `:packadd`.
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'fennel',
  once = true,
  callback = function()
    -- Uncomment to get verbose logging to help diagnose internal Conjure issues
    -- This is VERY helpful when reporting an issue with the project
    -- vim.g['conjure#debug'] = true

    vim.pack.add { { src = 'https://github.com/Olical/conjure' } }
  end,
})
