local Core = require("splatter.colors.core")

---@class ThemePalette
local ret = {
	bg=Core.surface900,
	fg=Core.surface0,
	bg_hover=Core.surface700,
	fg_hover=Core.surface100,
	border=Core.purple800,
	border_hover=Core.purple700,
	primary=Core.purple500,
	secondary=Core.pink300,
	alt=Core.indigo400,
	full=Core,
	comment=Core.surface500,
	git = {
		add = Core.green300,
		change = Core.yellow300,
		delete = Core.red300
	}
}
return ret
