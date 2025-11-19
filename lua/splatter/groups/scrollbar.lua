local M = {}

M.url = "https://github.com/petertriho/nvim-scrollbar"

---@type splatter.HighlightsFn
function M.get(c)
	-- stylua: ignore
	return {
		ScrollbarError        = { fg = c.fg, bg = c.bg },
		ScrollbarErrorHandle  = { fg = c.fg, bg = c.bg },
		ScrollbarHandle       = { fg = c.fg, bg = c.bg },
		ScrollbarHint         = { fg = c.fg, bg = c.bg },
		ScrollbarHintHandle   = { fg = c.fg, bg = c.bg },
		ScrollbarInfo         = { fg = c.fg, bg = c.bg },
		ScrollbarInfoHandle   = { fg = c.fg, bg = c.bg },
		ScrollbarMisc         = { fg = c.fg, bg = c.bg },
		ScrollbarMiscHandle   = { fg = c.fg, bg = c.bg },
		ScrollbarSearch       = { fg = c.fg, bg = c.bg },
		ScrollbarSearchHandle = { fg = c.fg, bg = c.bg },
		ScrollbarWarn         = { fg = c.fg, bg = c.bg },
		ScrollbarWarnHandle   = { fg = c.fg, bg = c.bg },
	}
end

return M
