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
      require('which-key').register {
        ['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
        ['<leader>g'] = { name = '[G]it', _ = 'which_key_ignore' },
        ['<leader>s'] = { name = '[S]earch', _ = 'which_key_ignore' },
      }
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
