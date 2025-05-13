local lush = require("lush")
local hsl = lush.hsl
local config = require("sublime_monokai").config
local make_theme = require("lush_theme.make_theme")

local dark = {
	-- syntax
	bg = hsl.hex("#272822"),                -- Monokai background
	bgFloat = hsl.hex("#383830"),           -- Floating window background
	fg = hsl.hex("#F8F8F2"),                -- Foreground text
	cursor = hsl.hex("#F8F8F0"),            -- Cursor color
	keyword = hsl.hex("#F92672"),           -- Keywords (e.g., function, if, else)
	comment = hsl.hex("#75715E"),           -- Comments
	punctuation = hsl.hex("#F8F8F2"),       -- Punctuation
	method = hsl.hex("#A6E22E"),            -- Functions/Methods
	type = hsl.hex("#66D9EF"),              -- Types
	string = hsl.hex("#E6DB74"),            -- Strings
	number = hsl.hex("#AE81FF"),            -- Numbers
	constant = hsl.hex("#AE81FF"),          -- Constants
	tag = hsl.hex("#F92672"),               -- HTML/XML tags
	attribute = hsl.hex("#A6E22E"),         -- Tag attributes
	property = hsl.hex("#FD971F"),          -- Object properties
	parameter = hsl.hex("#FD971F"),         -- Function parameters
	label = hsl.hex("#66D9EF"),             -- Labels
	module = hsl.hex("#F92672"),            -- Modules/Imports
	-- workspace
	primary = hsl.hex("#66D9EF"),           -- Blue accent from the original palette
	selection = hsl.hex("#75715E"),         -- Using the muted grey (comment color) for selection
	search = hsl.hex("#75715E"),            -- Orange for search highlights
	diffAdd = hsl.hex("#A6E22E"),           -- Green for additions
	diffChange = hsl.hex("#66D9EF"),        -- Blue for changes
	diffDelete = hsl.hex("#F92672"),        -- Red for deletions
	added = hsl.hex("#A6E22E"),             -- Green for added items
	changed = hsl.hex("#66D9EF"),           -- Blue for changed items
	deleted = hsl.hex("#F92672"),           -- Red for deletions
	diffText = hsl.hex("#66D9EF"),          -- Blue for diff text
	error = hsl.hex("#F92672"),             -- Red for errors
	errorBG = hsl.hex("#F8F8F2"),           -- Foreground as a contrasting background for errors
	warning = hsl.hex("#FD971F"),           -- Orange for warnings
	warningBG = hsl.hex("#F8F8F2"),         -- Using the foreground color for warning background
	info = hsl.hex("#66D9EF"),              -- Blue for informational messages
	infoBG = hsl.hex("#272822"),            -- Background for info (a neutral dark)
	hint = hsl.hex("#AE81FF"),              -- Purple for hints
	mergeCurrent = hsl.hex("#E6DB74"),      -- Yellow for merge current
	mergeCurrentLabel = hsl.hex("#F8F8F2"), -- Foreground for merge current label
	mergeIncoming = hsl.hex("#E6DB74"),     -- Yellow for merge incoming
	mergeIncomingLabel = hsl.hex("#F8F8F2"), -- Foreground for merge incoming label
	mergeParent = hsl.hex("#75715E"),       -- Muted grey for merge parent
	mergeParentLabel = hsl.hex("#F8F8F2"),  -- Foreground for merge parent label
	copilot = hsl.hex("#A6E22E"),           -- Green for Copilot

	-- Terminal
	terminalBlack = hsl.hex("#272822"),        -- Monokai dark background
	terminalRed = hsl.hex("#F92672"),          -- Monokai pinkish red
	terminalGreen = hsl.hex("#A6E22E"),        -- Monokai green
	terminalYellow = hsl.hex("#E6DB74"),       -- Monokai yellow
	terminalBlue = hsl.hex("#66D9EF"),         -- Monokai cyan-blue
	terminalMagenta = hsl.hex("#AE81FF"),      -- Monokai purple
	terminalCyan = hsl.hex("#38CCD1"),         -- Slightly brighter cyan
	terminalWhite = hsl.hex("#F8F8F2"),        -- Monokai foreground

	terminalBrightBlack = hsl.hex("#75715E"),  -- Muted grey for dim text
	terminalBrightRed = hsl.hex("#FD5FF1"),    -- Brighter pink-red
	terminalBrightGreen = hsl.hex("#B6E354"),  -- Brighter green
	terminalBrightYellow = hsl.hex("#F4BF75"), -- Brighter yellow
	terminalBrightBlue = hsl.hex("#66D9EF"),   -- Same bright blue
	terminalBrightMagenta = hsl.hex("#AE81FF"), -- Bright purple
	terminalBrightCyan = hsl.hex("#A1EFE4"),   -- Pale cyan
	terminalBrightWhite = hsl.hex("#FFFFFF"),  -- Pure white for contrast

	rainbowRed = hsl.hex("#F92672"),           -- Monokai red
	rainbowYellow = hsl.hex("#E6DB74"),        -- Monokai yellow
	rainbowBlue = hsl.hex("#66D9EF"),          -- Monokai blue
	rainbowOrange = hsl.hex("#FD971F"),        -- Monokai orange
	rainbowGreen = hsl.hex("#A6E22E"),         -- Monokai green
	rainbowViolet = hsl.hex("#AE81FF"),        -- Monokai purple
	rainbowCyan = hsl.hex("#38CCD1"),          -- Brighter cyan
	rainbowIndigo = hsl.hex("#9F7EFE"),        -- Deep indigo
}

