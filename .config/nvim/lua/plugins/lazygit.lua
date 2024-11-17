return {
  {
    "MunifTanjim/prettier.nvim",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
    },
    config = function()
      require("prettier").setup({
        bin = "prettier", -- Usando 'prettier' en lugar de 'prettierd'
        filetypes = {
          "javascript",
          "typescript",
          "css",
          "scss",
          "html",
          "json",
          "yaml",
          "markdown",
          "graphql",
        },
      })
    end,
  },
}
