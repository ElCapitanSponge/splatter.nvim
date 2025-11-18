local Util = require("splatter.util")

local M = {}

M.url = "https://github.com/nvim-treesitter/nvim-treesitter-context"

---@type splatter.HighlightsFn
function M.get(c)
	-- stylua: ignore
	return {
		TreesitterContext = { bg = Util.blend_bg(c.fg_hover, 0.8) },
	}
end

return M
