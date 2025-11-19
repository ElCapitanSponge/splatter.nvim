local M = {}

M.url = "https://github.com/folke/trouble.nvim"

---@type splatter.HighlightsFn
function M.get(c, opts)
	-- stylua: ignore
	return {
		TroubleText   = { fg = c.fg },
		TroubleCount  = { fg = c.fg, bg = c.bg },
		TroubleNormal = { fg = c.fg, bg = c.bg },
	}
end

return M
