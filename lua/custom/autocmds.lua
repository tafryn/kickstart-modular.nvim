-- [[ Custom Autocommands ]]

vim.api.nvim_create_autocmd('FileType', {
  desc = 'Unfold and enable spellcheck in git commit contexts',
  pattern = 'gitcommit',
  group = vim.api.nvim_create_augroup('gitcommit', { clear = true }),
  callback = function()
    vim.opt_local.foldenable = false
    vim.opt_local.spell = true
  end,
})

vim.api.nvim_create_autocmd('BufWinEnter', {
  desc = 'Discontiue comment characters when beginning a new line',
  pattern = '*',
  group = vim.api.nvim_create_augroup('newline-comment-chars', { clear = true }),
  callback = function() vim.opt.formatoptions:remove { 'o' } end,
})

vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
  desc = 'Tweak filetype for qml files to enable treesitter highlighting',
  pattern = '*.qml',
  group = vim.api.nvim_create_augroup('qml-treesitter', { clear = true }),
  callback = function() vim.opt.filetype = 'qmljs' end,
})
