return {
  {
    "L3MON4D3/LuaSnip",
    keys = function()
      return {}
    end,
  },
  {
    "github/copilot.vim",
    event = "InsertEnter",
    init = function()
      -- vim.g.copilot_no_tab_map = true
      -- vim.cmd([[imap <silent><script><expr> <C-\> copilot#Accept("")]])
    end,
  },
}
