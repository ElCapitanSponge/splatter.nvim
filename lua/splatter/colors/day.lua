return function()
	local Util = require("splatter.util")

	--- @type ThemePalette
	local colors = vim.deepcopy(Util.mod("splatter.colors.night"))

	-- Overrides
	colors.bg = colors.full.surface50
	colors.fg = colors.full.surface1000
	colors.bg_hover = colors.full.surface100
	colors.fg_hover = colors.full.surface900

	return colors
end
