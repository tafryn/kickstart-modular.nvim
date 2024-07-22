return {
  { -- Snippet customization
    'chrisgrieser/nvim-scissors',
    dependencies = 'nvim-telescope/telescope.nvim', -- optional
    opts = {
      snippetDir = vim.fn.stdpath 'config' .. '/snippets',
    },
    config = function()
      require('which-key').add {
        { '<leader>S', group = '[S]nippit' },
      }
      vim.keymap.set('n', '<leader>Se', function() require('scissors').editSnippet() end, { desc = '[S]nippet [E]dit', noremap = true })
      vim.keymap.set('n', '<leader>Sn', function() require('scissors').addNewSnippet() end, { desc = '[S]nippet [N]ew', noremap = true })
    end,
  },
}
