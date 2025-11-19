local M = {}

M.url = "https://github.com/vimwiki/vimwiki"

---@type splatter.HighlightsFn
function M.get(c, opts)
	-- stylua: ignore
	local ret = {
		VimwikiLink = { fg = c.fg, bg = c.bg },
		VimwikiHeaderChar = { fg = c.fg, bg = c.bg },
		VimwikiHR = { fg = c.fg, bg = c.bg },
		VimwikiList = { fg = c.fg, bg = c.bg },
		VimwikiTag = { fg = c.fg, bg = c.bg },
		VimwikiMarkers = { fg = c.fg, bg = c.bg },
	}
	return ret
end

return M
