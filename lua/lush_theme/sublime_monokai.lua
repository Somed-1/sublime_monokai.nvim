local lush = require("lush")
local hsl = lush.hsl
local config = require("sublime_monokai").config
local make_theme = require("lush_theme.make_theme")

-- Function to convert hex to HSL using lush
-- For brevity, here we manually substitute the HSL numeric values

local dark = {
	bg = hsl(70, 8, 15),

	bgFloat = hsl(60, 10, 22),
	fg = hsl(60, 100, 97),
	cursor = hsl(60, 100, 97),
	keyword = hsl(330, 100, 58),
	comment = hsl(60, 10, 41),
	punctuation = hsl(60, 100, 97),
	method = hsl(89, 76, 55),
	type = hsl(191, 83, 67),
	string = hsl(49, 77, 68),

	number = hsl(262, 100, 76),
	constant = hsl(262, 100, 76),
	tag = hsl(330, 100, 58),
	attribute = hsl(89, 76, 55),
	property = hsl(32, 98, 56),
	parameter = hsl(32, 98, 56),
	label = hsl(191, 83, 67),
	module = hsl(330, 100, 58),

	primary = hsl(191, 83, 67),
	selection = hsl(60, 10, 41),
	search = hsl(60, 10, 41),
	diffAdd = hsl(89, 76, 55),
	diffChange = hsl(191, 83, 67),
	diffDelete = hsl(330, 100, 58),

	added = hsl(89, 76, 55),
	changed = hsl(191, 83, 67),
	deleted = hsl(330, 100, 58),
	diffText = hsl(191, 83, 67),
	error = hsl(330, 100, 58),
	errorBG = hsl(60, 100, 97),
	warning = hsl(32, 98, 56),
	warningBG = hsl(60, 100, 97),
	info = hsl(191, 83, 67),
	infoBG = hsl(60, 10, 15),
	hint = hsl(262, 100, 76),
	mergeCurrent = hsl(49, 77, 68),

	mergeCurrentLabel = hsl(60, 100, 97),
	mergeIncoming = hsl(49, 77, 68),
	mergeIncomingLabel = hsl(60, 100, 97),
	mergeParent = hsl(60, 10, 41),
	mergeParentLabel = hsl(60, 100, 97),
	copilot = hsl(89, 76, 55),

	terminalBlack = hsl(240, 10, 15),
	terminalRed = hsl(330, 100, 58),
	terminalGreen = hsl(89, 76, 55),
	terminalYellow = hsl(49, 77, 68),
	terminalBlue = hsl(191, 83, 67),
	terminalMagenta = hsl(262, 100, 76),
	terminalCyan = hsl(182, 60, 53),
	terminalWhite = hsl(60, 100, 97),

	terminalBrightBlack = hsl(60, 10, 41),
	terminalBrightRed = hsl(317, 100, 67),
	terminalBrightGreen = hsl(75, 68, 60),
	terminalBrightYellow = hsl(37, 87, 71),
	terminalBrightBlue = hsl(191, 83, 67),
	terminalBrightMagenta = hsl(262, 100, 76),
	terminalBrightCyan = hsl(175, 52, 80),
	terminalBrightWhite = hsl(0, 0, 100),

	rainbowRed = hsl(330, 100, 58),
	rainbowYellow = hsl(49, 77, 68),
	rainbowBlue = hsl(191, 83, 67),
	rainbowOrange = hsl(32, 98, 56),
	rainbowGreen = hsl(89, 76, 55),
	rainbowViolet = hsl(262, 100, 76),

	rainbowCyan = hsl(182, 60, 53),
	rainbowIndigo = hsl(256, 96, 65),
}

local light = {
	bg = hsl(0, 0, 100),
	bgFloat = hsl(0, 0, 94),
	fg = hsl(240, 10, 15),
	cursor = hsl(0, 0, 0),
	keyword = hsl(334, 100, 42),
	comment = hsl(0, 0, 65),
	punctuation = hsl(45, 2, 30),
	method = hsl(120, 100, 25),
	type = hsl(207, 59, 49),
	string = hsl(40, 99, 39),
	number = hsl(277, 29, 51),
	constant = hsl(277, 29, 51),
	tag = hsl(334, 100, 42),
	attribute = hsl(120, 100, 25),
	property = hsl(24, 100, 42),
	parameter = hsl(33, 100, 34),
	label = hsl(207, 59, 49),
	module = hsl(334, 100, 42),

	primary = hsl(207, 59, 49),

	selection = hsl(0, 0, 84),

	search = hsl(48, 100, 50),

	diffAdd = hsl(89, 76, 55),
	diffChange = hsl(207, 59, 49),
	diffDelete = hsl(330, 100, 58),
	added = hsl(75, 67, 44),
	changed = hsl(207, 59, 49),
	deleted = hsl(334, 100, 42),
	diffText = hsl(207, 59, 49),

	error = hsl(0, 100, 50),
	errorBG = hsl(0, 100, 94),
	warning = hsl(32, 98, 56),
	warningBG = hsl(38, 100, 95),

	info = hsl(207, 59, 49),
	infoBG = hsl(207, 76, 92),

	hint = hsl(277, 29, 51),

	mergeCurrent = hsl(49, 77, 68),
	mergeCurrentLabel = hsl(240, 10, 15),
	mergeIncoming = hsl(49, 77, 68),
	mergeIncomingLabel = hsl(240, 10, 15),
	mergeParent = hsl(0, 0, 65),
	mergeParentLabel = hsl(240, 10, 15),

	copilot = hsl(120, 100, 25),

	terminalBlack = hsl(60, 100, 97),

	terminalRed = hsl(330, 100, 58),
	terminalGreen = hsl(89, 76, 55),
	terminalYellow = hsl(49, 77, 68),
	terminalBlue = hsl(191, 83, 67),
	terminalMagenta = hsl(262, 100, 76),

	terminalCyan = hsl(182, 60, 53),
	terminalWhite = hsl(240, 10, 15),

	terminalBrightBlack = hsl(60, 10, 41),

	terminalBrightRed = hsl(317, 100, 67),
	terminalBrightGreen = hsl(75, 68, 60),
	terminalBrightYellow = hsl(37, 87, 71),
	terminalBrightBlue = hsl(191, 83, 67),
	terminalBrightMagenta = hsl(262, 100, 76),
	terminalBrightCyan = hsl(175, 52, 80),
	terminalBrightWhite = hsl(0, 0, 0),

	rainbowRed = hsl(330, 100, 58),
	rainbowYellow = hsl(49, 77, 68),
	rainbowBlue = hsl(191, 83, 67),
	rainbowOrange = hsl(32, 98, 56),
	rainbowGreen = hsl(89, 76, 55),
	rainbowViolet = hsl(262, 100, 76),

	rainbowCyan = hsl(182, 60, 53),
	rainbowIndigo = hsl(256, 96, 65),
}

local t = dark
if vim.o.background == "light" then
	t = light
end

return t
