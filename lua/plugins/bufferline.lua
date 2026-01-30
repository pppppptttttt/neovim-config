-- Bufferline: top tabs with file names
-- https://github.com/akinsho/bufferline.nvim

return {
  'akinsho/bufferline.nvim',
  version = '*',
  event = 'VimEnter',
  dependencies = {
    { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
  },
  keys = {
    { '<Tab>', '<cmd>BufferLineCycleNext<CR>', desc = 'Next buffer tab', silent = true },
    { '<S-Tab>', '<cmd>BufferLineCyclePrev<CR>', desc = 'Prev buffer tab', silent = true },
  },
  opts = {
    options = {
      mode = 'buffers',
      diagnostics = 'nvim_lsp',
      show_buffer_close_icons = false,
      show_close_icon = false,
      separator_style = 'slant',
      always_show_bufferline = true,
      offsets = {
        {
          filetype = 'neo-tree',
          text = 'File Explorer',
          text_align = 'center',
          separator = true,
        },
      },
    },
  },
}
