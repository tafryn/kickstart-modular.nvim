-- [[ Custom Keymaps ]]

vim.keymap.del('n', '<C-h>')
vim.keymap.del('n', '<C-j>')
vim.keymap.del('n', '<C-k>')
vim.keymap.del('n', '<C-l>')
-- vim.keymap.del('t', '<Esc><Esc>')
-- vim.keymap.del('n', '<leader>e')
-- vim.keymap.del('n', '<leader>q')

local reference_highlight_toggle = function()
  if vim.b.highlight_current_word == nil or vim.b.highlight_current_word == false then
    vim.b.highlight_current_word = true
  else
    vim.b.highlight_current_word = false
    vim.lsp.buf.clear_references()
  end
end

local quickfix_toggle = function()
  for _, v in pairs(vim.fn.getwininfo()) do
    if v['quickfix'] == 1 then
      return vim.cmd.cclose()
    end
  end
  return vim.cmd.copen()
end

vim.keymap.set('n', '<leader>q', '<cmd>q<CR>', { desc = '[Q]uit' })
vim.keymap.set('n', '<leader>w', '<cmd>w<CR>', { desc = '[W]rite to file' })
vim.keymap.set('n', '<leader>h', '<cmd>nohlsearch<CR>', { desc = 'Clear Search [H]ighlights' })
vim.keymap.set('n', '<leader>H', reference_highlight_toggle, { desc = 'Toggle Reference *H*ighlights' })
vim.keymap.set('n', '<leader>T', '<cmd>tabnew<CR>', { desc = 'Open *T*ab' })
vim.keymap.set('n', '<leader>ce', vim.diagnostic.open_float, { desc = '[C]ode diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>cf', function() vim.lsp.buf.format { asinc = true } end, { desc = '[C]ode [F]ormat' })
vim.keymap.set('n', '<leader>ch', '<cmd>lua vim.diagnostic.hide()<CR>', { desc = '[C]ode [H]ide Diagnostics' })
vim.keymap.set('n', '<leader>cd', '<cmd>lua vim.diagnostic.show()<CR>', { desc = '[C]ode Show [D]iagnostics' })
vim.keymap.set('n', '<leader>gl', '<cmd>Gitsigns blame_line<CR>', { desc = '[G]it [B]lame' })
vim.keymap.set('n', '<leader>gr', '<cmd>Gitsigns reset_hunk<CR>', { desc = '[G]it [R]evert' })
vim.keymap.set('n', '<leader>gh', '<cmd>Gitsigns next_hunk<CR>', { desc = '[G]it Next [H]unk' })
vim.keymap.set('n', '<leader>gt', '<cmd>Gitsigns prev_hunk<CR>', { desc = '[G]it Previous Hunk' })
vim.keymap.set('n', '<leader>go', '<cmd>Gitsigns preview_hunk<CR>', { desc = '[G]it View [O]riginal' })

-- Adjust irritating defaults
vim.keymap.set('', 'gQ', '<Nop>', { noremap = true })
vim.keymap.set('x', 'p', [["_dP]])
vim.keymap.set('n', '*', '*``')

-- Quick/Loc list navigation
vim.keymap.set('n', '<F4>', '<cmd>cp<CR>', { desc = 'Goto previous quickfix list element' })
vim.keymap.set('n', '<F6>', '<cmd>cn<CR>', { desc = 'Goto next quickfix list element' })
vim.keymap.set('n', '<S-F4>', '<cmd>lp<CR>', { desc = 'Goto previous location list element' })
vim.keymap.set('n', '<S-F6>', '<cmd>lne<CR>', { desc = 'Goto next location list element' })
vim.keymap.set('n', '<F7>', '<cmd>lua vim.diagnostic.goto_prev()<CR>', { desc = 'Goto previous diagnostic message' })
vim.keymap.set('n', '<F9>', '<cmd>lua vim.diagnostic.goto_next()<CR>', { desc = 'Goto next diagnostic message' })
-- vim.keymap.set('n', '<C-q>', '<cmd>call QuickFixToggle()<CR>', { desc = 'Toggle the QuickFix List' })
vim.keymap.set('n', '<C-q>', quickfix_toggle, { desc = 'Toggle the QuickFix List' })

-- Spellcheck
vim.keymap.set('n', '<S-F8>', 'z=', { desc = 'Toggle spellcheck' })
vim.keymap.set('n', '<F8>', '<cmd>setlocal spell!<CR>', { desc = 'Toggle spellcheck' })
vim.keymap.set('i', '<F8>', '<cmd>setlocal spell!<CR>', { desc = 'Toggle spellcheck' })

-- Half-page up/down
vim.keymap.set('n', '<PageUp>', '<C-u>', { desc = 'Half-page up' })
vim.keymap.set('n', '<PageDown>', '<C-d>', { desc = 'Half-page down' })
vim.keymap.set('i', '<PageUp>', '<C-o><C-u>', { desc = 'Half-page up' })
vim.keymap.set('i', '<PageDown>', '<C-o><C-d>', { desc = 'Half-page down' })

-- Tab navigation
vim.keymap.set('', '<C-PageUp>', '<cmd>tabprevious<CR>', { desc = 'Previous tab', silent = true })
vim.keymap.set('', '<C-PageDown>', '<cmd>tabnext<CR>', { desc = 'Next tab', silent = true })
vim.keymap.set('', '<C-S-PageUp>', '<cmd>tabmove -1<CR>', { desc = 'Move tab left', silent = true })
vim.keymap.set('', '<C-S-PageDown>', '<cmd>tabmove +1<CR>', { desc = 'Move tab right', silent = true })

-- Dvorak compensators
vim.keymap.set('', 'd', 'h', { noremap = true })
vim.keymap.set('', 'h', 'j', { noremap = true })
vim.keymap.set('', 't', 'k', { noremap = true })
vim.keymap.set('', 'n', 'l', { noremap = true })

vim.keymap.set('', 'D', '^', { noremap = true })
vim.keymap.set('', 'H', '<C-D>', { noremap = true })
vim.keymap.set('', 'T', '<C-U>', { noremap = true })
vim.keymap.set('', 'N', '$', { noremap = true })

vim.keymap.set('', 'j', 'd', { noremap = true })
vim.keymap.set('', 'J', 'D', { noremap = true })
vim.keymap.set('', 'l', 'n', { noremap = true })
vim.keymap.set('', 'L', 'N', { noremap = true })
