return {
  "nvim-telescope/telescope.nvim",
  requires = { { "nvim-lua/plenary.nvim" } },
  config = function()
    local telescope = require("telescope")

    -- Configuración básica de telescope
    telescope.setup({
      defaults = {
        -- Configuraciones por defecto para todos los pickers de telescope
        mappings = {
          i = {
            ["<C-h>"] = "which_key", -- Muestra las teclas de acceso rápido disponibles
          },
        },
      },
      pickers = {
        -- Configuración para pickers específicos si los necesitas
      },
      extensions = {
        -- Si usas extensiones como fzf, puedes configurarlas aquí
      },
    })

    -- Mapeos globales
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Buscar archivos" })
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Buscar texto" })
    vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Buscar buffers" })
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Buscar ayuda" })
  end,
}
