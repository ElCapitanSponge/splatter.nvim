local Core = require("splatter.colors.core")

---@cass Palette
local ret = {
	bg="",
	fg="",
	bg_hover="",
	fg_hover="",
	border="",
	border_hover="",
	primary="",
	secondary="",
	alt="",
	full=Core,
	git = {
		add = "#9ECE6A",
		change = "#E0AF68",
		delete = "#FF007C",
	}
}
return ret
