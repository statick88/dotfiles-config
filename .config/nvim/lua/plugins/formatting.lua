return {
  {
    "MunifTanjim/prettier.nvim",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
    },
    config = function()
      require("prettier").setup({
        bin = "prettierd", -- Usa 'prettierd' si lo tienes instalado para mejor rendimiento
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
