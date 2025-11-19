local M = {}

M.url = "https://github.com/nvim-telescope/telescope.nvim"

---@type splatter.HighlightsFn
function M.get(c, opts)
	-- stylua: ignore
	return {
		TelescopeBorder         = { fg = c.border_highlight, bg = c.bg_hover },
		TelescopeNormal         = { fg = c.fg, bg = c.bg_hover },
		TelescopePromptBorder   = { fg = c.secondary, bg = c.bg_hover },
		TelescopePromptTitle    = { fg = c.primary, bg = c.bg_hover },
		TelescopeResultsComment = { fg = c.comment },
	}
end

return M
