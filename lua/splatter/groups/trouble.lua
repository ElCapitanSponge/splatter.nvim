local M = {}

M.url = "https://github.com/folke/trouble.nvim"

---@type splatter.HighlightsFn
function M.get(c, opts)
	-- stylua: ignore
	return {
		TroubleText   = { fg = c.fg_hover },
		TroubleCount  = { fg = c.terminal.magenta, bg = c.bg_hover },
		TroubleNormal = { fg = c.fg, bg = c.bg },
	}
end

return M
