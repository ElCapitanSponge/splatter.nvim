local Util = require("splatter.util")

local M = {}

---@type table<string, ThemePalette|fun(opts:splatter.Config):ThemePalette>
M.styles = setmetatable({}, {
	__index = function(_, style)
		return vim.deepcopy(Util.mod("splatter.colors." .. style))
	end,
})

---@param opts? splatter.Config
function M.setup(opts)
	opts = require("splatter.config").extend(opts)


	local palette = M.styles[opts.style]
	if type(palette) == "function" then
		palette = palette(opts) --[[@as ThemePalette]]
	end

	-- Color Palette
	---@class ColorScheme: ThemePalette
	local colors = palette

	Util.bg = colors.bg
	Util.fg = colors.fg

	colors.none = "NONE"

	colors.diff = {
		add = Util.blend_bg(colors.git.add, 0.25),
		delete = Util.blend_bg(colors.git.delete, 0.25),
		change = Util.blend_bg(colors.git.change, 0.15),
		text = colors.fg,
	}

	colors.git.ignore = colors.comments
	colors.black = colors.full.surface1000
	colors.border_highlight = colors.bg
	colors.border = colors.border

	-- Popups and statusline always get a dark background
	colors.bg_popup = colors.bg_hover
	colors.bg_statusline = colors.bg

	colors.bg_visual = colors.bg_hover
	colors.bg_search = colors.bg_hover
	colors.fg_sidebar = colors.fg_hover
	colors.fg_float = colors.fg_hover

	colors.error = colors.full.red700
	colors.todo = colors.full.bluegray500
	colors.warning = colors.full.yellow400
	colors.info = colors.full.blue300
	colors.hint = colors.full.teal300

	-- stylua: ignore
	--- @class TerminalColors
	colors.terminal = {
		black          = colors.black,
		black_bright   = colors.bg,
		red            = colors.full.red800,
		red_bright     = Util.brighten(colors.full.red800),
		green          = colors.full.green600,
		green_bright   = Util.brighten(colors.full.green600),
		yellow         = colors.full.yellow600,
		yellow_bright  = Util.brighten(colors.full.yellow600),
		blue           = colors.full.blue600,
		blue_bright    = Util.brighten(colors.full.blue600),
		magenta        = colors.full.pink600,
		magenta_bright = Util.brighten(colors.full.pink600),
		cyan           = colors.full.cyan600,
		cyan_bright    = Util.brighten(colors.full.cyan600),
		white          = colors.full.surface0,
		white_bright   = colors.full.surface100,
	}

	return colors, opts
end

return M
