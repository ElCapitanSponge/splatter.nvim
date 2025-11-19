local M = {}

M.url = "https://github.com/hrsh7th/nvim-cmp"

---@type splatter.HighlightsFn
function M.get(c, opts)
	-- stylua: ignore
	local ret = {
		CmpDocumentation       = { fg = c.fg, bg = c.bg },
		CmpDocumentationBorder = { fg = c.fg, bg = c.bg },
		CmpGhostText           = { fg = c.fg },
		CmpItemAbbr            = { fg = c.fg, bg = c.bg },
		CmpItemAbbrDeprecated  = { fg = c.fg, bg = c.bg, strikethrough = true },
		CmpItemAbbrMatch       = { fg = c.fg, bg = c.bg },
		CmpItemAbbrMatchFuzzy  = { fg = c.fg, bg = c.bg },
		CmpItemKindCodeium     = { fg = c.fg, bg = c.bg },
		CmpItemKindCopilot     = { fg = c.fg, bg = c.bg },
		CmpItemKindSupermaven  = { fg = c.fg, bg = c.bg },
		CmpItemKindDefault     = { fg = c.fg, bg = c.bg },
		CmpItemKindTabNine     = { fg = c.fg, bg = c.bg },
		CmpItemMenu            = { fg = c.fg, bg = c.bg },
	}

	require("splatter.groups.kinds").kinds(ret, "CmpItemKind%s")
	return ret
end

return M
