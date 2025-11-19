local M = {}

M.url = "https://github.com/folke/which-key.nvim"

---@type splatter.HighlightsFn
function M.get(c, opts)
	-- stylua: ignore
	return {
		WhichKey          = { fg = c.fg },
		WhichKeyGroup     = { fg = c.fg },
		WhichKeyDesc      = { fg = c.fg },
		WhichKeySeparator = { fg = c.fg },
		WhichKeyNormal    = { bg = c.bg },
		WhichKeyValue     = { fg = c.fg },
	}
end

return M
