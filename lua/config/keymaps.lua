-- -- Keymaps are automatically loaded on the VeryLazy event
-- local Util = require("lazyvim.util")
--
local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map("n", "<Leader>o", ":SymbolsOutline<CR>", { noremap = true, silent = true })
map("n", "<Leader>gd", ":DiffviewOpen<CR>", { noremap = true, silent = true })
