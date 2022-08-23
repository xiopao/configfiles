local status, bufferline = pcall(require, 'bufferline')
if (not status) then return end

bufferline.setup {
  options = {
    separator_style = 'slant',
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true,
    offsets = {
      { filetype = "NvimTree", text = "", padding = 1 },
      { filetype = "neo-tree", text = "", padding = 1 },
      { filetype = "Outline", text = "", padding = 1 },
    },
  },
  highlights = {
    separator = {
      fg = '#16181c',
      bg = '#262931',
    },
    separator_selected = {
      fg = '#16181c',
    },
    background = {
      fg = '#657b83',
      bg = '#262931'
    },
    buffer_selected = {
      fg = '#fdf6e3',
      bold = true,
    },
    fill = {
      bg = '#16181c'
    }
  },
}

vim.api.nvim_set_keymap('n', 'L', '<cmd>BufferLineCycleNext<cr>', {})
vim.api.nvim_set_keymap('n', 'H', '<cmd>BufferLineCyclePrev<cr>', {})
