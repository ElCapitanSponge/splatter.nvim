local Util = require("splatter.util")

local M = {}

---@type splatter.HighlightsFn
function M.get(c, opts)
	-- stylua: ignore
	local ret = {
		["@annotation"]                   = "PreProc",
		["@attribute"]                    = "PreProc",
		["@boolean"]                      = "Boolean",
		["@character"]                    = "Character",
		["@character.printf"]             = "SpecialChar",
		["@character.special"]            = "SpecialChar",
		["@comment"]                      = "Comment",
		["@comment.error"]                = { fg = c.error },
		["@comment.hint"]                 = { fg = c.hint },
		["@comment.info"]                 = { fg = c.info },
		["@comment.note"]                 = { fg = c.hint },
		["@comment.todo"]                 = { fg = c.todo },
		["@comment.warning"]              = { fg = c.warning },
		["@constant"]                     = "Constant",
		["@constant.builtin"]             = "Special",
		["@constant.macro"]               = "Define",
		["@constructor"]                  = { fg = c.primary }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
		["@constructor.tsx"]              = { fg = c.primary },
		["@diff.delta"]                   = "DiffChange",
		["@diff.minus"]                   = "DiffDelete",
		["@diff.plus"]                    = "DiffAdd",
		["@function"]                     = "Function",
		["@function.builtin"]             = "Special",
		["@function.call"]                = "@function",
		["@function.macro"]               = "Macro",
		["@function.method"]              = "Function",
		["@function.method.call"]         = "@function.method",
		["@keyword"]                      = { fg = c.primary, style = opts.styles.keywords }, -- For keywords that don't fall in previous categories.
		["@keyword.conditional"]          = "Conditional",
		["@keyword.coroutine"]            = "@keyword",
		["@keyword.debug"]                = "Debug",
		["@keyword.directive"]            = "PreProc",
		["@keyword.directive.define"]     = "Define",
		["@keyword.exception"]            = "Exception",
		["@keyword.function"]             = { fg = c.primary, style = opts.styles.functions }, -- For keywords used to define a function.
		["@keyword.import"]               = "Include",
		["@keyword.operator"]             = "@operator",
		["@keyword.repeat"]               = "Repeat",
		["@keyword.return"]               = "@keyword",
		["@keyword.storage"]              = "StorageClass",
		["@label"]                        = { fg = c.secondary }, -- For labels: `label:` in C and `:label:` in Lua.
		["@markup"]                       = "@none",
		["@markup.emphasis"]              = { italic = true },
		["@markup.environment"]           = "Macro",
		["@markup.environment.name"]      = "Type",
		["@markup.heading"]               = "Title",
		["@markup.italic"]                = { italic = true },
		["@markup.link"]                  = { fg = c.alt },
		["@markup.link.label"]            = "SpecialChar",
		["@markup.link.label.symbol"]     = "Identifier",
		["@markup.link.url"]              = "Underlined",
		["@markup.list"]                  = { fg = c.alt }, -- For special punctuation that does not fall in the categories before.
		["@markup.list.checked"]          = { fg = c.full.green200 }, -- For brackets and parens.
		["@markup.list.markdown"]         = { fg = c.info, bold = true },
		["@markup.list.unchecked"]        = { fg = c.full.bluegray400 }, -- For brackets and parens.
		["@markup.math"]                  = "Special",
		["@markup.raw"]                   = "String",
		["@markup.raw.markdown_inline"]   = { bg = c.bg, fg = c.fg },
		["@markup.strikethrough"]         = { strikethrough = true },
		["@markup.strong"]                = { bold = true },
		["@markup.underline"]             = { underline = true },
		["@module"]                       = "Include",
		["@module.builtin"]               = { fg = c.full.red400 }, -- Variable names that are defined by the languages, like `this` or `self`.
		["@namespace.builtin"]            = "@variable.builtin",
		["@none"]                         = {},
		["@number"]                       = "Number",
		["@number.float"]                 = "Float",
		["@operator"]                     = { fg = c.fg }, -- For any operator: `+`, but also `->` and `*` in C.
		["@property"]                     = { fg = c.secondary },
		["@punctuation.bracket"]          = { fg = c.fg }, -- For brackets and parens.
		["@punctuation.delimiter"]        = { fg = c.fg }, -- For delimiters ie: `.`
		["@punctuation.special"]          = { fg = c.fg }, -- For special symbols (e.g. `{}` in string interpolation)
		["@punctuation.special.markdown"] = { fg = c.fg }, -- For special symbols (e.g. `{}` in string interpolation)
		["@string"]                       = "String",
		["@string.documentation"]         = { fg = c.comment },
		["@string.escape"]                = { fg = c.fg }, -- For escape characters within a string.
		["@string.regexp"]                = { fg = c.alt }, -- For regexes.
		["@tag"]                          = "Label",
		["@tag.attribute"]                = "@property",
		["@tag.delimiter"]                = "Delimiter",
		["@tag.delimiter.tsx"]            = { fg = Util.blend_bg(c.info, 0.7) },
		["@tag.tsx"]                      = { fg = c.alt },
		["@tag.javascript"]               = { fg = c.alt },
		["@type"]                         = "Type",
		["@type.builtin"]                 = { fg = Util.blend_bg(c.alt, 0.8) },
		["@type.definition"]              = "Typedef",
		["@type.qualifier"]               = "@keyword",
		["@variable"]                     = { fg = c.fg, style = opts.styles.variables }, -- Any variable name that does not have another highlight.
		["@variable.builtin"]             = { fg = c.info },                         -- Variable names that are defined by the languages, like `this` or `self`.
		["@variable.member"]              = { fg = c.fg },                      -- For fields.
		["@variable.parameter"]           = { fg = c.alt },                      -- For parameters of a function.
		["@variable.parameter.builtin"]   = { fg = Util.blend_fg(c.alt, 0.8) },  -- For builtin parameters of a function, e.g. "..." or Smali's p[1-99]
	}

	return ret
end

return M
