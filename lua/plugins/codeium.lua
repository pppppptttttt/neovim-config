-- Codeium (AI autocomplete) - Vim plugin with inline suggestions
-- https://github.com/Exafunction/codeium.vim

return {
  'Exafunction/codeium.vim',
  event = 'InsertEnter',
  init = function()
    -- We'll set our own keymaps
    vim.g.codeium_no_map = true
  end,
  config = function()
    local function map(mode, lhs, rhs, opts)
      opts = opts or {}
      vim.keymap.set(mode, lhs, rhs, opts)
    end

    -- Inline suggestion controls (insert mode)
    map('i', '<C-g>', function()
      return vim.fn['codeium#Accept']()
    end, { expr = true, silent = true, desc = 'Codeium: Accept' })

    map('i', '<M-]>', function()
      return vim.fn
    end, { expr = true, silent = true, desc = 'Codeium: Next suggestion' })

    map('i', '<M-[>', function()
      return vim.fn['codeium#CycleCompletions'](-1)
    end, { expr = true, silent = true, desc = 'Codeium: Prev suggestion' })

    map('i', '<C-x>', function()
      return vim.fn['codeium#Clear']()
    end, { expr = true, silent = true, desc = 'Codeium: Clear' })
  end,
}
