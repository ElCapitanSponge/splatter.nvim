local M = {}

M.url = "https://github.com/ibhagwan/fzf-lua"

---@type splatter.HighlightsFn
function M.get(c)
	-- stylua: ignore
	return {
		FzfLuaBorder        = { fg = c.border_highlight, bg = c.bg_hover },
		FzfLuaCursor        = "IncSearch",
		FzfLuaDirPart       = { fg = c.fg_hover },
		FzfLuaFilePart      = "FzfLuaFzfNormal",
		FzfLuaFzfCursorLine = "Visual",
		FzfLuaFzfNormal     = { fg = c.fg },
		FzfLuaFzfPointer    = { fg = c.secondary },
		FzfLuaFzfSeparator  = { fg = c.alt, bg = c.bg_hover },
		FzfLuaHeaderBind    = "@punctuation.special",
		FzfLuaHeaderText    = "Title",
		FzfLuaNormal        = { fg = c.fg, bg = c.bg_hover },
		FzfLuaPath          = "Directory",
		FzfLuaPreviewTitle  = { fg = c.border_highlight, bg = c.bg_hover },
		FzfLuaTitle         = { fg = c.primary, bg = c.bg_hover },
	}
end

return M
