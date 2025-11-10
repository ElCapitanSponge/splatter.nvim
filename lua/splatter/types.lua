---@class splatter.Highlight: vim.api.keyset.highlight
---@field style? vim.api.keyset.highlight

---@alias splatter.Highlights table<string,splatter.Highlight|string>

---@alias splatter.HighlightsFn fun(colors: ColorScheme, opts:splatter.Config):splatter.Highlights

---@class splatter.Cache
---@field groups splatter.Highlights
---@field inputs table
