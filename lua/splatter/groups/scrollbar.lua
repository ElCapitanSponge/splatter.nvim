local M = {}

M.url = "https://github.com/petertriho/nvim-scrollbar"

---@type splatter.HighlightsFn
function M.get(c)
	-- stylua: ignore
	return {
		ScrollbarError        = { fg = c.error, bg = c.none },
		ScrollbarErrorHandle  = { fg = c.error, bg = c.bg_hover },
		ScrollbarHandle       = { fg = c.none, bg = c.bg_hover },
		ScrollbarHint         = { fg = c.hint, bg = c.none },
		ScrollbarHintHandle   = { fg = c.hint, bg = c.bg_hover },
		ScrollbarInfo         = { fg = c.info, bg = c.none },
		ScrollbarInfoHandle   = { fg = c.info, bg = c.bg_hover },
		ScrollbarMisc         = { fg = c.full.purple200, bg = c.none },
		ScrollbarMiscHandle   = { fg = c.full.purple200, bg = c.bg_hover },
		ScrollbarSearch       = { fg = c.full.orange200, bg = c.none },
		ScrollbarSearchHandle = { fg = c.full.orange200, bg = c.bg_hover },
		ScrollbarWarn         = { fg = c.warning, bg = c.none },
		ScrollbarWarnHandle   = { fg = c.warning, bg = c.bg_hover },

	}
end

return M
