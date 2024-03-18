return {
  { -- Enhanced cursor motion
    'ggandor/leap.nvim',
    config = function()
      local leap = require 'leap'
      leap.create_default_mappings()
      leap.opts.safe_labels = 'sfujklm/SFUJKLMUGZ?'
      vim.api.nvim_set_hl(0, 'LeapLabelPrimary', { link = 'LeapMatch' })
    end,
  },
}
