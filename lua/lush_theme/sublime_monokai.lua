local lush = require("lush")
local hsl = lush.hsl
local config = require("sublime_monokai").config
local make_theme = require("lush_theme.make_theme")

local function hex(r, g, b)
	return hsl.from_rgb(r, g, b)
end

local dark = {
	bg = hex(0x27, 0x28, 0x22),
	bgFloat = hex(0x38, 0x38, 0x30),
	fg = hex(0xF8, 0xF8, 0xF2),
	cursor = hex(0xF8, 0xF8, 0xF0),
	keyword = hex(0xF9, 0x26, 0x72),
	comment = hex(0x75, 0x71, 0x5E),
	punctuation = hex(0xF8, 0xF8, 0xF2),
	method = hex(0xA6, 0xE2, 0x2E),
	type = hex(0x66, 0xD9, 0xEF),
	string = hex(0xE6, 0xDB, 0x74),
	number = hex(0xAE, 0x81, 0xFF),
	constant = hex(0xAE, 0x81, 0xFF),
	tag = hex(0xF9, 0x26, 0x72),
	attribute = hex(0xA6, 0xE2, 0x2E),
	property = hex(0xFD, 0x97, 0x1F),
	parameter = hex(0xFD, 0x97, 0x1F),
	label = hex(0x66, 0xD9, 0xEF),
	module = hex(0xF9, 0x26, 0x72),
	primary = hex(0x66, 0xD9, 0xEF),
	selection = hex(0x75, 0x71, 0x5E),
	search = hex(0x75, 0x71, 0x5E),
	diffAdd = hex(0xA6, 0xE2, 0x2E),
	diffChange = hex(0x66, 0xD9, 0xEF),
	diffDelete = hex(0xF9, 0x26, 0x72),
	added = hex(0xA6, 0xE2, 0x2E),
	changed = hex(0x66, 0xD9, 0xEF),
	deleted = hex(0xF9, 0x26, 0x72),
	diffText = hex(0x66, 0xD9, 0xEF),
	error = hex(0xF9, 0x26, 0x72),
	errorBG = hex(0xF8, 0xF8, 0xF2),
	warning = hex(0xFD, 0x97, 0x1F),
	warningBG = hex(0xF8, 0xF8, 0xF2),
	info = hex(0x66, 0xD9, 0xEF),
	infoBG = hex(0x27, 0x28, 0x22),
	hint = hex(0xAE, 0x81, 0xFF),
	mergeCurrent = hex(0xE6, 0xDB, 0x74),
	mergeCurrentLabel = hex(0xF8, 0xF8, 0xF2),
	mergeIncoming = hex(0xE6, 0xDB, 0x74),
	mergeIncomingLabel = hex(0xF8, 0xF8, 0xF2),
	mergeParent = hex(0x75, 0x71, 0x5E),
	mergeParentLabel = hex(0xF8, 0xF8, 0xF2),
	copilot = hex(0xA6, 0xE2, 0x2E),

	terminalBlack = hex(0x27, 0x28, 0x22),
	terminalRed = hex(0xF9, 0x26, 0x72),
	terminalGreen = hex(0xA6, 0xE2, 0x2E),
	terminalYellow = hex(0xE6, 0xDB, 0x74),
	terminalBlue = hex(0x66, 0xD9, 0xEF),
	terminalMagenta = hex(0xAE, 0x81, 0xFF),
	terminalCyan = hex(0x38, 0xCC, 0xD1),
	terminalWhite = hex(0xF8, 0xF8, 0xF2),

	terminalBrightBlack = hex(0x75, 0x71, 0x5E),
	terminalBrightRed = hex(0xFD, 0x5F, 0xF1),
	terminalBrightGreen = hex(0xB6, 0xE3, 0x54),
	terminalBrightYellow = hex(0xF4, 0xBF, 0x75),
	terminalBrightBlue = hex(0x66, 0xD9, 0xEF),
	terminalBrightMagenta = hex(0xAE, 0x81, 0xFF),
	terminalBrightCyan = hex(0xA1, 0xEF, 0xE4),
	terminalBrightWhite = hex(0xFF, 0xFF, 0xFF),

	rainbowRed = hex(0xF9, 0x26, 0x72),
	rainbowYellow = hex(0xE6, 0xDB, 0x74),
	rainbowBlue = hex(0x66, 0xD9, 0xEF),
	rainbowOrange = hex(0xFD, 0x97, 0x1F),
	rainbowGreen = hex(0xA6, 0xE2, 0x2E),
	rainbowViolet = hex(0xAE, 0x81, 0xFF),
	rainbowCyan = hex(0x38, 0xCC, 0xD1),
	rainbowIndigo = hex(0x9F, 0x7E, 0xFE),
}

