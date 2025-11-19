local M = {}

M.url = "https://github.com/folke/lazy.nvim"

---@type splatter.HighlightsFn
function M.get(c, opts)
	-- stylua: ignore
	return {
		LazyProgressDone = { bold = true, fg = c.secondary },
		LazyProgressTodo = { bold = true, fg = c.fg_hover },
	}
end

return M
