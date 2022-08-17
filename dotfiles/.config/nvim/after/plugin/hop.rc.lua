local status, hop = pcall(require, 'hop')
if (not status) then return end

hop.setup {
  keys = 'etovxqpdygfblzhckisuran',
  case_insensitive = false,
  multi_windows = true
}

-- place this in one of your configuration file(s)
vim.api.nvim_set_keymap('', 'f',
  "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR })<cr>", {})
vim.api.nvim_set_keymap('', 'F',
  "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR })<cr>", {})
