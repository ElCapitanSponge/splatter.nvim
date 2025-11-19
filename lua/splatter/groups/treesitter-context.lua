local Util = require("splatter.util")

local M = {}

M.url = "https://github.com/nvim-treesitter/nvim-treesitter-context"

---@type splatter.HighlightsFn
function M.get(c)
	-- stylua: ignore
	return {
		TreesitterContext = { bg = c.bg },
	}
end

return M
