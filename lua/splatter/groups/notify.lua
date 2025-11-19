local Util = require("splatter.util")

local M = {}

M.url = "https://github.com/rcarriga/nvim-notify"

---@type splatter.HighlightsFn
function M.get(c, opts)
	-- stylua: ignore
	return {
		NotifyBackground  = { fg = c.fg, bg = c.bg },
		NotifyDEBUGBody   = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
		NotifyDEBUGBorder = { fg = Util.blend_bg(c.comment, 0.3), bg = opts.transparent and c.none or c.bg },
		NotifyDEBUGIcon   = { fg = c.fg },
		NotifyDEBUGTitle  = { fg = c.fg },
		NotifyERRORBody   = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
		NotifyERRORBorder = { fg = Util.blend_bg(c.error, 0.3), bg = opts.transparent and c.none or c.bg },
		NotifyERRORIcon   = { fg = c.fg },
		NotifyERRORTitle  = { fg = c.fg },
		NotifyINFOBody    = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
		NotifyINFOBorder  = { fg = Util.blend_bg(c.info, 0.3), bg = opts.transparent and c.none or c.bg },
		NotifyINFOIcon    = { fg = c.fg },
		NotifyINFOTitle   = { fg = c.fg },
		NotifyTRACEBody   = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
		NotifyTRACEBorder = { fg = Util.blend_bg(c.full.purple200, 0.3), bg = opts.transparent and c.none or c.bg },
		NotifyTRACEIcon   = { fg = c.fg },
		NotifyTRACETitle  = { fg = c.fg },
		NotifyWARNBody    = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
		NotifyWARNBorder  = { fg = Util.blend_bg(c.warning, 0.3), bg = opts.transparent and c.none or c.bg },
		NotifyWARNIcon    = { fg = c.fg },
		NotifyWARNTitle   = { fg = c.fg },
	}
end

return M
