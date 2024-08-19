local config = require("kaolin.config")

local M = {}
---@type {light?: string, dark?: string}
M.styles = {}

---@param opts? kaolin.Config
function M.load(opts)
  opts = require("kaolin.config").extend(opts)
  local bg = vim.o.background
  -- local style_bg = opts.style == "kaolin" and "galaxy" or "temple"
  local style_bg = opts.style == "kaolin"

  -- if bg ~= style_bg then
  --   -- if vim.g.colors_name == "kaolin-" .. opts.style then
  --   if vim.g.colors_name == "kaolin" .. opts.style then
  --     -- opts.style = bg == "kaolin" and (M.styles.light or "galaxy") or (M.styles.dark or "galaxy")
  --     opts.style = bg == "kaolin"
  --   else
  --     vim.o.background = style_bg
  --   end
  -- end

  M.styles[vim.o.background] = opts.style
  return require("kaolin.theme").setup(opts)
end

M.setup = config.setup

return M
