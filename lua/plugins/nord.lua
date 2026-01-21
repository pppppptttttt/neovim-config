-- Nord colorscheme
-- https://github.com/shaunsingh/nord.nvim

return {
  'shaunsingh/nord.nvim',
  priority = 1000, -- load before most other plugins
  config = function()
    -- You can tweak highlights / contrast here if you want later.
    -- require('nord').set()

    vim.cmd.colorscheme 'nord'
  end,
}
