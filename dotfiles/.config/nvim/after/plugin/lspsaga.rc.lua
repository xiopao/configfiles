local status, saga = pcall(require, 'lspsaga')
if (not status) then return end

saga.init_lsp_saga {
  finder_request_timeout = 1500,
  finder_action_keys = {
    open = "o",
    vsplit = "s",
    split = "i",
    tabe = "t",
    quit = "q",
    scroll_down = "<C-f>",
    scroll_up = "<C-b>", -- quit can be a table
  },
  server_filetype_map = {
    typescript = 'typescript'
  },
}

local codeaction = require("lspsaga.codeaction")

local opts = { noremap = true, silent = true }
vim.keymap.set('n', ']d', '<Cmd>Lspsaga diagnostic_jump_next<cr>', opts)
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<cr>', opts)
-- vim.keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<cr>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga preview_definition<cr>', opts)
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<cr>', opts)

vim.keymap.set("n", "<leader>ca", codeaction.code_action, { silent = true, desc = "Code action" })
