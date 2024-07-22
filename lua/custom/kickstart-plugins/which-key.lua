-- Customize the kickstart configured todo-comments plugin
return {
  {
    'folke/which-key.nvim',
    opts = {
      plugins = { presets = { operators = false } },
    },
    config = function(_, opts) -- This is the function that runs, AFTER loading
      require('which-key').setup(opts)

      -- Document existing key chains
      require('which-key').add {
        { '<leader>c', group = '[C]ode' },
        { '<leader>s', group = '[S]earch' },
        { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } },
      }
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
