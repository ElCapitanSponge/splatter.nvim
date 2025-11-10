---@param opts splatter.Config
return function(opts)
	local Util = require("splatter.util")

	---@type Palette
	local colors = vim.deepcopy(Util.mod("splatter.colors.night"))

	---@type Palette

	Util.invert(colors)
	colors.bg_dark = Util.blend(colors.bg, 0.9, colors.fg)
	colors.bg_dark1 = Util.blend(colors.bg_dark, 0.9, colors.fg)
	return colors
end
