return {
  { -- F/T motions on steroids
    'ggandor/flit.nvim',
    config = function()
      require('flit').setup {
        keys = { f = 'f', F = 'F', t = 'k', T = 'K' },
      }
    end,
  },
}
