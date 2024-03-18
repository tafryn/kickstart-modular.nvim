return {
  { -- Enhanced increment and decrement operations
    'monaqa/dial.nvim',
    opts = {},
    config = function()
      vim.api.nvim_set_keymap('', '<C-a>', '<Plug>(dial-increment)', {})
      vim.api.nvim_set_keymap('', '<C-x>', '<Plug>(dial-decrement)', {})
    end,
  },
}
