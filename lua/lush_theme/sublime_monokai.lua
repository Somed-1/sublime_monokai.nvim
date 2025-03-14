local lush = require("lush")
local hsl = lush.hsl
local config = require("sublime_monokai").config
local make_theme = require("lua.lush_theme.make_theme")

local dark = {
  -- syntax
  bg = hsl("#272822"),                -- Monokai background
  bgFloat = hsl("#383830"),           -- Floating window background
  fg = hsl("#F8F8F2"),                -- Foreground text
  cursor = hsl("#F8F8F0"),            -- Cursor color
  keyword = hsl("#F92672"),           -- Keywords (e.g., function, if, else)
  comment = hsl("#75715E"),           -- Comments
  punctuation = hsl("#F8F8F2"),       -- Punctuation
  method = hsl("#A6E22E"),            -- Functions/Methods
  type = hsl("#66D9EF"),              -- Types
  string = hsl("#E6DB74"),            -- Strings
  number = hsl("#AE81FF"),            -- Numbers
  constant = hsl("#AE81FF"),          -- Constants
  tag = hsl("#F92672"),               -- HTML/XML tags
  attribute = hsl("#A6E22E"),         -- Tag attributes
  property = hsl("#FD971F"),          -- Object properties
  parameter = hsl("#FD971F"),         -- Function parameters
  label = hsl("#66D9EF"),             -- Labels
  module = hsl("#F92672"),            -- Modules/Imports
  -- workspace
  primary = hsl("#66D9EF"),           -- Blue accent from the original palette
  selection = hsl("#75715E"),         -- Using the muted grey (comment color) for selection
  search = hsl("#75715E"),            -- Orange for search highlights
  diffAdd = hsl("#A6E22E"),           -- Green for additions
  diffChange = hsl("#66D9EF"),        -- Blue for changes
  diffDelete = hsl("#F92672"),        -- Red for deletions
  added = hsl("#A6E22E"),             -- Green for added items
  changed = hsl("#66D9EF"),           -- Blue for changed items
  deleted = hsl("#F92672"),           -- Red for deletions
  diffText = hsl("#66D9EF"),          -- Blue for diff text
  error = hsl("#F92672"),             -- Red for errors
  errorBG = hsl("#F8F8F2"),           -- Foreground as a contrasting background for errors
  warning = hsl("#FD971F"),           -- Orange for warnings
  warningBG = hsl("#F8F8F2"),         -- Using the foreground color for warning background
  info = hsl("#66D9EF"),              -- Blue for informational messages
  infoBG = hsl("#272822"),            -- Background for info (a neutral dark)
  hint = hsl("#AE81FF"),              -- Purple for hints
  mergeCurrent = hsl("#E6DB74"),      -- Yellow for merge current
  mergeCurrentLabel = hsl("#F8F8F2"), -- Foreground for merge current label
  mergeIncoming = hsl("#E6DB74"),     -- Yellow for merge incoming
  mergeIncomingLabel = hsl("#F8F8F2"), -- Foreground for merge incoming label
  mergeParent = hsl("#75715E"),       -- Muted grey for merge parent
  mergeParentLabel = hsl("#F8F8F2"),  -- Foreground for merge parent label
  copilot = hsl("#A6E22E"),           -- Green for Copilot

  -- Terminal
  terminalBlack = hsl("#272822"),        -- Monokai dark background
  terminalRed = hsl("#F92672"),          -- Monokai pinkish red
  terminalGreen = hsl("#A6E22E"),        -- Monokai green
  terminalYellow = hsl("#E6DB74"),       -- Monokai yellow
  terminalBlue = hsl("#66D9EF"),         -- Monokai cyan-blue
  terminalMagenta = hsl("#AE81FF"),      -- Monokai purple
  terminalCyan = hsl("#38CCD1"),         -- Slightly brighter cyan
  terminalWhite = hsl("#F8F8F2"),        -- Monokai foreground

  terminalBrightBlack = hsl("#75715E"),  -- Muted grey for dim text
  terminalBrightRed = hsl("#FD5FF1"),    -- Brighter pink-red
  terminalBrightGreen = hsl("#B6E354"),  -- Brighter green
  terminalBrightYellow = hsl("#F4BF75"), -- Brighter yellow
  terminalBrightBlue = hsl("#66D9EF"),   -- Same bright blue
  terminalBrightMagenta = hsl("#AE81FF"), -- Bright purple
  terminalBrightCyan = hsl("#A1EFE4"),   -- Pale cyan
  terminalBrightWhite = hsl("#FFFFFF"),  -- Pure white for contrast

  rainbowRed = hsl("#F92672"),           -- Monokai red
  rainbowYellow = hsl("#E6DB74"),        -- Monokai yellow
  rainbowBlue = hsl("#66D9EF"),          -- Monokai blue
  rainbowOrange = hsl("#FD971F"),        -- Monokai orange
  rainbowGreen = hsl("#A6E22E"),         -- Monokai green
  rainbowViolet = hsl("#AE81FF"),        -- Monokai purple
  rainbowCyan = hsl("#38CCD1"),          -- Brighter cyan
  rainbowIndigo = hsl("#9F7EFE"),        -- Deep indigo
}

