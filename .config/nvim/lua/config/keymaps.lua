-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

-- Configurar atajo para iniciar LiveServer
vim.keymap.set("n", "<leader>ls", ":LiveServerStart<CR>", { noremap = true, silent = true })

-- Asigna un atajo para ejecutar `quarto publish gh-pages` con confirmación automática
vim.keymap.set("n", "<leader>qpg", function()
  vim.cmd(":split | term quarto publish gh-pages") -- Ejecuta el comando
end, { noremap = true, silent = true })

-- Configurar atajo para iniciar QuartoPreview
vim.keymap.set("n", "<leader>qp", ":QuartoPreview<CR>", { noremap = true, silent = true })

-- Configurar atajo para ejecutar un script de Python en el archivo actual
vim.keymap.set("n", "<leader>rp", function()
  local file = vim.fn.expand("%:p") -- Obtiene la ruta del archivo actual
  vim.cmd(":split | term python3 " .. file) -- Abre un terminal y ejecuta el script de Python
end, { noremap = true, silent = true })
