-- Customize the kickstart configured lspconfig plugin
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('kickstart-lsp-attach-mod', { clear = true }),
  callback = function(event)
    local map = function(keys, func, desc) vim.keymap.set('n', keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc }) end
    local unmap = function(keys) vim.keymap.del('n', keys, { buffer = event.buf }) end

    unmap '<leader>D'
    unmap '<leader>ws'
    unmap '<leader>ds'
    unmap '<leader>rn'
    unmap 'K'

    map('gy', require('telescope.builtin').lsp_type_definitions, '[G]oto T[y]pe Definition')
    map('<leader>sd', require('telescope.builtin').lsp_document_symbols, '[S]earch [D]ocument symbols')
    map('<leader>sw', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[S]earch [W]orkspace symbols')
    map('<leader>cr', vim.lsp.buf.rename, '[C]ode [R]ename')
    map('<leader>d', vim.lsp.buf.hover, 'Hover [D]ocumentation')
  end,
})
