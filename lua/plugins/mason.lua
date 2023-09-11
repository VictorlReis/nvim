return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "mypy, ruff, pyright", "debugpy" },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      table.insert(opts.ensure_installed, "js-debug-adapter")
      table.insert(opts.ensure_installed, "proselint")
      table.insert(opts.ensure_installed, "write-good")
      table.insert(opts.ensure_installed, "alex")
      table.insert(opts.ensure_installed, "black")
    end,
  },
}
