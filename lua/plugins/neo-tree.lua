-- Neo-tree file explorer
-- https://github.com/nvim-neo-tree/neo-tree.nvim
--
-- Hotkeys:
--   <leader>e  toggle file explorer
--   <leader>o  reveal current file
--   \          reveal current file (as before)
--
-- Inside Neo-tree window:
--   \          close window
--   l / <CR>   open
--   h          close node
--   a          add
--   d          delete
--   r          rename
--   y          copy to clipboard
--   x          cut to clipboard
--   p          paste from clipboard
--   s          split
--   v          vsplit
--   q / <Esc>  close window

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font }, -- optional icons
    'MunifTanjim/nui.nvim',
  },
  keys = {
    -- Global hotkeys
    { '<leader>e', '<cmd>Neotree toggle<CR>', desc = 'NeoTree: Toggle', silent = true },
    { '<leader>o', '<cmd>Neotree reveal<CR>', desc = 'NeoTree: Reveal file', silent = true },
    { '\\', '<cmd>Neotree reveal<CR>', desc = 'NeoTree: Reveal file', silent = true },
  },
  opts = {
    filesystem = {
      follow_current_file = { enabled = true },
      hijack_netrw_behavior = 'open_default',
      window = {
        mappings = {
          -- close Neo-tree
          ['\\'] = 'close_window',
          ['q'] = 'close_window',
          ['<Esc>'] = 'close_window',

          -- navigation / open
          ['l'] = 'open',
          ['<CR>'] = 'open',
          ['h'] = 'close_node',

          -- file actions
          ['a'] = 'add',
          ['d'] = 'delete',
          ['r'] = 'rename',

          -- clipboard actions
          ['y'] = 'copy_to_clipboard',
          ['x'] = 'cut_to_clipboard',
          ['p'] = 'paste_from_clipboard',

          -- splits
          ['s'] = 'open_split',
          ['v'] = 'open_vsplit',
        },
      },
    },
  },
}
