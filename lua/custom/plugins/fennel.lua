-- Filetype detection for .fnl/.fnlm is already built into Nvim; just get the
-- Tree-sitter parser installed eagerly instead of waiting for the first buffer.
require('nvim-treesitter').install { 'fennel' }
