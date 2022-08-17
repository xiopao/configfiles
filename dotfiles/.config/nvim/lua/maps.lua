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

-- bufdelete plugin
-- Buf Delete
keymap.set('n', '<leader>q', ':Bdelete<Return>', { silent = true, desc = "Close window" })

-- Save file
keymap.set('n', '<leader>w', ':w<Return>', { silent = true, desc = "Save file" })
keymap.set('n', '<leader>s', ':w!<Return>', { silent = true, desc = "Force save file" })

-- Quit
keymap.set('n', '<leader>c', ':q<Return>', { silent = true, desc = "Close window" })

-- New tab
keymap.set('n', '<C-t>', ':tabedit<Return>', { silent = true })
-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true, desc = "Split window" })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true, desc = "Vertical split window" })


-- Smart Plits Plugin
-- Resize window
keymap.set('n', '<C-Up>', function() require("smart-splits").resize_up() end, { desc = "Resize split up" })
keymap.set('n', '<C-Down>', function() require("smart-splits").resize_down() end, { desc = "Resize split down" })
keymap.set('n', '<C-Left>', function() require("smart-splits").resize_left() end, { desc = "Resize split left" })
keymap.set('n', '<C-Right>', function() require("smart-splits").resize_right() end, { desc = "Resize split right" })
-- Better window navigation
keymap.set('n', '<C-k>', function() require("smart-splits").move_cursor_up() end, { desc = "Resize split up" })
keymap.set('n', '<C-j>', function() require("smart-splits").move_cursor_down() end, { desc = "Resize split down" })
keymap.set('n', '<C-l>', function() require("smart-splits").move_cursor_left() end, { desc = "Resize split left" })
keymap.set('n', '<C-h>', function() require("smart-splits").move_cursor_right() end, { desc = "Resize split right" })
