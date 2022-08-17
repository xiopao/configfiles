local status, which_key = pcall(require, 'which-key')
if (not status) then return end

which_key.setup {}

which_key.register({
  [";"] = {
    f = "Find files",
    r = "Live grep",
    t = "Help tags",
    e = "Diagnostics",
    [";"] = "Resume Telescope",
  },
  ["\\"] = {
    ["\\"] = "Show all buffers"
  },
  ["<leader>"] = {
    hs = "Stage hunk",
    hr = "Reset hunk",
    hS = "Stage buffer",
    hR = "Reset buffer",
    hu = "Undo staged hunk",
    hp = "Preview hunk",
    hb = "Git blame line",
    tb = "Toggle current line blame",
    hd = "Diff this file",
    hD = "Diff this <>",
    td = "Toggle deleted",
  },
  s = {
    f = "File browser",
  },
  g = {
    D = "Jumps to the declaration",
    i = "List all implementations",
    p = "Preview definition",
    r = "Rename variable"
  }
}, {})
