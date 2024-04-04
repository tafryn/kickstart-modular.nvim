return {
  { -- Per project quick access to the current set of important buffers
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = 'nvim-lua/plenary.nvim',
    init = function() require('harpoon').setup {} end,
    config = function()
      local harpoon = require 'harpoon'
      vim.keymap.set('n', '<S-m>', function()
        harpoon:list():append()
        vim.notify '󱡅 marked file'
      end, { desc = 'Harpoon current buffer', noremap = true })
      vim.keymap.set('n', '-', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = 'Toggle harpoon window', noremap = true })
      vim.keymap.set('n', '<C-h>', function() harpoon:list():select(1) end, { desc = 'Select first harpoon buffer', noremap = true })
      vim.keymap.set('n', '<C-t>', function() harpoon:list():select(2) end, { desc = 'Select second harpoon buffer', noremap = true })
      vim.keymap.set('n', '<C-n>', function() harpoon:list():select(3) end, { desc = 'Select third harpoon buffer', noremap = true })
      vim.keymap.set('n', '<C-s>', function() harpoon:list():select(4) end, { desc = 'Select fourth harpoon buffer', noremap = true })
      vim.keymap.set('n', '<C-A-N>', function() harpoon:list():next() end, { desc = 'Select next harpoon buffer', noremap = true })
      vim.keymap.set('n', '<C-A-P>', function() harpoon:list():prev() end, { desc = 'Select previous harpoon buffer', noremap = true })
    end,
  },
}
