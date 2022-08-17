local status, bufferline = pcall(require, 'bufferline')
if (not status) then return end

bufferline.setup {
  options = {
    mode = 'tabs',
    separator_style = 'slant',
    always_show_bufferline = true,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true
  },
  highlights = {
    separator = {
      fg = '#25252f',
      bg = '#242431'
    },
    separator_selected = {
      fg = '#25252f'
    },
    background = {
      fg = '#657b83',
      bg = '#242431'
    },
    buffer_selected = {
      fg = '#fdf6e3',
      bold = true
    },
    fill = {
      bg = '#25252f'
    }
  }
}

vim.api.nvim_set_keymap('n', 'L', '<cmd>BufferLineCycleNext<cr>', {})
vim.api.nvim_set_keymap('n', 'H', '<cmd>BufferLineCyclePrev<cr>', {})