local light = {
  -- syntax
  bg = hsl("#F9F8F5"),         -- Light background
  bgFloat = hsl("#EFEFEF"),    -- Floating window background
  fg = hsl("#272822"),         -- Dark foreground text
  cursor = hsl("#000000"),     -- Black cursor
  keyword = hsl("#D7005F"),    -- Deep pink for keywords
  comment = hsl("#A6A6A6"),    -- Soft grey for comments
  punctuation = hsl("#4D4D4C"), -- Dark grey for punctuation
  method = hsl("#008000"),     -- Green for methods/functions
  type = hsl("#268BD2"),       -- Blue for types
  string = hsl("#C18401"),     -- Golden for strings
  number = hsl("#8959A8"),     -- Purple for numbers
  constant = hsl("#8959A8"),   -- Purple for constants
  tag = hsl("#D7005F"),        -- Pink for tags
  attribute = hsl("#008000"),  -- Green for tag attributes
  property = hsl("#D75F00"),   -- Orange for properties
  parameter = hsl("#AF5F00"),  -- Dark orange for parameters
  label = hsl("#268BD2"),      -- Blue for labels
  module = hsl("#D7005F"),     -- Pink for modules/imports

  -- workspace
  primary = hsl("#268BD2"),          -- Blue accent
  selection = hsl("#D7D7D7"),        -- Soft grey for selection
  search = hsl("#FFCC00"),           -- Yellow for search highlights
  diffAdd = hsl("#A6E22E"),          -- Green for additions
  diffChange = hsl("#268BD2"),       -- Blue for changes
  diffDelete = hsl("#F92672"),       -- Red for deletions
  added = hsl("#86B300"),            -- Green for added items
  changed = hsl("#268BD2"),          -- Blue for changed items
  deleted = hsl("#D7005F"),          -- Pink for deletions
  diffText = hsl("#268BD2"),         -- Blue for diff text

  error = hsl("#FF0000"),            -- Red for errors
  errorBG = hsl("#FFEBEB"),          -- Light red background for errors
  warning = hsl("#FD971F"),          -- Orange for warnings
  warningBG = hsl("#FFF5E5"),        -- Light orange background
  info = hsl("#268BD2"),             -- Blue for info
  infoBG = hsl("#E3F2FD"),           -- Light blue background for info
  hint = hsl("#8959A8"),             -- Purple for hints

  mergeCurrent = hsl("#E6DB74"),     -- Yellow for merge current
  mergeCurrentLabel = hsl("#272822"), -- Dark text for labels
  mergeIncoming = hsl("#E6DB74"),    -- Yellow for merge incoming
  mergeIncomingLabel = hsl("#272822"),
  mergeParent = hsl("#A6A6A6"),      -- Muted grey for merge parent
  mergeParentLabel = hsl("#272822"),

  copilot = hsl("#008000"),              -- Green for Copilot

  terminalBlack = hsl("#F8F8F2"),        -- Light background
  terminalRed = hsl("#F92672"),          -- Monokai pinkish red
  terminalGreen = hsl("#A6E22E"),        -- Monokai green
  terminalYellow = hsl("#E6DB74"),       -- Monokai yellow
  terminalBlue = hsl("#66D9EF"),         -- Monokai cyan-blue
  terminalMagenta = hsl("#AE81FF"),      -- Monokai purple
  terminalCyan = hsl("#38CCD1"),         -- Bright cyan
  terminalWhite = hsl("#272822"),        -- Dark foreground for contrast

  terminalBrightBlack = hsl("#75715E"),  -- Muted grey for dim text
  terminalBrightRed = hsl("#FD5FF1"),    -- Brighter pink-red
  terminalBrightGreen = hsl("#B6E354"),  -- Brighter green
  terminalBrightYellow = hsl("#F4BF75"), -- Brighter yellow
  terminalBrightBlue = hsl("#66D9EF"),   -- Same bright blue
  terminalBrightMagenta = hsl("#AE81FF"), -- Bright purple
  terminalBrightCyan = hsl("#A1EFE4"),   -- Pale cyan
  terminalBrightWhite = hsl("#000000"),  -- Pure black for sharp contrast

  rainbowRed = hsl("#F92672"),           -- Monokai red
  rainbowYellow = hsl("#E6DB74"),        -- Monokai yellow
  rainbowBlue = hsl("#66D9EF"),          -- Monokai blue
  rainbowOrange = hsl("#FD971F"),        -- Monokai orange
  rainbowGreen = hsl("#A6E22E"),         -- Monokai green
  rainbowViolet = hsl("#AE81FF"),        -- Monokai purple
  rainbowCyan = hsl("#38CCD1"),          -- Bright cyan
  rainbowIndigo = hsl("#9F7EFE"),        -- Deep indigo
}

local t = dark
if vim.o.background == "light" then
  t = light
end

return t
