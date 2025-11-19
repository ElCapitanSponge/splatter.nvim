local M = {}

M.url = "https://github.com/ibhagwan/fzf-lua"

---@type splatter.HighlightsFn
function M.get(c)
	-- stylua: ignore
	return {
		FzfLuaBorder        = { fg = c.fg, bg = c.bg },
		FzfLuaCursor        = "IncSearch",
		FzfLuaDirPart       = { fg = c.fg },
		FzfLuaFilePart      = "FzfLuaFzfNormal",
		FzfLuaFzfCursorLine = "Visual",
		FzfLuaFzfNormal     = { fg = c.fg },
		FzfLuaFzfPointer    = { fg = c.fg },
		FzfLuaFzfSeparator  = { fg = c.fg, bg = c.bg },
		FzfLuaHeaderBind    = "@punctuation.special",
		FzfLuaHeaderText    = "Title",
		FzfLuaNormal        = { fg = c.fg, bg = c.bg },
		FzfLuaPath          = "Directory",
		FzfLuaPreviewTitle  = { fg = c.fg, bg = c.bg },
		FzfLuaTitle         = { fg = c.fg, bg = c.bg },
	}
end

return M
