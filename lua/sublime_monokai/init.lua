---@diagnostic disable: undefined-global
local lush = require("lush")
local hsl = lush.hsl
local M = {}

local isGui = vim.fn.has("gui_running") == 1

local defaultConfig = {
  style = "auto", -- auto | light | dark
  transparent = false,
  italics = false,
  terminal = isGui,
  guicursor = false,
  dark = {},
  light = {},
  overrides = {},
}

M.config = defaultConfig

local function replace_hex_with_hsl(colors)
    local new_colors = {}
    for key, hex in pairs(colors) do
        new_colors[key] = hsl(hex)  -- Convert hex to HSL using Lush
    end
    return new_colors
end

function M.setup(options)
  -- print("Before merge:", vim.inspect(M.config))
  M.config = vim.tbl_deep_extend("force", {}, defaultConfig, options or {})
  M.config.dark = replace_hex_with_hsl(M.config.dark)
  M.config.light = replace_hex_with_hsl(M.config.light)
  -- print("After merge:", vim.inspect(M.config))

  -- Set cursor color
  if M.config.guicursor then
    vim.opt.guicursor = "n-v-c-sm:block-Cursor,i-ci-ve:ver25-Cursor,r-cr-o:hor20-Cursor"
  end
end

function M.load()
  local make_theme = require("lush_theme.make_theme").make_theme
  local t = require("lush_theme.sublime_monokai")

  local config_t = M.config.dark
  if M.config.style == "light" then
    config_t = M.config.light
  end

  t = vim.tbl_deep_extend("force", {}, t, config_t or {})
  print(t)
  local theme = make_theme(t, M.config)
  vim.g.colors_name = "sublime_monokai"
  package.loaded["lush_theme.sublime_monokai"] = nil

  -- transparent
  if M.config.transparent == true and not isGui then
    theme = lush.extends({ theme }).with(function()
      return {
        Normal({ theme.Normal, bg = "NONE" }), -- normal text
        NormalSB({ bg = "NONE" }),
        BufferlineFill({ bg = "NONE" }),
        TroubleNormal({ bg = "NONE" }),
        NvimTreeNormal({ bg = "NONE" }),
        NvimTreeNormalNC({ bg = "NONE" }),
        BufferInactive({ theme.BufferInactive, bg = "NONE" }),
        BufferVisible({ theme.BufferCurrent }),
      }
    end)
  end

  theme = lush.extends({ theme }).with(function ()
    return M.config.overrides
  end)

  -- italics
  if M.config.italics == true then
    theme = lush.extends({ theme }).with(function(injected_functions)
      local sym = injected_functions.sym
      return {
        Comment({ theme.Comment, gui = "italic" }),
        sym("@type")({ theme["@type"], gui = "italic" }),
        sym("@type.builtin")({ theme["@type.builtin"], gui = "italic" }),
        sym("@field")({ theme["@field"], gui = "italic" }),
        sym("@property")({ theme["@property"], gui = "italic" }),
        sym("@variable.parameter")({ theme["@variable.parameter"], gui = "italic" }),
        sym("@variable.builtin")({ theme["@variable.builtin"], gui = "italic" }),
      }
    end)
  end

  -- bufferline
  local bufferlineInstalled = pcall(require, "bufferline")
  if bufferlineInstalled then
    theme = lush.extends({ theme }).with(function()
      return {
        TabLineSel({ bg = theme.Statement.fg }), -- tab pages line, active tab page label
      }
    end)
  end

  lush(theme)
end

return M
