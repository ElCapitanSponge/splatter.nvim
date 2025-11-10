local M = {}

M.version = "0.0.1"

---@class splatter.Config
M.defaults = {
	style = "night",
	light_style = "day",
	dim_inactive = false,
	cache = true,
	terminal_colors = true,
	styles = {
		comments = { italic = true },
		keywords = { italic = true },
		functions = {},
		variables = {},
	},
	---@type table<string, boolean|{enabled:boolean}>
	plugins = {
		all = package.loaded.lazy == nil,
		auto = true,
	},
	day_brightness = 0.3,
	lualine_bold = false,

	---@param colors ColorScheme
	on_colors = function(colors) end,

	---@param highlights splatter.Highlights
	---@param colors ColorScheme
	on_highlights = function(highlights, colors) end,
}

---@type splatter.Config
M.options = nil

---@param options? splatter.Config
function M.setup(options)
	M.options = vim.tbl_deep_extend("force", {}, M.defaults, options or {})
end

---@param opts? splatter.Config
function M.extend(opts)
	return opts and vim.tbl_deep_extend("force", {}, M.options, opts) or M.options
end

setmetatable(M, {
	__index = function(_, o)
		if o == "options" then
			return M.defaults
		end
	end,
})

return M
