---@param opts splatter.Config
return function(opts)
	local Util = require("splatter.util")

	local colors = vim.deepcopy(Util.mod("splatter.colors.night"))
	return colors
end