local light = {
	-- syntax
	bg = hsl("#FFFFFF"), -- Light background
	bgFloat = hsl("#EFEFEF"), -- Floating window background
	fg = hsl("#272822"), -- Dark foreground text
	cursor = hsl("#000000"), -- Black cursor
	keyword = hsl("#D7005F"), -- Deep pink for keywords
	comment = hsl("#A6A6A6"), -- Soft grey for comments
	punctuation = hsl("#4D4D4C"), -- Dark grey for punctuation
	method = hsl("#008000"), -- Green for methods/functions
	type = hsl("#268BD2"), -- Blue for types
	string = hsl("#C18401"), -- Golden for strings
	number = hsl("#8959A8"), -- Purple for numbers
	constant = hsl("#8959A8"), -- Purple for constants
	tag = hsl("#D7005F"), -- Pink for tags
	attribute = hsl("#008000"), -- Green for tag attributes
	property = hsl("#D75F00"), -- Orange for properties
	parameter = hsl("#AF5F00"), -- Dark orange for parameters
	label = hsl("#268BD2"), -- Blue for labels
	module = hsl("#D7005F"), -- Pink for modules/imports

	-- workspace
	primary = hsl("#268BD2"), -- Blue accent
	selection = hsl("#D7D7D7"), -- Soft grey for selection
	search = hsl("#FFCC00"), -- Yellow for search highlights
	diffAdd = hsl("#A6E22E"), -- Green for additions
	diffChange = hsl("#268BD2"), -- Blue for changes
	diffDelete = hsl("#F92672"), -- Red for deletions
	added = hsl("#86B300"), -- Green for added items
	changed = hsl("#268BD2"), -- Blue for changed items
	deleted = hsl("#D7005F"), -- Pink for deletions
	diffText = hsl("#268BD2"), -- Blue for diff text

	error = hsl("#FF0000"), -- Red for errors
	errorBG = hsl("#FFEBEB"), -- Light red background for errors
	warning = hsl("#FD971F"), -- Orange for warnings
	warningBG = hsl("#FFF5E5"), -- Light orange background
	info = hsl("#268BD2"), -- Blue for info
	infoBG = hsl("#E3F2FD"), -- Light blue background for info
	hint = hsl("#8959A8"), -- Purple for hints

	mergeCurrent = hsl("#E6DB74"), -- Yellow for merge current
	mergeCurrentLabel = hsl("#272822"), -- Dark text for labels
	mergeIncoming = hsl("#E6DB74"), -- Yellow for merge incoming
	mergeIncomingLabel = hsl("#272822"),
	mergeParent = hsl("#A6A6A6"), -- Muted grey for merge parent
	mergeParentLabel = hsl("#272822"),

	copilot = hsl("#008000"), -- Green for Copilot

	terminalBlack = hsl("#F8F8F2"), -- Light background
	terminalRed = hsl("#F92672"), -- Monokai pinkish red
	terminalGreen = hsl("#A6E22E"), -- Monokai green
	terminalYellow = hsl("#E6DB74"), -- Monokai yellow
	terminalBlue = hsl("#66D9EF"), -- Monokai cyan-blue
	terminalMagenta = hsl("#AE81FF"), -- Monokai purple
	terminalCyan = hsl("#38CCD1"), -- Bright cyan
	terminalWhite = hsl("#272822"), -- Dark foreground for contrast

	terminalBrightBlack = hsl("#75715E"), -- Muted grey for dim text
	terminalBrightRed = hsl("#FD5FF1"), -- Brighter pink-red
	terminalBrightGreen = hsl("#B6E354"), -- Brighter green
	terminalBrightYellow = hsl("#F4BF75"), -- Brighter yellow
	terminalBrightBlue = hsl("#66D9EF"), -- Same bright blue
	terminalBrightMagenta = hsl("#AE81FF"), -- Bright purple
	terminalBrightCyan = hsl("#A1EFE4"), -- Pale cyan
	terminalBrightWhite = hsl("#000000"), -- Pure black for sharp contrast

	rainbowRed = hsl("#F92672"), -- Monokai red
	rainbowYellow = hsl("#E6DB74"), -- Monokai yellow
	rainbowBlue = hsl("#66D9EF"), -- Monokai blue
	rainbowOrange = hsl("#FD971F"), -- Monokai orange
	rainbowGreen = hsl("#A6E22E"), -- Monokai green
	rainbowViolet = hsl("#AE81FF"), -- Monokai purple
	rainbowCyan = hsl("#38CCD1"), -- Bright cyan
	rainbowIndigo = hsl("#9F7EFE"), -- Deep indigo
}

local t = dark
if vim.o.background == "light" then
	t = light
end

return t
