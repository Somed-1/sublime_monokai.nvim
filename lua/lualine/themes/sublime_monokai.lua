local dark = {
  bg       = "#272822", -- Monokai dark background
  fg       = "#F8F8F2", -- Light foreground
  normalFG = "#F8F8F2", -- Main text
  green    = "#A6E22E", -- Monokai green
  red      = "#F92672", -- Monokai red
  purple   = "#AE81FF", -- Monokai purple
  yellow   = "#E6DB74", -- Monokai yellow
  blueDark = "#3E8EDE", -- Darker blue
  orange   = "#FD971F", -- Monokai orange
  cyan     = "#66D9EF", -- Monokai cyan
  grey3    = "#383830", -- Darker grey
  grey5    = "#49483E", -- Slightly lighter grey
  grey7    = "#75715E", -- Comment grey
  grey20   = "#4D4D4D", -- Muted grey
  separator = "#505354" -- Separator color
}

local light = {
  bg       = "#FFFFFF", -- Pure white background
  fg       = "#272822", -- Dark foreground
  normalFG = "#272822", -- Main text
  green    = "#86B300", -- Softer green
  red      = "#FF5F5F", -- Brighter red
  purple   = "#9E86C8", -- Muted purple
  yellow   = "#E4BF7A", -- Softer yellow
  blueDark = "#3A8EDB", -- Calm blue
  orange   = "#F79533", -- Soft orange
  cyan     = "#5BC0EB", -- Light cyan
  grey3    = "#E5E5E5", -- Light grey
  grey5    = "#D4D4D4", -- Medium grey
  grey7    = "#B0B0B0", -- Comment grey
  grey20   = "#999999", -- Muted grey
  separator = "#C0C0C0" -- Separator color
}

local t = dark

if (vim.o.background == "light") then
  t = light
end

return {
  -- normal = {
  --   a = { bg = t.yellow, fg = t.fg, gui = "bold" },
  --   b = { bg = t.grey7, fg = t.fg },
  --   c = { bg = t.grey3, fg = t.fg }
  -- },
  -- insert = {
  --   a = { bg = t.blueDark, fg = t.fg, gui = "bold" },
  --   b = { bg = t.grey7, fg = t.blueDark },
  --   c = { bg = t.grey3, fg = t.fg }
  -- },
  -- visual = {
  --   a = { bg = t.purple, fg = t.fg, gui = "bold" },
  --   b = { bg = t.grey7, fg = t.purple },
  --   c = { bg = t.grey3, fg = t.fg }
  -- },
  -- replace = {
  --   a = { bg = t.red, fg = t.fg, gui = "bold" },
  --   b = { bg = t.grey7, fg = t.red },
  --   c = { bg = t.grey3, fg = t.fg }
  -- },
  -- command = {
  --   a = { bg = t.green, fg = t.fg, gui = "bold" },
  --   b = { bg = t.grey7, fg = t.green },
  --   c = { bg = t.grey3, fg = t.fg }
  -- },
  -- inactive = {
  --   a = { bg = t.grey20, fg = t.fg },
  --   b = { bg = t.grey5, fg = t.fg },
  --   c = { bg = t.grey5, fg = t.fg }
  -- },
  -- terminal = {
  --   a = { bg = t.cyan, fg = t.fg, gui = "bold" },
  --   b = { bg = t.grey7, fg = t.cyan },
  --   c = { bg = t.grey3, fg = t.fg }
  -- },
  -- debug = {
  --   a = { bg = t.orange, fg = t.fg, gui = "bold" },
  --   b = { bg = t.grey7, fg = t.orange },
  --   c = { bg = t.grey3, fg = t.fg }
  -- },
  -- separator = t.separator
}

