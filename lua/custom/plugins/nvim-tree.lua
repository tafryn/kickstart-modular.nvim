return {
  { -- File exploror sidebar
    'nvim-tree/nvim-tree.lua',
    config = function()
      local function custom_tree_attach(bufnr)
        local api = require 'nvim-tree.api'
        local function opts(desc) return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true } end

        api.config.mappings.default_on_attach(bufnr)
        vim.keymap.del('n', 's', opts '')
        vim.keymap.del('n', 'S', opts '')
        vim.keymap.set('n', 'n', api.node.open.edit, opts 'Open')
        vim.keymap.set('n', 'd', api.node.navigate.parent_close, opts 'Close Directory')
        vim.keymap.set('n', 'v', api.node.open.vertical, opts 'Open: Vertical Split')
      end

      require('nvim-tree').setup { on_attach = custom_tree_attach, git = { enable = false }, sync_root_with_cwd = true }

      vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<CR>', { desc = 'Show file [E]xplorer', noremap = true })
    end,
  },
}
