return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "windwp/nvim-ts-autotag",
    },
    config = function()
      require("nvim-treesitter.configs").setup({
        autotag = {
          enable = true,
        },
        -- Opcional: define los lenguajes para los que quieres habilitar Treesitter
        ensure_installed = { "html", "javascript", "typescript", "tsx", "lua", "python" },
        highlight = {
          enable = true,
        },
      })
    end,
  },
}
