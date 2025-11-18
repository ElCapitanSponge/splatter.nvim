local M = {}

M.url = "https://github.com/folke/which-key.nvim"

---@type splatter.HighlightsFn
function M.get(c, opts)
	-- stylua: ignore
	return {
		WhichKey          = { fg = c.primary },
		WhichKeyGroup     = { fg = c.secondary },
		WhichKeyDesc      = { fg = c.alt },
		WhichKeySeparator = { fg = c.comment },
		WhichKeyNormal    = { bg = c.bg_hover },
		WhichKeyValue     = { fg = c.fg_hover },
	}
end

return M
