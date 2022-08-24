local status, bufferline = pcall(require, 'bufferline')
if (not status) then return end

bufferline.setup {
  options = {
    indicator = { style = "none" },
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true,
    offsets = {
      { filetype = "NvimTree", text = "NvimTree", padding = 1 },
      { filetype = "neo-tree", text = "neo-tree", padding = 1 },
      { filetype = "Outline", text = "Outline", padding = 1 },
    },
    sort_by = 'insert_after_current'
  },
  highlights = {
    modified_selected = {
      bg = '#1f1f28',
    },
    modified_visible = {
      bg = '#1f1f28',
    },
    modified = {
      bg = '#1f1f28',
    },
    separator = {
      fg = '#1f1f28',
      bg = '#1f1f28',
    },
    separator_visible = {
      fg = '#1f1f28',
      bg = '#1f1f28',
    },
    separator_selected = {
      fg = '#1f1f28',
      bg = '#1f1f28',
    },
    indicator_selected = {
      fg = '#1f1f28',
      bg = '#1f1f28',
    },
    background = {
      fg = '#313F44',
      bg = '#1f1f28',
    },
    buffer_selected = {
      fg = '#fdf6e3',
      bg = '#1f1f28',
      bold = true,
      italic = false,
    },
    buffer_visible = {
      fg = '#fdf6e3',
      bg = '#1f1f28'
    },
    fill = {
      bg = '#1f1f28'
    },
    duplicate_selected = {
      fg = '#ffffff',
      bg = '#1f1f28',
      italic = false
    },
    duplicate_visible = {
      fg = '#ffffff',
      bg = '#1f1f28',
      italic = false
    },
    duplicate = {
      fg = '#313F44',
      bg = '#1f1f28',
      italic = false
    },
  },
}

vim.api.nvim_set_keymap('n', 'L', '<cmd>BufferLineCycleNext<cr>', {})
vim.api.nvim_set_keymap('n', 'H', '<cmd>BufferLineCyclePrev<cr>', {})
