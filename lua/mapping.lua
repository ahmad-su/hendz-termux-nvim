-- This is equivalent as: vim.keymap.set('n', '<C-e>', '<cmd>:NERDTreeToggle<cr>')
vim.keymap.set('n', '<C-e>', vim.cmd.NERDTreeToggle)
vim.keymap.set('n', '<C-_>', vim.cmd.CommentToggle)
vim.keymap.set('x', '<C-_>', ":<C-u>call CommentOperator(visualmode())<CR>")
