---@diagnostic disable: undefined-global
local sublime_monokai = require("sublime_monokai")
local config = sublime_monokai.config
local load = sublime_monokai.load

if (config.style == "dark") then
  vim.o.background = "dark"
elseif (config.style == "light") then
  vim.o.background = "light"
end

load()
