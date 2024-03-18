return {
  { -- Snippet customization
    'chrisgrieser/nvim-scissors',
    dependencies = 'nvim-telescope/telescope.nvim', -- optional
    opts = {
      snippetDir = vim.fn.stdpath 'config' .. '/snippets',
    },
    config = function()
      require('which-key').register {
        ['<leader>S'] = { name = '[S]nippit', _ = 'which_key_ignore' },
      }
      vim.keymap.set('n', '<leader>Se', function() require('scissors').editSnippet() end, { desc = '[S]nippet [E]dit', noremap = true })
      vim.keymap.set('n', '<leader>Sn', function() require('scissors').addNewSnippet() end, { desc = '[S]nippet [N]ew', noremap = true })
    end,
  },
}
