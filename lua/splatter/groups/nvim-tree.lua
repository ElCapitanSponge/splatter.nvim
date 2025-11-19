local M = {}

M.url = "https://github.com/kyazdani42/nvim-tree.lua"

---@type splatter.HighlightsFn
function M.get(c, opts)
	-- stylua: ignore
	return {
		NvimTreeFolderIcon   = { bg = c.none, fg = c.full.blue200 },
		NvimTreeGitDeleted   = { fg = c.git.delete },
		NvimTreeGitDirty     = { fg = c.git.change },
		NvimTreeGitNew       = { fg = c.git.add },
		NvimTreeImageFile    = { fg = c.fg_sidebar },
		NvimTreeIndentMarker = { fg = c.fg_hover },
		NvimTreeNormal       = { fg = c.fg_sidebar, bg = c.bg_hover },
		NvimTreeNormalNC     = { fg = c.fg_sidebar, bg = c.bg_hover },
		NvimTreeOpenedFile   = { bg = c.bg_hover },
		NvimTreeRootFolder   = { fg = c.full.blue200, bold = true },
		NvimTreeSpecialFile  = { fg = c.full.purple200, underline = true },
		NvimTreeSymlink      = { fg = c.full.blue200 },
		NvimTreeWinSeparator = { fg = opts.styles.sidebars == "transparent" and c.border or c.bg_hover, bg = c.bg_hover },
	}
end

return M
