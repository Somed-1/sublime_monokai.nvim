local lush = require("lush")
local hsl = lush.hsl
local config = require("sublime_monokai").config

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
  terminalBlack         = hsl("#272822"), -- Monokai dark background
  terminalRed           = hsl("#F92672"), -- Monokai pinkish red
  terminalGreen         = hsl("#A6E22E"), -- Monokai green
  terminalYellow        = hsl("#E6DB74"), -- Monokai yellow
  terminalBlue          = hsl("#66D9EF"), -- Monokai cyan-blue
  terminalMagenta       = hsl("#AE81FF"), -- Monokai purple
  terminalCyan          = hsl("#38CCD1"), -- Slightly brighter cyan
  terminalWhite         = hsl("#F8F8F2"), -- Monokai foreground

  terminalBrightBlack   = hsl("#75715E"), -- Muted grey for dim text
  terminalBrightRed     = hsl("#FD5FF1"), -- Brighter pink-red
  terminalBrightGreen   = hsl("#B6E354"), -- Brighter green
  terminalBrightYellow  = hsl("#F4BF75"), -- Brighter yellow
  terminalBrightBlue    = hsl("#66D9EF"), -- Same bright blue
  terminalBrightMagenta = hsl("#AE81FF"), -- Bright purple
  terminalBrightCyan    = hsl("#A1EFE4"), -- Pale cyan
  terminalBrightWhite   = hsl("#FFFFFF"), -- Pure white for contrast

  rainbowRed            = hsl("#F92672"), -- Monokai red
  rainbowYellow         = hsl("#E6DB74"), -- Monokai yellow
  rainbowBlue           = hsl("#66D9EF"), -- Monokai blue
  rainbowOrange         = hsl("#FD971F"), -- Monokai orange
  rainbowGreen          = hsl("#A6E22E"), -- Monokai green
  rainbowViolet         = hsl("#AE81FF"), -- Monokai purple
  rainbowCyan           = hsl("#38CCD1"), -- Brighter cyan
  rainbowIndigo         = hsl("#9F7EFE")  -- Deep indigo
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

  copilot = hsl("#008000"), -- Green for Copilot

  terminalBlack         = hsl("#F8F8F2"), -- Light background
  terminalRed           = hsl("#F92672"), -- Monokai pinkish red
  terminalGreen         = hsl("#A6E22E"), -- Monokai green
  terminalYellow        = hsl("#E6DB74"), -- Monokai yellow
  terminalBlue          = hsl("#66D9EF"), -- Monokai cyan-blue
  terminalMagenta       = hsl("#AE81FF"), -- Monokai purple
  terminalCyan          = hsl("#38CCD1"), -- Bright cyan
  terminalWhite         = hsl("#272822"), -- Dark foreground for contrast

  terminalBrightBlack   = hsl("#75715E"), -- Muted grey for dim text
  terminalBrightRed     = hsl("#FD5FF1"), -- Brighter pink-red
  terminalBrightGreen   = hsl("#B6E354"), -- Brighter green
  terminalBrightYellow  = hsl("#F4BF75"), -- Brighter yellow
  terminalBrightBlue    = hsl("#66D9EF"), -- Same bright blue
  terminalBrightMagenta = hsl("#AE81FF"), -- Bright purple
  terminalBrightCyan    = hsl("#A1EFE4"), -- Pale cyan
  terminalBrightWhite   = hsl("#000000"), -- Pure black for sharp contrast

  rainbowRed            = hsl("#F92672"), -- Monokai red
  rainbowYellow         = hsl("#E6DB74"), -- Monokai yellow
  rainbowBlue           = hsl("#66D9EF"), -- Monokai blue
  rainbowOrange         = hsl("#FD971F"), -- Monokai orange
  rainbowGreen          = hsl("#A6E22E"), -- Monokai green
  rainbowViolet         = hsl("#AE81FF"), -- Monokai purple
  rainbowCyan           = hsl("#38CCD1"), -- Bright cyan
  rainbowIndigo         = hsl("#9F7EFE")  -- Deep indigo
}

local t = dark
if vim.o.background == "light" then
  t = light
end

local function shade(color, value)
  if vim.o.background == "light" then
    return color.darken(value)
  else
    return color.lighten(value)
  end
end

-- t.bg = t.bg.mix(t.keyword,15)

t.shade1 = shade(t.bg, 1)
t.shade2 = shade(t.bg, 2)
t.shade3 = shade(t.bg, 3)
t.shade4 = shade(t.bg, 4)
t.shade5 = shade(t.bg, 5)
t.shade6 = shade(t.bg, 6)
t.shade7 = shade(t.bg, 7)
t.shade8 = shade(t.bg, 8)
t.shade9 = shade(t.bg, 9)
t.shade10 = shade(t.bg, 10)
t.shade15 = shade(t.bg, 15)
t.shade20 = shade(t.bg, 20)
t.shade25 = shade(t.bg, 25)
t.shade30 = shade(t.bg, 30)
t.shade40 = shade(t.bg, 40)
t.shade50 = shade(t.bg, 50)
t.shade60 = shade(t.bg, 60)
t.shade70 = shade(t.bg, 70)
t.shade80 = shade(t.bg, 80)
t.shade90 = shade(t.bg, 90)

t.grey3 = t.shade3.mix(t.primary, 3)
t.grey5 = t.shade5.mix(t.primary, 5)
t.grey7 = t.shade7.mix(t.primary, 7)
t.grey10 = t.shade10.mix(t.primary, 10)
t.grey20 = t.shade20.mix(t.primary, 10)
t.grey25 = t.shade25.mix(t.primary, 10)
t.grey30 = t.shade30.mix(t.primary, 10)
t.grey40 = t.shade40.mix(t.primary, 12)

local function darker(color, value)
  if vim.o.background == "light" then
    return shade(color, value)
  end
  return color.darken(value)
end

t.dark1 = darker(t.bg, 1)
t.dark3 = darker(t.bg, 3)
t.dark5 = darker(t.bg, 5)
t.dark10 = darker(t.bg ,10)
t.dark15 = darker(t.bg ,15)
t.dark20 = darker(t.bg ,20)
t.dark25 = darker(t.bg, 25)
t.dark30 = darker(t.bg, 30)
t.dark40 = darker(t.bg, 40)


-- t.white = hsl("#ffffff")
-- t.green = hsl("#008200")


