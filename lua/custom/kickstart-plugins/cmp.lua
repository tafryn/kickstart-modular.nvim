-- Customize the kickstart configured nvim-cmp plugin
return {
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      {
        'L3MON4D3/LuaSnip',
        dependencies = {
          'rafamadriz/friendly-snippets',
        },
        config = function() require('luasnip.loaders.from_vscode').lazy_load() end,
      },
      'andersevenrud/cmp-tmux',
    },
  },
}
