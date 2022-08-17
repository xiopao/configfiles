local status, smart_split = pcall(require, 'smart-splits')
if (not status) then return end

smart_split.setup {
  ignored_filetypes = {
    "nofile",
    "quickfix",
    "qf",
    "prompt",
  },
  ignored_buftypes = { "nofile" },
}
