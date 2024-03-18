return {
  { -- Winbar component that uses LSP to show current code context
    'LunarVim/breadcrumbs.nvim',
    dependencies = {
      {
        'SmiteshP/nvim-navic',
        opts = {
          highlight = true,
          lsp = {
            auto_attach = true,
          },
          click = true,
          depth_limit = 0,
          depth_limit_indicator = '..',
        },
      },
    },
    opts = {},
  },
}
