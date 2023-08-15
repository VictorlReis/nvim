return {
  { "windwp/nvim-ts-autotag" },
  {
    "nvim-treesitter/nvim-treesitter",
    {
      "nvim-treesitter/nvim-treesitter",
      opts = {
        ensure_installed = {
          "bash",
          "html",
          "javascript",
          "css",
          "json",
          "lua",
          "markdown",
          "markdown_inline",
          "python",
          "query",
          "regex",
          "tsx",
          "typescript",
          "vim",
          "yaml",
          "elixir",
          "c_sharp",
        },
      },
    },
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(
          opts.ensure_installed,
          { "typescript", "tsx", "json", "json5", "jsonc", "ninja", "python", "rst", "toml" }
        )
      end
    end,
  },
}
