-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
--
-- NOTE: Here is where you install your plugins.
require('lazy').setup({
  -- NOTE: Plugins can be added with a link (or for a github repo: 'owner/repo' link).
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

  -- NOTE: Plugins can also be added by using a table,
  -- with the first argument being the link and the following
  -- keys can be used to configure plugin behavior/loading/etc.
  --
  -- Use `opts = {}` to force a plugin to be loaded.
  --


  -- modular approach: using `require 'path/name'` will
  -- include a plugin definition from file lua/path/name.lua

  require 'kickstart/plugins/gitsigns',

  require 'kickstart/plugins/which-key',

  require 'kickstart/plugins/telescope',

  require 'kickstart/plugins/lspconfig',

  require 'kickstart/plugins/conform',

  require 'kickstart/plugins/cmp',

  -- require 'kickstart/plugins/tokyonight',

  require 'kickstart/plugins/todo-comments',

  require 'kickstart/plugins/mini',

  require 'kickstart/plugins/treesitter',

  -- The following two comments only work if you have downloaded the kickstart repo, not just copy pasted the
  -- init.lua. If you want these files, they are in the repository, so you can just download them and
  -- place them in the correct locations.

  -- NOTE: Next step on your Neovim journey: Add/Configure additional plugins for Kickstart
  --
  --  Here are some example plugins that I've included in the Kickstart repository.
  --  Uncomment any of the lines below to enable them (you will need to restart nvim).
  --
  -- require 'kickstart.plugins.debug',
  -- require 'kickstart.plugins.indent_line',
  -- require 'kickstart.plugins.lint',
  -- require 'kickstart.plugins.autopairs',
  -- require 'kickstart.plugins.neo-tree',

  -- NOTE: The import below can automatically add your own plugins, configuration, etc from `lua/custom/plugins/*.lua`
  --    This is the easiest way to modularize your config.
  --
  --  Uncomment the following line and add your plugins to `lua/custom/plugins/*.lua` to get going.
  --    For additional information, see `:help lazy.nvim-lazy.nvim-structuring-your-plugins`
  -- { import = 'custom.plugins' },

  -- Tweak included plugins
  require 'custom/kickstart-plugins/todo-comments',
  require 'custom/kickstart-plugins/cmp',
  require 'custom/kickstart-plugins/fidget',
  require 'custom/kickstart-plugins/which-key',
  require 'custom/kickstart-plugins/more-mini',
  require 'custom/kickstart-plugins/conform',

  -- Add additional custom plugins
  require 'custom/plugins/gruvbox-material',
  require 'custom/plugins/dial',
  require 'custom/plugins/nvim-bqf',
  require 'custom/plugins/diffview',
  require 'custom/plugins/harpoon',
  require 'custom/plugins/tabby',
  require 'custom/plugins/vim-strip-trailing-whitespace',
  require 'custom/plugins/leap',
  require 'custom/plugins/flit',
  require 'custom/plugins/peek',
  require 'custom/plugins/nvim-scissors',
  require 'custom/plugins/neotest',
  require 'custom/plugins/vim-projectionist',
  require 'custom/plugins/vim-rsi',
  require 'custom/plugins/vim-wordmotion',
  require 'custom/plugins/toggleterm',
  require 'custom/plugins/nvim-tree',
  require 'custom/plugins/project',
  require 'custom/plugins/breadcrumbs',
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

require 'custom/kickstart-plugins/lspconfig'

-- vim: ts=2 sts=2 sw=2 et
