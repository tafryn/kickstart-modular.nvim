return {
  { -- Improvements for the quickfix list
    'kevinhwang91/nvim-bqf',
    event = 'BufRead',
    opts = {},
    init = function() require('bqf').setup { func_map = { tab = '' } } end,
  },
}
