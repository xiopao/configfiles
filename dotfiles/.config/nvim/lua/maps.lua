local keymap = vim.keymap

-- Do not yank with x
keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Clear highlight search
keymap.set('n', '<leader>h', ':noh<Return>', { silent = true, desc = "Turn off highlight" })

-- Close tab
keymap.set('n', '<leader>q', ':q!<Return>', { silent = true, desc = "Close file" })

-- Save file
keymap.set('n', '<leader>w', ':w<Return>', { silent = true, desc = "Save file" })

-- New tab
keymap.set('n', '<C-t>', ':tabedit<Return>', { silent = true })
-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true, desc = "Split window" })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true, desc = "Vertical split window" })

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')
