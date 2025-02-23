local dark = {
  bg       = "#272822", -- Monokai dark background
  fg       = "#F8F8F2", -- Light foreground
  normalFG = "#F8F8F2", -- Main text
  green    = "#A6E22E", -- Monokai green
  red      = "#F92672", -- Monokai red
  purple   = "#AE81FF", -- Monokai purple
  yellow   = "#E6DB74", -- Monokai yellow
  blueDark = "#3E8EDE", -- Darker blue
  grey3    = "#383830", -- Darker grey
  grey5    = "#49483E", -- Slightly lighter grey
  grey7    = "#75715E", -- Comment grey
  grey20   = "#4D4D4D", -- Muted grey
}

local light = {
  bg       = "#272822", -- Monokai dark background
  fg       = "#F8F8F2", -- Light foreground
  normalFG = "#F8F8F2", -- Main text
  green    = "#A6E22E", -- Monokai green
  red      = "#F92672", -- Monokai red
  purple   = "#AE81FF", -- Monokai purple
  yellow   = "#E6DB74", -- Monokai yellow
  blueDark = "#3E8EDE", -- Darker blue
  grey3    = "#383830", -- Darker grey
  grey5    = "#49483E", -- Slightly lighter grey
  grey7    = "#75715E", -- Comment grey
  grey20   = "#4D4D4D", -- Muted grey
}

local t = dark

if (vim.o.background == "light") then
  t = light
end

return {
  normal = {
    a = { bg = t.yellow, fg = t.fg, gui = "bold" },
    b = { bg = t.grey7, fg = t.fg },
    c = { bg = t.grey3, fg = t.fg }
  },
  insert = {
    a = { bg = t.blueDark, fg = t.fg, gui = "bold" },
    b = { bg = t.grey7, fg = t.blueDark },
    c = { bg = t.grey3, fg = t.fg }
  },
  visual = {
    a = { bg = t.purple, fg = t.fg, gui = "bold" },
    b = { bg = t.grey7, fg = t.purple },
    c = { bg = t.grey3, fg = t.fg }
  },
  replace = {
    a = { bg = t.red, fg = t.fg, gui = "bold" },
    b = { bg = t.grey7, fg = t.red },
    c = { bg = t.grey3, fg = t.fg }
  },
  command = {
    a = { bg = t.green, fg = t.fg, gui = "bold" },
    b = { bg = t.grey7, fg = t.green },
    c = { bg = t.grey3, fg = t.fg }
  },
  inactive = {
    a = { bg = t.grey20, fg = t.grey3 },
    b = { bg = t.grey5, fg = t.grey20 },
    c = { bg = t.grey5, fg = t.grey20 }
  }
}