-- -- terminal colors
if (config.terminal == true) then
  vim.g.terminal_color_0  = t.terminalBlack.hex
  vim.g.terminal_color_1  = t.terminalRed.hex
  vim.g.terminal_color_2  = t.terminalGreen.hex
  vim.g.terminal_color_3  = t.terminalYellow.hex
  vim.g.terminal_color_4  = t.terminalBlue.hex
  vim.g.terminal_color_5  = t.terminalMagenta.hex
  vim.g.terminal_color_6  = t.terminalCyan.hex
  vim.g.terminal_color_7  = t.terminalWhite.hex
  vim.g.terminal_color_8  = t.terminalBrightBlack.hex
  vim.g.terminal_color_9  = t.terminalBrightRed.hex
  vim.g.terminal_color_10 = t.terminalBrightGreen.hex
  vim.g.terminal_color_11 = t.terminalBrightYellow.hex
  vim.g.terminal_color_12 = t.terminalBrightBlue.hex
  vim.g.terminal_color_13 = t.terminalBrightMagenta.hex
  vim.g.terminal_color_14 = t.terminalBrightCyan.hex
  vim.g.terminal_color_15 = t.terminalBrightWhite.hex
end

local theme = lush(function(injected_functions)
  local sym = injected_functions.sym

  return {
    -- ============================================================
    Normal({ fg = t.fg, bg = t.bg }),   -- Base text style
    Cursor({ bg = t.cursor, fg = t.bg }), -- character under the cursor
    lCursor({ Cursor }),                -- character under cursor in language-mapped mode
    CursorIM({ Cursor }),               -- cursor in IME mode
    Whitespace({ fg = t.grey7 }),
    Comment({ fg = t.comment }),
    LineNr({ fg = t.shade20 }),                   -- line numbers for numbered views
    CursorLineNr({ fg = t.shade70, gui = "bold" }), -- line number for the cursor line
    NormalFloat({ bg = t.dark10, blend = 5 }),    -- Normal text in floating windows.
    FloatBorder({ fg = t.punctuation }),
    NormalSB({ bg = t.bg }),                 -- Normal text in floating windows.
    ColorColumn({ bg = t.grey5 }),                -- used for the columns set with 'colorcolumn'
    Directory({ fg = t.keyword }),                -- directory names (and other special names in listings)
    Added({ fg = t.method }),
    Changed({ fg = t.tag }),                      -- diff mode: Changed line |diff.txt|
    Removed({ fg = t.type }),                     -- diff mode: Deleted line |diff.txt|
    -- EndOfBuffer({ fg = t.punctuation }),          -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    TermCursor({ Cursor }),                       -- cursor in a focused terminal
    TermCursorNC({}),                             -- cursor in an unfocused terminal
    VertSplit({ fg = t.dark30 }),                 -- the column separating vertically split windows
    Winseparator({ VertSplit }),                  -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    Folded({ bg = t.shade7, fg = t.tag }),        -- line used for closed folds
    File({ fg = t.primary }),
    Title({ fg = t.primary }),

    -- ============================================================
    String({ fg = t.string }),      -- String literals
    Character({ fg = t.string }),   -- Character literals
    Constant({ fg = t.constant }),  -- Constant values
    Number({ fg = t.number }),      -- Numeric literals
    Boolean({ fg = t.constant, gui = "bold" }),   -- Boolean values
    Identifier({ fg = t.fg }),      -- variable names
    Function({ fg = t.method }),    -- Function names
    Method({ fg = t.method }),      -- Method names
    Type({ fg = t.type }),          -- Basic type definitions
    Class({ fg = t.method }),       -- Classes (inheriting Type)
    Struct({ Type }),               -- Structures (inheriting Type)
    Property({ fg = t.property }),  -- Object properties
    Field({ Property }),            -- object fields (alias for Property)
    Parameter({ fg = t.parameter }), -- Function parameters
    Statement({ fg = t.keyword }),  -- Keywords and control flow
    Keyword({ Statement }),
    Special({ fg = t.constant }),   -- Special constants
    SpecialKey({ fg = t.attribute }), -- Special keys (attributes)
    Attribute({ fg = t.attribute }), -- Alternate attribute style (commented out)
    Operator({ fg = t.keyword }),   -- Operators like +, -, *, /
    Punctuation({ fg = t.fg }),     -- Punctuation symbols (e.g., commas, semicolons)
    Tag({ fg = t.tag }),

    -- ============================================================
    PreProc({ fg = t.keyword }), -- Preprocessor directives (e.g., #include)
    Include({ fg = t.keyword }), -- Include statements
    Define({ fg = t.keyword }), -- Macro definitions (#define)
    Macro({ fg = t.keyword }), -- Macros

    -- ============================================================
    -- Conditional  { },                        -- Conditional statements (if, else, endif, switch)
    -- Repeat       { },                        -- Loop constructs (for, do, while)
    -- Exception    { },                        -- Exception handling (try, catch, throw)

    -- ============================================================
    Underlined({ gui = "underline" }), -- Underlined text
    Bold({ gui = "bold" }),          -- Bold text
    Italic({ gui = "italic" }),      -- Italic text

    -- ============================================================
    Todo({ bg = t.string, fg = t.bg, gui = "bold" }), -- TODO, FIXME, etc.
    SpecialComment({}),                             -- Special or highlighted comments
    ErrorMsg({ fg = t.error }),
    Error({ ErrorMsg }),
    WarningMsg({ fg = t.warning }),  -- warning messages
    -- Ignore here buddy
    Ignore({ fg = t.bg }),           -- (preferred) left blank, hidden  |hl-Ignore|
    -- ============================================================
    DiffAdd({ bg = t.diffAdd }),     -- Added lines in diffs
    DiffChange({ bg = t.diffChange }), -- Modified lines in diffs
    DiffDelete({ bg = t.diffDelete }), -- Deleted lines in diffs
    DiffText({ bg = t.diffText }),   -- Diff text highlighting

    -- ============================================================
    Search({ bg = t.shade15, gui = "bold" }),                          -- Search result highlighting
    CurSearch({ Search }),
    IncSearch({ bg = t.cursor.mix(t.bg, 10), fg = t.bg, gui = "bold" }), -- Incremental search highlighting
    Visual({ bg = t.shade10 }),                                        -- Visual selection highlighting
    VisualNOS({ bg = t.shade20 }),                                     -- Visual mode selection when vim is "Not Owning the Selection".
    WildMenu({ bg = t.selection }),                                    -- current match in 'wildmenu' completion

    SignColumn({ Normal }),                                            -- column where |signs| are displayed
    FoldColumn({ SignColumn }),                                        -- 'foldcolumn'
    Substitute({ IncSearch }),                                         -- |:substitute| replacement text highlighting

    -- cursor word
    CursorWord({ bg = t.grey20, gui = "bold" }),
    CursorWord0({ bg = t.grey20 }),
    CursorWord1({ bg = t.grey20 }),

    -- ============================================================
    MatchParen({ fg = t.string, gui = "underline | bold" }),         -- Matching parentheses/brackets
    CursorLine({ bg = t.grey3 }),                                    -- Current line highlight
    CursorColumn({ CursorLine }),                                    -- Current column highlight

    StatusLine({ bg = t.dark25, gui = "" }),                         -- Active status line styling
    StatusLineNC({ bg = t.dark25, fg = t.fg }),                                 -- Inactive status line styling

    TabLine({ bg = t.shade3, fg = t.shade30 }),                      -- tab pages line, not active tab page label
    TabLineFill({ bg = t.dark25 }),                                  -- tab pages line, where there are no labels
    TabLineSel({ bg = t.shade10, sp = t.primary, gui = "underline" }), -- tab pages line, active tab page label

    MoreMsg({ fg = t.primary }),                                     -- |more-prompt|
    NonText({ fg = t.shade30 }),                                     -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    ModeMsg({ Normal }),                                             -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea({ Normal }),                                             -- Area for messages and cmdline
    NormalNC({ Normal }),                                            -- normal text in non-current windows

    -- Pmenu { bg = t.bg, blend = 5 },
    Pmenu({ NormalFloat }),
    PmenuSel({ bg = t.selection }),               -- Popup menu: selected item.
    PmenuSbar({ bg = t.grey5 }),                  -- Popup menu: scrollbar.
    PmenuThumb({ bg = t.punctuation }),           -- Popup menu: Thumb of the scrollbar.
    Question({ fg = t.primary }),                 -- |hit-enter| prompt and yes/no questions
    QuickFixLine({ bg = t.primary, fg = t.white }), -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    DiagnosticError({ Error }),                                                -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn({ WarningMsg }),                                            -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo({ fg = t.info }),                                           -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint({ fg = t.hint }),                                           -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticVirtualTextError({ DiagnosticError, bg = t.bg.mix(t.error, 20) }), -- Used for "Error" diagnostic virtual text.
    DiagnosticVirtualTextWarn({ DiagnosticWarn, bg = t.bg.mix(t.warning, 20) }), -- Used for "Warn" diagnostic virtual text.
    DiagnosticVirtualTextInfo({ DiagnosticInfo, bg = t.bg.mix(t.info, 20) }),  -- Used for "Info" diagnostic virtual text.
    DiagnosticVirtualTextHint({ DiagnosticHint, bg = t.bg.mix(t.hint, 20) }),  -- Used for "Hint" diagnostic virtual text.
    DiagnosticUnderlineError({ gui = "undercurl", sp = t.error }),             -- Used to underline "Error" diagnostics.
    DiagnosticUnderlineWarn({ gui = "undercurl", sp = t.warning }),            -- Used to underline "Warn" diagnostics.
    DiagnosticUnderlineInfo({ gui = "undercurl", sp = t.info }),               -- Used to underline "Info" diagnostics.
    DiagnosticUnderlineHint({ gui = "undercurl", sp = t.hint }),               -- Used to underline "Hint" diagnostics.

    -- ============================================================
    TSError({}), -- Syntax/parser errors

    -- ============================================================
    sym("@constructor")({ fg = t.type }),

    -- ============================================================
    sym("@operator")({ fg = t.keyword }),
    sym("@punctuation")({ fg = t.punctuation }),
    sym("@punctuation.bracket")({ fg = t.punctuation }),
    sym("@punctuation.delimiter")({ fg = t.punctuation }),
    sym("@punctuation.special")({ fg = t.punctuation }),

    -- ============================================================
    -- Symbols & Constants
    -- For symbols and constant values.
    sym("@symbol")({ fg = t.constant }),
    sym("@constant")({ fg = t.constant }),
    sym("@constant.builtin")({ fg = t.constant }),

    -- ============================================================
    sym("@comment")({ fg = t.comment }),

    -- ============================================================
    sym("@string.escape")({ Constant }),

    -- ============================================================
    sym("@method")({ fg = t.method }),
    sym("@function")({ fg = t.method }),
    sym("@function.call")({ fg = t.method }),
    sym("@function.builtin")({ fg = t.primary }),

    -- ============================================================
    sym("@parameter")({ fg = t.parameter }),

    -- ============================================================
    sym("@field")({ Property }),
    sym("@property")({ Property }),

    -- ============================================================
    sym("@label")({ fg = t.label }),     -- Labels
    sym("@annotation")({ sym("@label") }), -- Alias for labels

    -- ============================================================
    sym("@type")({ Type }),
    sym("@type.builtin")({ fg = t.type }),
    sym("@type.qualifier")({ Statement }),

    -- ============================================================
    sym("@keyword")({ Statement }),
    sym("@keyword.modifier")({ Statement }), -- Same as @type.qualifier
    -- sym("@keyword.function")({ fg = t.primary }),
    -- sym("@keyword.type")   { fg = t.primary },

    -- ============================================================
    sym("@string")({ String }),

    -- ============================================================
    sym("@namespace")({ fg = t.module }),

    -- ============================================================
    sym("@number")({ fg = t.number }),

    -- ============================================================
    sym("@text")({ Identifier }),
    sym("@text.strong")({ Bold }),
    sym("@text.italic")({ Italic }),
    sym("@text.underline")({ Underlined }),
    sym("@text.title")({ fg = t.keyword }),
    sym("@text.literal")({ Property }),
    sym("@text.uri"){ fg = t.keyword, sp = t.tag, gui = "underline" }, -- Any URI like a link or email

    -- ============================================================
    sym("@variable")({ Identifier }), -- e.g. `this` or `self`
    sym("@variable.parameter")({ fg = t.parameter }),
    sym("@variable.constant")({ Constant }),
    sym("@variable.builtin")({ fg = t.parameter }),

    -- ============================================================
    sym("@tag")({ Tag }),
    sym("@tag.builtin")({ Tag }),
    sym("@tag.attribute")({ fg = t.attribute }), -- Tag-specific attributes

    -- ============================================================
    sym("@attribute")({ fg = t.label }), -- Alternative attribute style

    -- ============================================================
    sym("@error")({ Error }),
    sym("@warning")({ WarningMsg }),
    sym("@info")({ fg = t.info }),

    -- Language Overrides
    -- JSON
    sym("@label.json")({ fg = t.property }), -- For labels: `label:` in C and `:label:` in Lua.
    sym("@label.jsonc")({ fg = t.property }), -- For labels: `label:` in C and `:label:` in Lua.
    -- help files
    sym("@label.help")({ sym("@text.uri") }),
    -- html
    sym("@text.uri.html")({ gui = "underline" }),

    -- Treesitter highlight groups update
    -- Treesitter standard capture groups
    -- sym("@variable.member") { sym("@field") },
    sym("@module")({ sym("@namespace") }),
    sym("@string.special.symbol")({ sym("@symbol") }),
    sym("@markup.strong")({ sym("@text.strong") }),
    sym("@markup.underline")({ sym("@text.underline") }),
    sym("@markup.heading")({ sym("@text.title") }),
    sym("@markup.link.url")({ sym("@text.uri") }),
    sym("@markup.raw")({ sym("@text.literal") }),
    sym("@markup.list")({ sym("@punctuation.special") }),

    -- Helix capture groups
    sym("@function.method")({ sym("@method") }),
    sym("@string.special.url")({ sym("@text.uri") }),

    -- semantic highlighting

    sym("@lsp.type.comment")({ sym("@comment") }),
    sym("@lsp.type.namespace")({ sym("@namespace") }),
    sym("@lsp.type.type")({ sym("@type") }),
    sym("@lsp.type.typeParameter")({ sym("@type") }),
    sym("@lsp.type.class")({ sym("@type") }),
    sym("@lsp.type.enum")({ sym("@type") }),
    sym("@lsp.type.interface")({ sym("@type") }),
    sym("@lsp.type.struct")({ sym("@type") }),
    sym("@lsp.type.parameter")({ sym("@parameter") }),
    sym("@lsp.type.variable")({ sym("@variable") }),
    sym("@lsp.type.property")({ sym("@property") }),
    sym("@lsp.type.enumMember")({ sym("@constant") }),
    sym("@lsp.type.function")({ sym("@function") }),
    sym("@lsp.type.method")({ sym("@method") }),
    sym("@lsp.type.label")({ sym("@label") }),
    sym("@lsp.type.macro")({ sym("@label") }),
    sym("@lsp.type.decorator")({ sym("@label") }),
    sym("@lsp.type.string")({ sym("@string") }),
    sym("@lsp.type.regexp")({ sym("@string") }),
    sym("@lsp.type.keyword")({ sym("@keyword") }),
    sym("@lsp.type.number")({ sym("@number") }),
    sym("@lsp.type.operator")({ sym("@operator") }),
    sym("@lsp.type.event")({ sym("@parameter") }),
    sym("@lsp.mod.readonly")({ sym("@constant") }),
    sym("@lsp.mod.constant")({ sym("@constant") }),
    sym("@lsp.typemod.variable.constant")({ sym("@constant") }),
    sym("@lsp.typemod.function.declaration")({ sym("@function") }),
    sym("@lsp.typemod.function.readonly")({ sym("@function") }),
    sym("LspInlayHint")({ bg = t.shade2, fg = t.shade25 }),

    -- gui vim
    -- VimR
    VimrDefaultCursor({ fg = t.cursor, bg = t.bg }),
    VimrInsertCursor({ fg = t.cursor, bg = t.bg }),
    --  gitsigns
    GitSignsAdd({ fg = t.added }),
    GitSignsChange({ fg = t.changed }),
    GitSignsDelete({ fg = t.deleted }),

    -- bufferline
    BufferlineFill { NormalFloat },
    -- BufferlineBackground { bg = t.bg },
    -- BufferlineDevIconLua { bg = t.bg, fg = t.keyword },
    -- BufferlineDevIconLuaSelected { bg = t.bg, fg = t.keyword },
    -- BufferlineBufferVisible { bg = t.bg },
    -- BufferlineBufferSelected { bg = t.bg },
    -- BufferLineSeparatorSelected { fg = t.type, sp = t.primary, gui = "underline" },
    -- BufferLineWarningDiagnosticSelected { fg = t.warning, sp = t.primary, gui = "underline" },
    -- BufferLineErrorDiagnosticSelected { fg = t.error, sp = t.primary, gui = "underline" },
    -- BufferLineInfoDiagnosticSelected { fg = t.info, sp = t.primary, gui = "underline" },
    -- BufferLineHintDiagnosticSelected { fg = t.hint, sp = t.primary, gui = "underline" },
    -- BufferLineTabSeparatorSelected { sp = t.primary, gui = "underline" },
    -- BufferLineCloseButtonSelected { sp = t.primary, gui = "underline" },
    -- BufferLineDiagnosticSelected { sp = t.primary, gui = "underline" },
    -- BufferLineDevIconLuaSelected { sp = t.primary, gui = "underline" },
    -- BufferLineIndicatorSelected { sp = t.primary, gui = "underline" },
    -- BufferLineDuplicateSelected { sp = t.primary, gui = "underline" },
    -- BufferLineModifiedSelected { sp = t.primary, gui = "underline" },
    -- BufferLineNumbersSelected { sp = t.primary, gui = "underline" },
    -- BufferLineBufferSelected { sp = t.primary, gui = "underline" },
    -- BufferLinePickSelected { sp = t.primary, gui = "underline" },
    -- BufferLineTabSelected { sp = t.primary, gui = "underline" },
    -- BufferLineWarningSelected { fg = t.warning, sp = t.primary, gui = "underline" },
    -- BufferLineErrorSelected { fg = t.error, sp = t.primary, gui = "underline" },
    -- BufferLineInfoSelected { fg = t.info, sp = t.primary, gui = "underline" },
    -- BufferLineHintSelected { fg = t.hint, sp = t.primary, gui = "underline" },

    -- BarBar
    BufferCurrent { Normal },
    BufferCurrentIndex { BufferCurrent },
    BufferCurrentIcon { BufferCurrentIndex },
    BufferCurrentMod { BufferCurrent },
    BufferCurrentSign { fg = t.keyword, bg = BufferCurrent.bg },
    BufferCurrentTarget { BufferCurrent, fg = t.type },
    BufferCurrentWARN { fg = DiagnosticWarn.fg, bg = BufferCurrent.bg },
    BufferCurrentINFO { fg = DiagnosticInfo.fg, bg = BufferCurrent.bg },
    BufferCurrentERROR { fg = DiagnosticError.fg, bg = BufferCurrent.bg },
    BufferCurrentHINT { fg = DiagnosticHint.fg, bg = BufferCurrent.bg },
    --
    BufferInactive { fg = t.shade40, bg = t.bgFloat },
    BufferInactiveIcon { BufferInactive },
    BufferInactiveIndex { BufferInactive },
    BufferInactiveMod { BufferInactive },
    BufferInactiveSign { BufferInactive },
    BufferInactiveTarget { BufferInactive, fg = t.type },
    BufferInactiveWARN { BufferCurrentWARN, bg = BufferInactive.bg },
    BufferInactiveINFO { BufferCurrentINFO, bg = BufferInactive.bg },
    BufferInactiveERROR { BufferCurrentERROR, bg = BufferInactive.bg },
    BufferInactiveHINT { BufferCurrentHINT, bg = BufferInactive.bg },
    --
    BufferVisible { BufferCurrent, bg = t.bgFloat },
    BufferVisibleIndex { BufferVisible },
    BufferVisibleIcon { BufferVisibleIndex },
    BufferVisibleMod { BufferVisible },
    BufferVisibleSign { BufferVisible },
    BufferVisibleTarget { BufferVisible, fg = t.type },
    BufferVisibleWARN { BufferInactiveWARN },
    BufferVisibleINFO { BufferInactiveINFO },
    BufferVisibleERROR { BufferInactiveERROR },
    BufferVisibleHINT { BufferInactiveHINT },
    --
    BufferAlternate { BufferInactive },
    BufferAlternateIndex { BufferAlternate },
    BufferAlternateIcon { BufferAlternateIndex },
    BufferAlternateMod { BufferInactiveMod },
    BufferAlternateSign { BufferInactiveSign, fg = t.constant },
    BufferAlternateTarget { BufferAlternate, fg = t.type },
    BufferAlternateWARN { BufferInactiveWARN },
    BufferAlternateINFO { BufferInactiveINFO },
    BufferAlternateERROR { BufferInactiveERROR },
    BufferAlternateHINT { BufferInactiveHINT },
    --
    BufferTabpages { BufferInactive, fg = t.fg },
    BufferTabpageFill { BufferTabpages, fg = t.bg },
    BufferOffset { BufferTabpageFill },
    --

    -- Telescope
    -- Sets the highlight for selected items within the picker.
    -- TelescopeSelection  {},
    -- TelescopeSelectionCaret  {},
    TelescopeMultiSelection { fg = t.attribute },
    TelescopeMultiIcon { fg = t.primary },
    --
    -- -- "Normal" in the floating windows created by telescope.
    -- TelescopeNormal { fg = t.fg, bg = t.bg },
    -- TelescopeNormal { fg = t.fg, bg = t.bg, blend = 5 },
    TelescopeNormal { NormalFloat },
    -- TelescopePreviewNormal  {},
    -- TelescopePromptNormal { fg = t.fg, bg = t.bg },
    -- TelescopeResultsNormal  {},

    -- Border highlight groups.
    -- Use TelescopeBorder to override the default.
    -- Otherwise set them specifically

    TelescopeBorder { NormalFloat, fg = t.punctuation },
    -- TelescopePromptBorder  {},
    -- TelescopeResultsBorder  {},
    -- TelescopePreviewBorder  {},

    -- -- Title highlight groups.
    -- --   Use TelescopeTitle to override the default.
    -- --   Otherwise set them specifically
    -- TelescopeTitle  {fg = t.constant},
    -- TelescopePromptTitle  {},
    -- TelescopeResultsTitle  {},
    -- TelescopePreviewTitle  {},

    -- TelescopePromptCounter  {},

    -- -- Used for highlighting characters that you match.
    TelescopeMatching { fg = t.keyword },
    -- -- Used for the prompt prefix
    TelescopePromptPrefix { fg = t.punctuation },
    -- -- Used for highlighting the matched line inside Previewer. Works only for (vim_buffer_ previewer)
    -- TelescopePreviewLine  {},
    -- TelescopePreviewMatch  {},

    -- TelescopePreviewPipe  {},
    -- TelescopePreviewCharDev  {},
    -- TelescopePreviewDirectory  {},
    -- TelescopePreviewBlock  {},
    TelescopePreviewLink { fg = t.label },
    TelescopePreviewSocket { fg = t.property },
    -- TelescopePreviewRead  {},
    TelescopePreviewWrite { fg = t.type },
    TelescopePreviewExecute { fg = t.method },
    -- TelescopePreviewHyphen  {},
    -- TelescopePreviewSticky  {},
    TelescopePreviewSize { fg = t.number },
    TelescopePreviewUser { fg = t.property },
    TelescopePreviewGroup { fg = t.property },
    TelescopePreviewDate { fg = t.string },
    -- TelescopePreviewMessage  {},
    -- TelescopePreviewMessageFillchar  {},

    -- -- Used for Picker specific Results highlighting
    TelescopeResultsClass { Class },
    -- TelescopeResultsConstant  {},
    TelescopeResultsField { Field },
    -- TelescopeResultsFunction  {},
    -- TelescopeResultsMethod  {},
    -- TelescopeResultsOperator  {},
    -- TelescopeResultsStruct  {},
    TelescopeResultsVariable { Identifier },
    -- TelescopeResultsLineNr  {},
    -- TelescopeResultsIdentifier  {},
    -- TelescopeResultsNumber  {},
    -- TelescopeResultsComment  {},
    TelescopeResultsSpecialComment { Comment },
    -- -- Used for git status Results highlighting
    -- TelescopeResultsDiffChange  {},
    -- TelescopeResultsDiffAdd  {},
    -- TelescopeResultsDiffDelete  {},
    -- TelescopeResultsDiffUntracked  {},

        -- Fzf-lua
    FzfLuaNormal { NormalFloat },
    FzfLuaBorder { NormalFloat, fg = t.punctuation },
    FzfLuaTitle { NormalFloat, fg = t.punctuation },
    -- FzfLuaBackdrop {},
    FzfLuaPreviewNormal { NormalFloat },
    FzfLuaPreviewBorder { NormalFloat, fg = t.punctuation },
    -- FzfLuaPreviewTitle { NormalFloat, fg = t.punctuation },
    -- FzfLuaCursor { Cursor },
    FzfLuaCursorLine { Visual },
    FzfLuaCursorLineNr { Visual },
    -- FzfLuaSearch { IncSearch },
    -- FzfLuaScrollBorderEmpty { NormalFloat, fg = t.punctuation },
    -- FzfLuaScrollBorderFull { NormalFloat, fg = t.punctuation },
    -- FzfLuaScrollFloatEmpty { PmenuSbar },
    -- FzfLuaScrollFloatFull { PmenuThumb },
    -- FzfLuaHelpNormal { NormalFloat },
    -- FzfLuaHelpBorder { NormalFloat, fg = t.punctuation },
    FzfLuaHeaderBind { Character },
    FzfLuaHeaderText { fg = t.method },
    FzfLuaPathColNr { Number },
    FzfLuaPathLineNr { Number },
    FzfLuaBufName { fg = t.fg },
    FzfLuaBufNr { Number },
    FzfLuaBufFlagCur { fg = t.keyword },
    FzfLuaBufFlagAlt { fg = t.tag },
    FzfLuaTabTitle { fg = t.parameter },
    FzfLuaTabMarker { fg = t.keyword },
    -- FzfLuaDirIcon { Directory },
    -- FzfLuaDirPart { Comment },
    FzfLuaFilePart { fg = t.fg },
    FzfLuaLiveSym { fg = t.keyword },

    -- Fzf-lua fzf colours
    -- FzfLuaFzfNormal { NormalFloat },
    FzfLuaFzfCursorLine { Visual, fg = shade(t.fg, 70) },
    FzfLuaFzfMatch { fg = t.keyword },
    -- FzfLuaFzfBorder { NormalFloat, fg = t.punctuation },
    -- FzfLuaFzfScrollbar { NormalFloat, fg = t.punctuation },
    -- FzfLuaFzfSeparator { NormalFloat, fg = t.punctuation },
    -- FzfLuaFzfGutter { NormalFloat },
    -- FzfLuaFzfHeader { NormalFloat, fg = t.punctuation },
    -- FzfLuaFzfInfo { NonText },
    FzfLuaFzfPointer { Visual },
    -- FzfLuaFzfMarker { Special },
    -- FzfLuaFzfSpinner { Special },
    FzfLuaFzfPrompt { fg = t.punctuation },
    -- FzfLuaFzfQuery { NormalFloat },

    -- lspsaga
    TitleIcon { Function },
    SagaNormal { NormalFloat },
    SagaExpand { Normal },
    SagaCollapse { SagaExpand },
    SagaCount { Number },
    SagaBeacon { bg = t.cursor, blend = 70 },
    CodeActionNumber { Statement },
    FinderSelection { Visual },
    -- FinderFileName { Comment },
    FinderCount { Number },
    FinderIcon { Punctuation },
    FinderType { Title },
    SagaLightBulb { Attribute },
    -- SagaShadow { FloatShadow },
    OutlineIndent { Whitespace },
    --
    -- lspsaga winbar
    -- SagaWinbarModule {},
    -- SagaWinbarInterface {},
    -- SagaWinbarConstructor {},
    -- SagaWinbarStruct {},
    -- SagaWinbarObject {},
    -- SagaWinbarUnit {},
    SagaWinbarFile { fg = t.terminalCyan },
    SagaWinbarSnippet { fg = t.label },
    -- SagaWinbarText {},
    -- SagaWinbarTypeAlias {},
    -- SagaWinbarEvent {},
    -- SagaWinbarParameter {},
    SagaWinbarKey { Property },
    SagaWinbarValue { String },
    -- SagaWinbarMacro {},
    -- SagaWinbarNumber {},
    -- SagaWinbarConstant {},
    -- SagaWinbarFunction {},
    SagaWinbarEnum { Type },
    -- SagaWinbarField {},
    -- SagaWinbarProperty {},
    -- SagaWinbarMethod {},
    SagaWinbarClass { Type },
    SagaWinbarFolder { Tag },
    -- SagaWinbarPackage {},
    -- SagaWinbarStaticMethod {},
    -- SagaWinbarTypeParameter {},
    SagaWinbarEnumMember { Property },
    -- SagaWinbarOperator {},
    SagaWinbarNull { Statement },
    -- SagaWinbarNamespace {},
    -- SagaWinbarArray {},
    -- SagaWinbarBoolean {},
    -- SagaWinbarString {},
    -- SagaWinbarVariable {},
    SagaWinbarFilename { SagaWinbarFile },
    SagaWinbarFolderName {},
    SagaWinbarFileIcon {},
    SagaWinbarSep { fg = t.punctuation },
    --

    -- Trouble
    TroubleCount { fg = t.number },
    TroubleNormal { bg = t.bgFloat },
    -- TroubleTextInformation {},
    -- TroubleSignWarning {},
    TroubleLocation { fg = t.attribute },
    -- TroubleWarning {},
    -- TroublePreview {},
    -- TroubleTextError {},
    -- TroubleSignInformation {},
    -- TroubleIndent {},
    -- TroubleSource {},
    -- TroubleSignHint {},
    -- TroubleSignOther {},
    -- TroubleFoldIcon {},
    -- TroubleTextWarning {},
    -- TroubleCode {},
    -- TroubleInformation {},
    -- TroubleSignError { fg = t.number},
    -- TroubleFile {},
    -- TroubleHint {},
    -- TroubleTextHint {},
    TroubleText {},
    --

    -- Nvim Cmp
    CmpDocumentation { fg = t.fg, bg = t.bgFloat },
    CmpDocumentationBorder { fg = t.punctuation, bg = t.bgFloat },
    CmpItemAbbr { fg = t.fg },
    CmpItemAbbrDeprecated { fg = t.fg, gui = "strikethrough" },
    CmpItemAbbrMatch { fg = t.primary },
    CmpItemAbbrMatchFuzzy { fg = t.primary },
    CmpItemMenu { fg = t.attribute },
    CmpItemKindText { fg = t.comment },
    CmpItemKindDefault { fg = t.fb },
    CmpItemKindKeyword { fg = t.keyword },
    CmpItemKindVariable { fg = t.fg },
    CmpItemKindConstant { fg = t.constant },
    CmpItemKindReference { fg = t.fg },
    CmpItemKindValue { fg = t.fg },
    CmpItemKindFunction { fg = t.method },
    CmpItemKindMethod { fg = t.method },
    CmpItemKindConstructor { fg = t.type },
    CmpItemKindClass { fg = t.type },
    CmpItemKindInterface { fg = t.type },
    CmpItemKindStruct { fg = t.type },
    CmpItemKindEvent { fg = t.label },
    CmpItemKindEnum { fg = t.type },
    CmpItemKindUnit { fg = t.number },
    CmpItemKindModule { fg = t.keyword },
    CmpItemKindProperty { fg = t.property },
    CmpItemKindField { fg = t.property },
    CmpItemKindTypeParameter { fg = t.type },
    CmpItemKindEnumMember { fg = t.type },
    CmpItemKindOperator { fg = t.punctuation },
    CmpItemKindSnippet { fg = t.label },
    CmpItemKindCopilot { fg = t.copilot },
    CmpItemKindCodeium { fg = t.copilot },
    CmpItemKindSupermaven { fg = t.copilot },
    CmpItemKindTabNine { fg = t.copilot },
    --

    -- Blink Cmp
    BlinkCmpDoc { fg = t.fg, bg = t.bgFloat },
    BlinkCmpDocBorder { fg = t.punctuation, bg = t.bgFloat },
    BlinkCmpLabel { fg = t.fg },
    BlinkCmpLabelDeprecated { fg = t.fg, gui = "strikethrough" },
    BlinkCmpLabelMatch { fg = t.primary },
    BlinkCmpLabelDetail { fg = t.attribute },
    BlinkCmpLabelDescription { fg = t.attribute },
    BlinkCmpSource { fg = t.attribute },
    BlinkCmpKind { Special },
    BlinkCmpKindText { fg = t.comment },
    BlinkCmpKindDefault { fg = t.fb },
    BlinkCmpKindKeyword { fg = t.keyword },
    BlinkCmpKindVariable { fg = t.fg },
    BlinkCmpKindConstant { fg = t.constant },
    BlinkCmpKindReference { fg = t.fg },
    BlinkCmpKindValue { fg = t.fg },
    BlinkCmpKindFunction { fg = t.method },
    BlinkCmpKindMethod { fg = t.method },
    BlinkCmpKindConstructor { fg = t.type },
    BlinkCmpKindClass { fg = t.type },
    BlinkCmpKindInterface { fg = t.type },
    BlinkCmpKindStruct { fg = t.type },
    BlinkCmpKindEvent { fg = t.label },
    BlinkCmpKindEnum { fg = t.type },
    BlinkCmpKindUnit { fg = t.number },
    BlinkCmpKindModule { fg = t.keyword },
    BlinkCmpKindProperty { fg = t.property },
    BlinkCmpKindField { fg = t.property },
    BlinkCmpKindTypeParameter { fg = t.type },
    BlinkCmpKindEnumMember { fg = t.type },
    BlinkCmpKindOperator { fg = t.punctuation },
    BlinkCmpKindSnippet { fg = t.label },
    BlinkCmpKindCopilot { fg = t.copilot },
    BlinkCmpKindCodeium { fg = t.copilot },
    BlinkCmpKindSupermaven { fg = t.copilot },
    BlinkCmpKindTabNine { fg = t.copilot },
    --

    -- nvim illuminate
    IlluminatedWordText { bg = t.grey7 },
    IlluminatedWordRead { bg = t.grey7 },
    IlluminatedWordWrite { bg = t.grey7 },

    -- mason
    MasonNormal { NormalFloat },
    MasonHeader { bg = t.primary, fg = t.bg },
    MasonHeaderSecondary { bg = t.constant, fg = t.bg },
    MasonHighlight { fg = t.primary },
    MasonHighlightBlock { bg = t.primary, fg = t.bg },
    MasonHighlightBlockBold { bg = t.primary, fg = t.bg, gui = "bold" },
    MasonHighlightSecondary { fg = t.constant },
    MasonHighlightBlockSecondary { bg = t.constant, fg = t.bg },
    MasonHighlightBlockBoldSecondary { bg = t.constant, fg = t.bg, gui = "bold" },
    MasonLink { sym("@text.uri") },
    MasonMuted { fg = t.shade50 },
    MasonMutedBlock { bg = t.shade40, fg = t.bg },
    MasonMutedBlockBold { bg = t.shade40, fg = t.bg, gui = "bold" },
    MasonError { Error },
    MasonHeading { gui = "bold,underline", fg = t.fg },
    --

    -- which-key
    WhichKey({ Parameter }),
    WhichKeyGroup({ Constant }),
    WhichKeySeparator({ Operator }),
    WhichKeyDesc({ String }),
    WhichKeyNormal({ bg = t.shade5 }),
    -- WhichKeyBorder {},
    WhichKeyValue({ Character }),

    -- Diffview
    DiffviewStatusAdded { fg = t.method },
    DiffviewStatusModified { fg = t.keyword },
    DiffviewStatusRenamed { fg = t.keyword },
    DiffviewStatusCopied { fg = t.keyword },
    DiffviewStatusTypeChanged { fg = t.keyword },
    DiffviewStatusUnmerged { fg = t.number },
    DiffviewStatusUnknown { fg = t.property },
    DiffviewStatusDeleted { fg = t.type },
    -- DiffviewStatusBroken {},
    DiffviewStatusIgnored { fg = t.comment },
    DiffviewFilePanelInsertions { fg = t.added },
    DiffviewFilePanelDeletions { fg = t.deleted },
    DiffviewFilePanelRootPath { fg = t.tag },
    DiffviewFilePanelTitle { fg = t.constant },
    DiffviewFilePanelCounter { fg = t.attribute },
    -- DiffviewFilePanelFileName {},
    DiffviewFilePanelPath { fg = t.comment },
    DiffviewFilePanelConflicts { fg = t.number },
    DiffviewFolderName { Directory },
    -- DiffviewFolderSign {},
    -- DiffviewReference {},
    DiffviewPrimary { fg = t.keyword },
    DiffviewSecondary { fg = t.tag },
    --

    -- vim-fugitive
    diffAdded { fg = t.method },
    diffRemoved { fg = t.type },
    diffFile { File },
    diffNewFile { fg = t.constant },
    diffOldFile { fg = t.property },
    diffLine { fg = t.number },
    diffIndexLine { fg = t.parameter },
    diffSubname { fg = t.string },
    -- diffOnly {},
    -- diffIdentical {},
    -- diffDiffer {},
    -- diffBDiffer {},
    -- diffIsA {},
    -- diffNoEOL {},
    -- diffCommon {},
    -- diffComment {},

    -- nvim tree
    NvimTreeNormal { bg = t.bgFloat },
    NvimTreeNormalNC { bg = t.bgFloat },
    NvimTreeWindowPicker { fg = t.fg, bg = t.selection, gui = "bold" },
    NvimTreeIndentMarker { fg = t.punctuation },
    NvimTreeRootFolder { fg = t.tag },
    NvimTreeFolderIcon { fg = t.keyword },
    NvimTreeFolderName { fg = t.tag },
    NvimTreeOpenedFolderName { fg = t.keyword },
    NvimTreeSpecialFile { fg = t.constant },
    NvimTreeExecFile { fg = t.method },
    NvimTreeGitStaged { fg = t.method },
    NvimTreeGitDirty { fg = t.type },
    NvimTreeGitMerge { fg = t.number },
    NvimTreeGitDeleted { fg = t.deleted },
    NvimTreeGitNew { fg = t.method },
    --

    -- git-conflict
    GitConflictCurrent { bg = t.mergeCurrent, blend = 5 },
    GitConflictIncoming { bg = t.mergeIncoming, blend = 5 },
    GitConflictAncestor { bg = t.mergeParent, blend = 5 },
    GitConflictCurrentLabel { bg = t.mergeCurrentLabel, blend = 5 },
    GitConflictIncomingLabel { bg = t.mergeIncomingLabel, blend = 5 },
    GitConflictAncestorLabel { bg = t.mergeParentLabel, blend = 5 },
    --

    -- nvim-notify
    NotifyBackground { NormalFloat },
    NotifyERRORBorder { Normal, fg = t.error },
    NotifyWARNBorder { Normal, fg = t.warning },
    NotifyINFOBorder { Normal, fg = t.info },
    NotifyDEBUGBorder { Normal, fg = t.punctuation },
    NotifyTRACEBorder { Normal, fg = t.property },
    NotifyERRORIcon { NotifyERRORBorder },
    NotifyWARNIcon { NotifyWARNBorder },
    NotifyINFOIcon { NotifyINFOBorder },
    NotifyDEBUGIcon { NotifyDEBUGBorder },
    NotifyTRACEIcon { NotifyTRACEBorder },
    NotifyERRORTitle { NotifyERRORBorder },
    NotifyWARNTitle { NotifyWARNBorder },
    NotifyINFOTitle { NotifyINFOBorder },
    NotifyDEBUGTitle { NotifyDEBUGBorder },
    NotifyTRACETitle { NotifyTRACEBorder },
    --

    -- -- Visual Multi.
    -- VM_Extend = { bg = colors.selection_inactive },
    -- VM_Cursor = { bg = colors.selection_inactive, sp = colors.fg, underline = true },
    -- VM_Insert = { sp = colors.fg, underline = true },
    -- VM_Mono = { fg = colors.bg, bg = colors.comment },
    --

    -- hlargs (semantic parameter highlighting)
    Hlargs { sym("@parameter") },
    --

    -- virt-column
    VirtColumn { Whitespace },
    --

    -- indent blankline
    -- IblScope {},
    RainbowRed { fg = t.rainbowRed },
    RainbowYellow { fg = t.rainbowYellow },
    RainbowBlue { fg = t.rainbowBlue },
    RainbowOrange { fg = t.rainbowOrange },
    RainbowGreen { fg = t.rainbowGreen },
    RainbowViolet { fg = t.rainbowViolet },
    RainbowCyan { fg = t.rainbowCyan },

    -- rainbow-delimiter
    RainbowDelimiterRed { fg = t.rainbowRed },
    RainbowDelimiterYellow { fg = t.rainbowYellow },
    RainbowDelimiterBlue { fg = t.rainbowBlue },
    RainbowDelimiterOrange { fg = t.rainbowOrange },
    RainbowDelimiterGreen { fg = t.rainbowGreen },
    RainbowDelimiterViolet { fg = t.rainbowViolet },
    RainbowDelimiterCyan { fg = t.rainbowCyan },

    -- snacks.nvim
    -- SnacksNormal { NormalFloat },

    -- snacks.nvim indent
    SnacksIndent { Whitespace },
    -- SnacksIndentBlank { Whitespace },
    SnacksIndentScope { LineNr },
    -- SnacksIndentChunk { LineNr },
    SnacksIndent1 { fg = t.rainbowRed },
    SnacksIndent2 { fg = t.rainbowYellow },
    SnacksIndent3 { fg = t.rainbowBlue },
    SnacksIndent4 { fg = t.rainbowOrange },
    SnacksIndent5 { fg = t.rainbowGreen },
    SnacksIndent6 { fg = t.rainbowViolet },
    SnacksIndent7 { fg = t.rainbowCyan },
    SnacksIndent8 { fg = t.rainbowIndigo },

    -- snacks.nvim notifier
    SnacksNotifierBorderError { Normal, fg = t.error },
    SnacksNotifierBorderWarn { Normal, fg = t.warning },
    SnacksNotifierBorderInfo { Normal, fg = t.info },
    SnacksNotifierBorderDebug { Normal, fg = t.punctuation },
    SnacksNotifierBorderTrace { Normal, fg = t.property },
    SnacksNotifierIconError { SnacksNotifierBorderError },
    SnacksNotifierIconWarn { SnacksNotifierBorderWarn },
    SnacksNotifierIconInfo { SnacksNotifierBorderInfo },
    SnacksNotifierIconDebug { SnacksNotifierBorderDebug },
    SnacksNotifierIconTrace { SnacksNotifierBorderTrace },
    SnacksNotifierTitleError { SnacksNotifierBorderError },
    SnacksNotifierTitleWarn { SnacksNotifierBorderWarn },
    SnacksNotifierTitleInfo { SnacksNotifierBorderInfo },
    SnacksNotifierTitleDebug { SnacksNotifierBorderDebug },
    SnacksNotifierTitleTrace { SnacksNotifierBorderTrace },

    -- snacks.nvim picker
    -- SnacksPicker { NormalFloat },
    SnacksPickerBorder { NormalFloat, fg = t.punctuation },
    SnacksPickerTitle { NormalFloat, fg = t.punctuation },
    -- SnacksPickerCursorLine { CursorLine },
    SnacksPickerSelected { fg = t.primary },
    SnacksPickerSearch { Visual },
    SnacksPickerMatch { fg = t.keyword },
    SnacksPickerPrompt { fg = t.punctuation },
    SnacksPickerCol { Number },
    SnacksPickerRow { Number },
    SnacksPickerFile { fg = t.fg },
    SnacksPickerDir { Comment },
    SnacksPickerBufFlags { fg = t.primary },
    SnacksPickerGitStatusAdded { fg = t.method },
    SnacksPickerGitStatusModified { fg = t.keyword },
    SnacksPickerGitStatusRenamed { fg = t.keyword },
    SnacksPickerGitStatusCopied { fg = t.keyword },
    SnacksPickerGitStatusUnmerged { fg = t.number },
    SnacksPickerGitStatusDeleted { fg = t.type },
    SnacksPickerGitStatusIgnored { fg = t.comment },
    SnacksPickerGitStatusUntracked { fg = t.comment },

    -- Neotest
    NeotestPassed { fg = t.added },
    NeotestRunning { DiagnosticInfo },
    NeotestSkipped { DiagnosticWarn },
    NeotestFailed { DiagnosticError },
    NeotestAdapterName {},
    NeotestBorder {},
    NeotestDir { Directory },
    NeotestExpandMarker {},
    NeotestFile { fg = t.tag },
    NeotestFocused {},
    NeotestIndent {},
    NeotestMarked {},
    NeotestNamespace {},
    NeotestWinSelect {},
    NeotestTarget {},
    NeotestTest {},
    NeotestUnknown {},
    NeotestWatching { fg = t.constant },

    -- leap
    LeapMatch { fg = t.keyword, gui = "underline", sp = t.keyword },
    LeapLabel { bg = t.keyword, fg = t.bg },
    LeapBackdrop { fg = t.shade40 },

    -- copilot
    CopilotSuggestion { fg = t.copilot.mix(t.bg, 20) },
    CopilotAnnotation { fg = t.copilot.mix(t.primary, 50).mix(t.bg, 30) },

    -- StartifyBracket = { link = "GruvboxFg3" },
    StartifyFile { fg = t.constant },
    StartifyNumber { fg = t.constant },
    StartifyPath { fg = t.keyword },
    -- StartifySlash = { fg = t.primary },
    -- StartifySection = { link = "GruvboxYellow" },
    -- StartifySpecial = { link = "GruvboxBg2" },
    StartifyHeader { fg = t.string },
    StartifyFooter { fg = t.keyword },
    StartifyVar { fg = t.primary },

    -- alpha-nvim
    AlphaHeader { fg = t.string },
    AlphaButtons { fg = t.constant },
    AlphaShortcut { fg = t.primary },
    AlphaFooter { fg = t.constant },
    AlphaComment { fg = t.parameter },

    -- MiniStarterCurrent {},
    MiniStarterFooter { fg = t.constant },
    MiniStarterHeader { fg = t.string },
    MiniStarterInactive { fg = t.comment },
    MiniStarterItem { fg = t.fg },
    MiniStarterItemBullet { fg = t.border },
    MiniStarterItemPrefix { fg = t.yellow },
    MiniStarterQuery { fg = t.cyan },
    MiniStarterSection { fg = t.pink },

    DashboardHeader { fg = t.string },
    DashboardButtons { fg = t.constant },
    DashboardCenter { fg = t.type },
    DashboardShortcut { fg = t.constant },
    DashboardFooter { fg = t.keyword },
    DashboardComment { fg = t.parameter },
  }
end)

return theme
