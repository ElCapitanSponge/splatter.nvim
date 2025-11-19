local M = {}

M.url = "https://github.com/nvim-telescope/telescope.nvim"

---@type splatter.HighlightsFn
function M.get(c, opts)
	-- stylua: ignore
	return {
		TelescopeBorder         = { fg = c.fg, bg = c.bg },
		TelescopeNormal         = { fg = c.fg, bg = c.bg },
		TelescopePromptBorder   = { fg = c.fg, bg = c.bg },
		TelescopePromptTitle    = { fg = c.fg, bg = c.bg },
		TelescopeResultsComment = { fg = c.fg },
	}
end

return M
