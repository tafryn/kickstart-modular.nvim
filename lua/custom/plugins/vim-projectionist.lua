return {
  { -- Configure per-project alternate files
    'tpope/vim-projectionist',
    config = function()
      vim.api.nvim_set_keymap('n', 'ga', '<cmd>A<CR>', { desc = 'Alternate file' })
      vim.api.nvim_set_keymap('n', 'go', '<cmd>AV<CR>', { desc = 'VSplit Alternate file' })
    end,
  },
}
