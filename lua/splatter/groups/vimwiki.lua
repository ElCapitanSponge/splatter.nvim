local M = {}

M.url = "https://github.com/vimwiki/vimwiki"

---@type splatter.HighlightsFn
function M.get(c, opts)
	-- stylua: ignore
	local ret = {
		VimwikiLink = { fg = c.secondary, bg = c.none },
		VimwikiHeaderChar = { fg = c.primary, bg = c.none },
		VimwikiHR = { fg = c.alt, bg = c.none },
		VimwikiList = { fg = c.todo, bg = c.none },
		VimwikiTag = { fg = c.full.indigo400, bg = c.none },
		VimwikiMarkers = { fg = c.full.indigo700, bg = c.none },
	}
	return ret
end

return M
