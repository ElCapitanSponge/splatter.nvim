local Config = require("splatter.config")
local Util = require("splatter.util")

local M = {}

-- stylua: ignore
M.plugins = {
	["bufferline.nvim"]         = "bufferline",
	["fzf-lua"]                 = "fzf",
	["gitsigns.nvim"]           = "gitsigns",
	["lazy.nvim"]               = "lazy",
	["nvim-cmp"]                = "cmp",
	["nvim-dap"]                = "dap",
	["nvim-notify"]             = "notify",
	["nvim-scrollbar"]          = "scrollbar",
	["nvim-tree.lua"]           = "nvim-tree",
	["nvim-treesitter-context"] = "treesitter-context",
	["telescope.nvim"]          = "telescope",
	["trouble.nvim"]            = "trouble",
	["vim-gitgutter"]           = "gitgutter",
	["vimwiki"]                 = "vimwiki",
	["which-key.nvim"]          = "which-key"
}

local me = debug.getinfo(1, "S").source:sub(2)
me = vim.fn.fnamemodify(me, ":h")

function M.get_group(name)
	---@type {get: splatter.HighlightsFn, url: string}
	return Util.mod("splatter.groups." .. name)
end

---@param colors ColorScheme
---@param opts splatter.Config
function M.get(name, colors, opts)
	local mod = M.get_group(name)
	return mod.get(colors, opts)
end

---@param colors ColorScheme
---@param opts splatter.Config
function M.setup(colors, opts)
	local groups = {
		base = true,
		kinds = true,
		semantic_tokens = true,
		treesitter = true,
	}

	if opts.plugins.all then
		for _, group in pairs(M.plugins) do
			groups[group] = true
		end
	elseif opts.plugins.auto and package.loaded.lazy then
		local plugins = require("lazy.core.config").plugins
		for plugin, group in pairs(M.plugins) do
			if plugins[plugin] then
				groups[group] = true
			end
		end

		-- special case for mini.nvim
		if plugins["mini.nvim"] then
			for _, group in pairs(M.plugins) do
				if group:find("^mini_") then
					groups[group] = true
				end
			end
		end
	end

	-- manually enable/disable plugins
	for plugin, group in pairs(M.plugins) do
		local use = opts.plugins[group]
		use = use == nil and opts.plugins[plugin] or use
		if use ~= nil then
			if type(use) == "table" then
				use = use.enabled
			end
			groups[group] = use or nil
		end
	end

	local names = vim.tbl_keys(groups)
	table.sort(names)

	local cache_key = opts.style
	local cache = opts.cache and Util.cache.read(cache_key)

	local inputs = {
		colors = colors,
		plugins = names,
		version = Config.version,
		opts = { transparent = opts.transparent, styles = opts.styles, dim_inactive = opts.dim_inactive },
	}

	local ret = cache and vim.deep_equal(inputs, cache.inputs) and cache.groups

	if not ret then
		ret = {}
		-- merge highlights
		for group in pairs(groups) do
			for k, v in pairs(M.get(group, colors, opts)) do
				ret[k] = v
			end
		end
		Util.resolve(ret)
		if opts.cache then
			Util.cache.write(cache_key, { groups = ret, inputs = inputs })
		end
	end
	opts.on_highlights(ret, colors)

	return ret, groups
end

return M
