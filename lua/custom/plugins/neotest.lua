return {
  { -- Unit test running framework
    'nvim-neotest/neotest',
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-lua/plenary.nvim',
      'alfaix/neotest-gtest',
      -- your other adapters here
    },
    init = function()
      require('neotest').setup {
        adapters = { require('neotest-gtest').setup {} },
        summary = {
          enabled = true,
          open = 'botright vsplit | vertical resize 50',
          mappings = { target = '>', expand = 'n', jumpto = '<CR>' },
        },
      }
    end,
    config = function()
      require('which-key').register {
        ['<leader>t'] = { name = '[T]est', _ = 'which_key_ignore' },
      }
      vim.keymap.set('n', '<leader>tt', function() require('neotest').run.run() end, { desc = '[T]est current [T]est', noremap = true })
      vim.keymap.set('n', '<leader>tf', function() require('neotest').run.run(vim.fn.expand '%') end, { desc = '[T]est [F]ile', noremap = true })
      vim.keymap.set('n', '<leader>ts', function() require('neotest').run.stop() end, { desc = '[T]est [S]top', noremap = true })
      vim.keymap.set('n', '<leader>ta', function() require('neotest').run.attach() end, { desc = '[T]est [A]ttach', noremap = true })
      vim.keymap.set('n', '<leader>tS', function() require('neotest').summary.toggle() end, { desc = '[T]est [S]ummary', noremap = true })
    end,
  },
}