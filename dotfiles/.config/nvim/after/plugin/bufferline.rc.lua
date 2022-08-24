local status, bufferline = pcall(require, 'bufferline')
if (not status) then return end

bufferline.setup {
  options = {
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true,
    offsets = {
      { filetype = "NvimTree", text = "NvimTree", padding = 1 },
      { filetype = "neo-tree", text = "neo-tree", padding = 1 },
      { filetype = "Outline", text = "Outline", padding = 1 },
    },
  },
  highlights = {
    separator = {
      fg = '#16181c',
    },
    separator_selected = {
      fg = '#16181c',
    },
    background = {
      fg = '#313F44',
    },
    indicator_selected = {
      fg = '#192330'
    },
    buffer_selected = {
      fg = '#fdf6e3',
      bold = true,
      italic = false,
    },
    fill = {
      bg = '#16181c'
    },
    duplicate_selected = {
      fg = '#ffffff',
      italic = false
    },
    duplicate = {
      fg = '#313F44',
      bg = '#192330',
      italic = false
    },
  },
}

vim.api.nvim_set_keymap('n', 'L', '<cmd>BufferLineCycleNext<cr>', {})
vim.api.nvim_set_keymap('n', 'H', '<cmd>BufferLineCyclePrev<cr>', {})
