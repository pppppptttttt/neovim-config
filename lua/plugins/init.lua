-- All plugin specs live in lua/plugins/*.lua
-- This file returns the list passed to lazy.nvim

return {
  require 'plugins.guess-indent',
  require 'plugins.gitsigns',
  require 'plugins.which-key',
  require 'plugins.telescope',

  require 'plugins.lazydev',
  require 'plugins.lspconfig',

  require 'plugins.conform',
  require 'plugins.blink',

  require 'plugins.todo-comments',
  require 'plugins.mini',
  require 'plugins.treesitter',

  -- require 'plugins.codeium',

  require 'plugins.bufferline',

  require 'plugins.neo-tree',

  -- require 'plugins.tokyonight',
  require 'plugins.nord',
}
