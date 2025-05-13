local lush = require("lush")
local hsl = lush.hsl
local config = require("sublime_monokai").config
local make_theme = require("lush_theme.make_theme")

-- Method 1: Using direct RGB values
local dark = {

	-- syntax
	bg = hsl(39, 7, 14), -- Manually setting HSL values for #272822
	bgFloat = hsl(60, 7, 17), -- #383830
	fg = hsl(60, 30, 96), -- #F8F8F2
	cursor = hsl(60, 60, 96), -- #F8F8F0

	keyword = hsl(338, 95, 56), -- #F92672
	comment = hsl(50, 11, 41), -- #75715E
	punctuation = hsl(60, 30, 96), -- #F8F8F2
	method = hsl(80, 76, 50), -- #A6E22E

	type = hsl(177, 81, 64), -- #66D9EF
	string = hsl(54, 70, 68), -- #E6DB74
	number = hsl(266, 100, 75), -- #AE81FF
	constant = hsl(266, 100, 75), -- #AE81FF
	tag = hsl(338, 95, 56), -- #F92672
	attribute = hsl(80, 76, 50), -- #A6E22E

	property = hsl(31, 98, 58), -- #FD971F
	parameter = hsl(31, 98, 58), -- #FD971F
	label = hsl(177, 81, 64), -- #66D9EF
	module = hsl(338, 95, 56), -- #F92672

	-- workspace
	primary = hsl(177, 81, 64), -- #66D9EF
	selection = hsl(50, 11, 41), -- #75715E
	search = hsl(50, 11, 41), -- #75715E
	diffAdd = hsl(80, 76, 50), -- #A6E22E
	diffChange = hsl(177, 81, 64), -- #66D9EF
	diffDelete = hsl(338, 95, 56), -- #F92672
	added = hsl(80, 76, 50), -- #A6E22E
	changed = hsl(177, 81, 64), -- #66D9EF
	deleted = hsl(338, 95, 56), -- #F92672
	diffText = hsl(177, 81, 64), -- #66D9EF
	error = hsl(338, 95, 56), -- #F92672
	errorBG = hsl(60, 30, 96), -- #F8F8F2
	warning = hsl(31, 98, 58), -- #FD971F
	warningBG = hsl(60, 30, 96), -- #F8F8F2
	info = hsl(177, 81, 64), -- #66D9EF
	infoBG = hsl(39, 7, 14), -- #272822
	hint = hsl(266, 100, 75), -- #AE81FF
	mergeCurrent = hsl(54, 70, 68), -- #E6DB74
	mergeCurrentLabel = hsl(60, 30, 96), -- #F8F8F2
	mergeIncoming = hsl(54, 70, 68), -- #E6DB74
	mergeIncomingLabel = hsl(60, 30, 96), -- #F8F8F2
	mergeParent = hsl(50, 11, 41), -- #75715E
	mergeParentLabel = hsl(60, 30, 96), -- #F8F8F2

	copilot = hsl(80, 76, 50), -- #A6E22E

	-- Terminal
	terminalBlack = hsl(39, 7, 14), -- #272822
	terminalRed = hsl(338, 95, 56), -- #F92672
	terminalGreen = hsl(80, 76, 50), -- #A6E22E
	terminalYellow = hsl(54, 70, 68), -- #E6DB74
	terminalBlue = hsl(177, 81, 64), -- #66D9EF
	terminalMagenta = hsl(266, 100, 75), -- #AE81FF
	terminalCyan = hsl(181, 59, 52), -- #38CCD1
	terminalWhite = hsl(60, 30, 96), -- #F8F8F2
	terminalBrightBlack = hsl(50, 11, 41), -- #75715E
	terminalBrightRed = hsl(302, 96, 69), -- #FD5FF1
	terminalBrightGreen = hsl(74, 70, 62), -- #B6E354
	terminalBrightYellow = hsl(39, 67, 71), -- #F4BF75
	terminalBrightBlue = hsl(177, 81, 64), -- #66D9EF
	terminalBrightMagenta = hsl(266, 100, 75), -- #AE81FF
	terminalBrightCyan = hsl(168, 75, 79), -- #A1EFE4
	terminalBrightWhite = hsl(0, 0, 100), -- #FFFFFF

	rainbowRed = hsl(338, 95, 56), -- #F92672
	rainbowYellow = hsl(54, 70, 68), -- #E6DB74
	rainbowBlue = hsl(177, 81, 64), -- #66D9EF

	rainbowOrange = hsl(31, 98, 58), -- #FD971F
	rainbowGreen = hsl(80, 76, 50), -- #A6E22E
	rainbowViolet = hsl(266, 100, 75), -- #AE81FF
	rainbowCyan = hsl(181, 59, 52), -- #38CCD1
	rainbowIndigo = hsl(259, 98, 75), -- #9F7EFE
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
