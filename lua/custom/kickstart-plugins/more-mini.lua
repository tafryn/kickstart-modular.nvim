return {
  { -- Collection of various small independent plugins/modules
    'echasnovski/mini.nvim',
    init = function()
      require('mini.surround').setup {
        mappings = { add = 'ys', delete = 'js', find = '', find_left = '', highlight = '', replace = 'cs', update_n_lines = '' },
      }

      -- Add indentation textobjects
      local mini_indentscope = require 'mini.indentscope'
      mini_indentscope.setup { draw = { animation = mini_indentscope.gen_animation.none() }, symbol = '' }

      require('mini.bracketed').setup()

      local starter_footer = (function()
        local timer = vim.loop.new_timer()
        local lazy_startup_stat = 0
        timer:start(
          0,
          1000,
          vim.schedule_wrap(function()
            lazy_startup_stat = require('lazy').stats().startuptime
            MiniStarter.refresh()
            if vim.bo.filetype == 'starter' then
              timer:stop()
              return
            end
          end)
        )
        return function() return 'Startup: ' .. lazy_startup_stat .. 'ms' end
      end)()

      local starter = require 'mini.starter'
      starter.setup {
        evaluate_single = true,
        items = {
          starter.sections.builtin_actions(),
          starter.sections.recent_files(8, false),
          -- starter.sections.recent_files(4, true),
        },
        content_hooks = {
          starter.gen_hook.adding_bullet(),
          starter.gen_hook.indexing('all', { 'Builtin actions' }),
          starter.gen_hook.padding(3, 2),
        },
        footer = starter_footer,
      }
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
