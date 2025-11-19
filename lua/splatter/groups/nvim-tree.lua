local M = {}

M.url = "https://github.com/kyazdani42/nvim-tree.lua"

---@type splatter.HighlightsFn
function M.get(c, opts)
	-- stylua: ignore
	return {
		NvimTreeFolderIcon   = { bg = c.bg, fg = c.fg },
		NvimTreeGitDeleted   = { fg = c.fg },
		NvimTreeGitDirty     = { fg = c.fg },
		NvimTreeGitNew       = { fg = c.fg },
		NvimTreeImageFile    = { fg = c.fg },
		NvimTreeIndentMarker = { fg = c.fg },
		NvimTreeNormal       = { fg = c.fg, bg = c.bg },
		NvimTreeNormalNC     = { fg = c.fg, bg = c.bg },
		NvimTreeOpenedFile   = { bg = c.bg },
		NvimTreeRootFolder   = { fg = c.fg, bold = true },
		NvimTreeSpecialFile  = { fg = c.fg, underline = true },
		NvimTreeSymlink      = { fg = c.fg },
		NvimTreeWinSeparator = { fg = opts.styles.sidebars == "transparent" and c.border or c.bg_hover, bg = c.bg },
	}
end

return M