local light = {
	-- syntax
	bg = hsl.hex("#FFFFFF"),         -- Light background
	bgFloat = hsl.hex("#EFEFEF"),    -- Floating window background
	fg = hsl.hex("#272822"),         -- Dark foreground text
	cursor = hsl.hex("#000000"),     -- Black cursor
	keyword = hsl.hex("#D7005F"),    -- Deep pink for keywords
	comment = hsl.hex("#A6A6A6"),    -- Soft grey for comments
	punctuation = hsl.hex("#4D4D4C"), -- Dark grey for punctuation
	method = hsl.hex("#008000"),     -- Green for methods/functions
	type = hsl.hex("#268BD2"),       -- Blue for types
	string = hsl.hex("#C18401"),     -- Golden for strings
	number = hsl.hex("#8959A8"),     -- Purple for numbers
	constant = hsl.hex("#8959A8"),   -- Purple for constants
	tag = hsl.hex("#D7005F"),        -- Pink for tags
	attribute = hsl.hex("#008000"),  -- Green for tag attributes
	property = hsl.hex("#D75F00"),   -- Orange for properties
	parameter = hsl.hex("#AF5F00"),  -- Dark orange for parameters
	label = hsl.hex("#268BD2"),      -- Blue for labels
	module = hsl.hex("#D7005F"),     -- Pink for modules/imports

	-- workspace
	primary = hsl.hex("#268BD2"),          -- Blue accent
	selection = hsl.hex("#D7D7D7"),        -- Soft grey for selection
	search = hsl.hex("#FFCC00"),           -- Yellow for search highlights
	diffAdd = hsl.hex("#A6E22E"),          -- Green for additions
	diffChange = hsl.hex("#268BD2"),       -- Blue for changes
	diffDelete = hsl.hex("#F92672"),       -- Red for deletions
	added = hsl.hex("#86B300"),            -- Green for added items
	changed = hsl.hex("#268BD2"),          -- Blue for changed items
	deleted = hsl.hex("#D7005F"),          -- Pink for deletions
	diffText = hsl.hex("#268BD2"),         -- Blue for diff text

	error = hsl.hex("#FF0000"),            -- Red for errors
	errorBG = hsl.hex("#FFEBEB"),          -- Light red background for errors
	warning = hsl.hex("#FD971F"),          -- Orange for warnings
	warningBG = hsl.hex("#FFF5E5"),        -- Light orange background
	info = hsl.hex("#268BD2"),             -- Blue for info
	infoBG = hsl.hex("#E3F2FD"),           -- Light blue background for info
	hint = hsl.hex("#8959A8"),             -- Purple for hints

	mergeCurrent = hsl.hex("#E6DB74"),     -- Yellow for merge current
	mergeCurrentLabel = hsl.hex("#272822"), -- Dark text for labels
	mergeIncoming = hsl.hex("#E6DB74"),    -- Yellow for merge incoming
	mergeIncomingLabel = hsl.hex("#272822"),
	mergeParent = hsl.hex("#A6A6A6"),      -- Muted grey for merge parent
	mergeParentLabel = hsl.hex("#272822"),

	copilot = hsl.hex("#008000"),              -- Green for Copilot

	terminalBlack = hsl.hex("#F8F8F2"),        -- Light background
	terminalRed = hsl.hex("#F92672"),          -- Monokai pinkish red
	terminalGreen = hsl.hex("#A6E22E"),        -- Monokai green
	terminalYellow = hsl.hex("#E6DB74"),       -- Monokai yellow
	terminalBlue = hsl.hex("#66D9EF"),         -- Monokai cyan-blue
	terminalMagenta = hsl.hex("#AE81FF"),      -- Monokai purple
	terminalCyan = hsl.hex("#38CCD1"),         -- Bright cyan
	terminalWhite = hsl.hex("#272822"),        -- Dark foreground for contrast

	terminalBrightBlack = hsl.hex("#75715E"),  -- Muted grey for dim text
	terminalBrightRed = hsl.hex("#FD5FF1"),    -- Brighter pink-red
	terminalBrightGreen = hsl.hex("#B6E354"),  -- Brighter green
	terminalBrightYellow = hsl.hex("#F4BF75"), -- Brighter yellow
	terminalBrightBlue = hsl.hex("#66D9EF"),   -- Same bright blue
	terminalBrightMagenta = hsl.hex("#AE81FF"), -- Bright purple
	terminalBrightCyan = hsl.hex("#A1EFE4"),   -- Pale cyan
	terminalBrightWhite = hsl.hex("#000000"),  -- Pure black for sharp contrast

	rainbowRed = hsl.hex("#F92672"),           -- Monokai red
	rainbowYellow = hsl.hex("#E6DB74"),        -- Monokai yellow
	rainbowBlue = hsl.hex("#66D9EF"),          -- Monokai blue
	rainbowOrange = hsl.hex("#FD971F"),        -- Monokai orange
	rainbowGreen = hsl.hex("#A6E22E"),         -- Monokai green
	rainbowViolet = hsl.hex("#AE81FF"),        -- Monokai purple
	rainbowCyan = hsl.hex("#38CCD1"),          -- Bright cyan
	rainbowIndigo = hsl.hex("#9F7EFE"),        -- Deep indigo
}

local t = dark
if vim.o.background == "light" then
	t = light
end

return t
