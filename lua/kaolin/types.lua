---@class kaolin.Highlight: vim.api.keyset.highlight
---@field style? vim.api.keyset.highlight

---@alias kaolin.Highlights table<string,kaolin.Highlight|string>

---@alias kaolin.HighlightsFn fun(colors: ColorScheme, opts:kaolin.Config):kaolin.Highlights

---@class kaolin.Cache
---@field groups kaolin.Highlights
---@field inputs table
