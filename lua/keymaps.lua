vim.keymap.set('n', '<leader>ps', function()
  require('telescope.builtin').grep_string { search = vim.fn.input 'Grep > ' }
end, { desc = 'Grep string' })

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move line down' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move line up' })

vim.keymap.set('n', 'J', 'mzJ`z', { desc = 'Join lines' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Move half page down' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Move half page up' })

-- greatest remap ever
vim.keymap.set('x', '<leader>p', [["_dP]], { desc = 'Paste without yanking' })

vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]], { desc = 'Delete without yanking' })

vim.keymap.set('n', 'Q', '<nop>', { desc = 'Disable exit vim using Q' })
vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, { desc = 'Format code' })

vim.keymap.set('n', '<leader>rp', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = 'Replace word under cursor' })
