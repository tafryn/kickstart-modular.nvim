return {
  { -- Quick access to definitions without changing buffer contents
    'LunarVim/peek.lua',
    config = function()
      vim.keymap.set('n', 'gp', function() require('peek').Peek 'definition' end, { desc = 'Peek at definition', noremap = true })
    end,
  },
}
