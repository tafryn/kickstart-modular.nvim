return {
  { -- Modified gruvbox colorscheme with softer contrast
    'sainnhe/gruvbox-material',
    priority = 1000, -- make sure to load this before all the other start plugins
    init = function()
      -- gruvbox-material must have options set before it is loaded
      vim.g.gruvbox_material_background = 'hard'
      vim.g.gruvbox_material_transparent_background = 1
      vim.g.gruvbox_material_disable_italic_comment = 1

      -- Load the colorscheme here.
      vim.cmd.colorscheme 'gruvbox-material'

      -- You can configure highlights by doing something like
      vim.cmd.hi 'Comment gui=none'
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
