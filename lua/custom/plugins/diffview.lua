return {
  { -- Diff mode enhanced
    'sindrets/diffview.nvim',
    dependencies = 'nvim-lua/plenary.nvim',
    config = function()
      require('which-key').register {
        ['<leader>D'] = { name = '[D]iffview', _ = 'which_key_ignore' },
      }
      vim.keymap.set('n', '<leader>Dc', '<cmd>DiffviewClose<CR>', { desc = '[D]iffview [C]lose', noremap = true })
      vim.keymap.set('n', '<leader>Df', '<cmd>DiffviewFileHistory %<CR>', { desc = '[D]iffview [F]ile history', noremap = true })
      vim.keymap.set(
        'n',
        '<leader>Dh',
        function() require('diffview').open(vim.fn.expand '<cword>' .. '..' .. vim.fn.expand '<cword>' .. '^') end,
        { desc = '[D]iffview commit [H]ash under cursor', noremap = true }
      )
    end,
  },
}
