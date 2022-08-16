local status, ls = pcall(require, 'luasnip')
if (not status) then return end

require('luasnip.loaders.from_vscode').lazy_load()

ls.config.set_config({
  enable_autosnippets = true,
  history = true,
  updateevents = 'TextChanged, TextChanedI'
})
