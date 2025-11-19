local M = {}

M.url = "https://github.com/hrsh7th/nvim-cmp"

---@type splatter.HighlightsFn
function M.get(c, opts)
	-- stylua: ignore
	local ret = {
		CmpDocumentation       = { fg = c.fg, bg = c.bg_hover },
		CmpDocumentationBorder = { fg = c.border_highlight, bg = c.bg_hover },
		CmpGhostText           = { fg = c.black },
		CmpItemAbbr            = { fg = c.fg, bg = c.none },
		CmpItemAbbrDeprecated  = { fg = c.fg_hover, bg = c.none, strikethrough = true },
		CmpItemAbbrMatch       = { fg = c.info, bg = c.none },
		CmpItemAbbrMatchFuzzy  = { fg = c.info, bg = c.none },
		CmpItemKindCodeium     = { fg = c.terminal.cyan, bg = c.none },
		CmpItemKindCopilot     = { fg = c.terminal.cyan, bg = c.none },
		CmpItemKindSupermaven  = { fg = c.terminal.cyan, bg = c.none },
		CmpItemKindDefault     = { fg = c.fg_hover, bg = c.none },
		CmpItemKindTabNine     = { fg = c.terminal.cyan, bg = c.none },
		CmpItemMenu            = { fg = c.comment, bg = c.none },
	}

	require("splatter.groups.kinds").kinds(ret, "CmpItemKind%s")
	return ret
end

return M
