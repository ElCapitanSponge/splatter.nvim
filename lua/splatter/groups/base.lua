local Util = require("splatter.util")

local M = {}

---@type splatter.HighlightsFn
function M.get(c, opts)
	-- stylua: ignore
	return {
		Foo                         = { bg = c.bg, fg = c.fg },

		Comment                     = { fg = c.comment, style = opts.styles.comments }, -- any comment
		ColorColumn                 = { bg = c.bg },                              -- used for the columns set with 'colorcolumn'
		Conceal                     = { fg = c.fg },                              -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor                      = { fg = c.fg, bg = c.bg },                   -- character under the cursor
		lCursor                     = { fg = c.fg, bg = c.bg },                   -- the character under the cursor when |language-mapping| is used (see 'guicursor')
		CursorIM                    = { fg = c.fg, bg = c.bg },                   -- like Cursor, but used when in IME mode |CursorIM|
		CursorColumn                = { bg = c.bg },                              -- Screen-column at the cursor, when 'cursorcolumn' is set.
		CursorLine                  = { bg = c.bg },                              -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
		Directory                   = { fg = c.fg },                              -- directory names (and other special names in listings)
		DiffAdd                     = { bg = c.bg },                              -- diff mode: Added line |diff.txt|
		DiffChange                  = { bg = c.bg },                              -- diff mode: Changed line |diff.txt|
		DiffDelete                  = { bg = c.bg },                              -- diff mode: Deleted line |diff.txt|
		DiffText                    = { bg = c.bg },                              -- diff mode: Changed text within a changed line |diff.txt|
		EndOfBuffer                 = { fg = c.fg },                              -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
		ErrorMsg                    = { fg = c.fg },                              -- error messages on the command line
		VertSplit                   = { fg = c.bg },                              -- the column separating vertically split windows
		WinSeparator                = { fg = c.fg, bold = true },                 -- the column separating vertically split windows
		Folded                      = { fg = c.fg, bg = c.bg },                   -- line used for closed folds
		FoldColumn                  = { bg = c.bg, fg = c.fg },                   -- 'foldcolumn'
		SignColumn                  = { bg = c.bg, fg = c.fg },                   -- column where |signs| are displayed
		SignColumnSB                = { bg = c.bg, fg = c.fg },                   -- column where |signs| are displayed
		Substitute                  = { bg = c.bg, fg = c.fg },                   -- |:substitute| replacement text highlighting
		LineNr                      = { fg = c.fg },                              -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		CursorLineNr                = { fg = c.fg, bold = true },                 -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		LineNrAbove                 = { fg = c.fg },
		LineNrBelow                 = { fg = c.fg },
		MatchParen                  = { fg = c.fg, bold = true },                             -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		ModeMsg                     = { fg = c.fg, bold = true },                             -- 'showmode' message (e.g., "-- INSERT -- ")
		MsgArea                     = { fg = c.fg },                                          -- Area for messages and cmdline
		MoreMsg                     = { fg = c.fg },                                          -- |more-prompt|
		NonText                     = { fg = c.fg },                                          -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		Normal                      = { fg = c.fg, bg = c.bg },                               -- normal text
		NormalNC                    = { fg = c.fg, bg = opts.dim_inactive and c.bg_hover or c.bg }, -- normal text in non-current windows
		NormalSB                    = { fg = c.fg, bg = c.bg },                               -- normal text in sidebar
		NormalFloat                 = { fg = c.fg, bg = c.bg_hover },                               -- Normal text in floating windows.
		FloatBorder                 = { fg = c.border_hover, bg = c.bg_hover },
		FloatTitle                  = { fg = c.primary, bg = c.bg_hover },
		Pmenu                       = { bg = c.bg_hover, fg = c.fg },               -- Popup menu: normal item.
		PmenuMatch                  = { bg = c.bg, fg = c.fg },               -- Popup menu: Matched text in normal item.
		PmenuSel                    = { bg = c.bg_hover },                          -- Popup menu: selected item.
		PmenuMatchSel               = { bg = c.bg, fg = c.alt },               -- Popup menu: Matched text in selected item.
		PmenuSbar                   = { bg = c.bg },                          -- Popup menu: scrollbar.
		PmenuThumb                  = { bg = c.secondary },                          -- Popup menu: Thumb of the scrollbar.
		Question                    = { fg = c.fg },                          -- |hit-enter| prompt and yes/no questions
		QuickFixLine                = { bg = c.bg, bold = true },             -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		Search                      = { bg = c.bg_hover, fg = c.fg_hover },               -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
		IncSearch                   = { bg = c.bg, fg = c.fg },               -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		CurSearch                   = "IncSearch",
		SpecialKey                  = { fg = c.fg },                          -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
		SpellBad                    = { sp = c.error, undercurl = true },     -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		SpellCap                    = { sp = c.warning, undercurl = true },   -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellLocal                  = { sp = c.info, undercurl = true },      -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellRare                   = { sp = c.hint, undercurl = true },      -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
		StatusLine                  = { fg = c.fg, bg = c.bg },               -- status line of current window
		StatusLineNC                = { fg = c.fg, bg = c.bg },               -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		TabLine                     = { bg = c.bg, fg = c.fg },               -- tab pages line, not active tab page label
		TabLineFill                 = { bg = c.bg },                          -- tab pages line, where there are no labels
		TabLineSel                  = { fg = c.fg, bg = c.bg },               -- tab pages line, active tab page label
		Title                       = { fg = c.fg, bold = true },             -- titles for output from ":set all", ":autocmd" etc.
		Visual                      = { bg = c.bg },                          -- Visual mode selection
		VisualNOS                   = { bg = c.bg },                          -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg                  = { fg = c.fg },                          -- warning messages
		Whitespace                  = { fg = c.fg },                          -- "nbsp", "space", "tab" and "trail" in 'listchars'
		WildMenu                    = { bg = c.bg },                          -- current match in 'wildmenu' completion
		WinBar                      = "StatusLine",                           -- window bar
		WinBarNC                    = "StatusLineNC",                         -- window bar in inactive windows

		Bold                        = { bold = true },             -- (preferred) any bold text
		Character                   = { fg = c.full.green300 },                          --  a character constant: 'c', '\n'
		Constant                    = { fg = c.full.orange300 },                          -- (preferred) any constant
		Debug                       = { fg = c.fg },                          --    debugging statements
		Delimiter                   = "Special",                              --  character that needs attention
		Error                       = { fg = c.error },                          -- (preferred) any erroneous construct
		Function                    = { fg = c.full.pink300, style = opts.styles.functions }, -- function name (also: methods for classes)
		Identifier                  = { fg = c.full.purple500, style = opts.styles.variables }, -- (preferred) any variable name
		Italic                      = { italic = true },           -- (preferred) any italic text
		Keyword                     = { fg = c.fg, style = opts.styles.keywords }, --  any other keyword
		Operator                    = { fg = c.fg },                          -- "sizeof", "+", "*", etc.
		PreProc                     = { fg = c.fg },                          -- (preferred) generic Preprocessor
		Special                     = { fg = c.comment },                          -- (preferred) any special symbol
		Statement                   = { fg = c.fg },                          -- (preferred) any statement
		String                      = { fg = c.full.green400 },                          --   a string constant: "this is a string"
		Todo                        = { bg = c.bg, fg = c.todo },               -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
		Type                        = { fg = c.full.blue400 },                          -- (preferred) int, long, char, etc.
		Underlined                  = { underline = true },                   -- (preferred) text that stands out, HTML links
		debugBreakpoint             = { bg = c.bg, fg = c.fg },               -- used for breakpoint colors in terminal-debug
		debugPC                     = { bg = c.bg },                          -- used for highlighting the current line in terminal-debug
		dosIniLabel                 = "@property",
		helpCommand                 = { bg = c.bg, fg = c.info },
		qfFileName                  = { fg = c.fg },
		qfLineNr                    = { fg = c.fg },

		-- These groups are for the native LSP client. Some other LSP clients may
		-- use these groups, or use their own.
		LspReferenceText            = { bg = c.bg }, -- used for highlighting "text" references
		LspReferenceRead            = { bg = c.bg }, -- used for highlighting "read" references
		LspReferenceWrite           = { bg = c.bg }, -- used for highlighting "write" references
		LspSignatureActiveParameter = { bg = c.bg, bold = true },
		LspCodeLens                 = { fg = c.fg },
		LspInlayHint                = { fg = c.fg },
		LspInfoBorder               = { fg = c.fg, bg = c.bg },
		ComplHint                   = { fg = c.fg },

		-- diagnostics
		DiagnosticError             = { fg = c.fg },                  -- Used as the base highlight group. Other Diagnostic highlights link to this by default
		DiagnosticWarn              = { fg = c.fg },                  -- Used as the base highlight group. Other Diagnostic highlights link to this by default
		DiagnosticInfo              = { fg = c.fg },                  -- Used as the base highlight group. Other Diagnostic highlights link to this by default
		DiagnosticHint              = { fg = c.fg },                  -- Used as the base highlight group. Other Diagnostic highlights link to this by default
		DiagnosticUnnecessary       = { fg = c.fg },                  -- Used as the base highlight group. Other Diagnostic highlights link to this by default
		DiagnosticVirtualTextError  = { bg = c.bg, fg = c.fg },       -- Used for "Error" diagnostic virtual text
		DiagnosticVirtualTextWarn   = { bg = c.bg, fg = c.fg },       -- Used for "Warning" diagnostic virtual text
		DiagnosticVirtualTextInfo   = { bg = c.bg, fg = c.fg },       -- Used for "Information" diagnostic virtual text
		DiagnosticVirtualTextHint   = { bg = c.bg, fg = c.fg },       -- Used for "Hint" diagnostic virtual text
		DiagnosticUnderlineError    = { undercurl = true, sp = c.error }, -- Used to underline "Error" diagnostics
		DiagnosticUnderlineWarn     = { undercurl = true, sp = c.warning }, -- Used to underline "Warning" diagnostics
		DiagnosticUnderlineInfo     = { undercurl = true, sp = c.info }, -- Used to underline "Information" diagnostics
		DiagnosticUnderlineHint     = { undercurl = true, sp = c.hint }, -- Used to underline "Hint" diagnostics

		-- Health
		healthError                 = { fg = c.fg },
		healthSuccess               = { fg = c.fg },
		healthWarning               = { fg = c.fg },

		-- diff (not needed anymore?)
		diffAdded                   = { bg = c.bg, fg = c.fg },
		diffRemoved                 = { bg = c.bg, fg = c.fg },
		diffChanged                 = { bg = c.bg, fg = c.fg },
		diffOldFile                 = { fg = c.fg, bg = c.bg },
		diffNewFile                 = { fg = c.fg, bg = c.bg },
		diffFile                    = { fg = c.fg },
		diffLine                    = { fg = c.fg },
		diffIndexLine               = { fg = c.fg },
		helpExample                 = { fg = c.fg },
	}
end

return M
