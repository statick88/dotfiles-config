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
vim.keymap.set("n", "<leader>r", function()
  local file = vim.fn.expand("%:p") -- Obtiene la ruta del archivo actual
  vim.cmd(":split | term python3 " .. file) -- Abre un terminal y ejecuta el script de Python
end, { noremap = true, silent = true })

-- Atajo para abrir una terminal de forma nativa
vim.keymap.set("n", "<leader>t", ":split | term<CR>", { noremap = true, silent = true })

-- Atajo para Python
vim.keymap.set("n", "<leader>p", function()
  local file = vim.fn.expand("%:p") -- Obtiene la ruta del archivo actual
  vim.cmd(":split | term python3 " .. file) -- Abre un terminal y ejecuta el script de Python
end, { noremap = true, silent = true })

-- Atajo para Typescript
vim.keymap.set("n", "<leader>ts", function()
  local file = vim.fn.expand("%:p") -- Obtiene la ruta del archivo actual
  vim.cmd(":split | term bun dev") -- Abre un terminal y ejecuta el proyecto TypeScript con bun
end, { noremap = true, silent = true })

-- Ejecutar proyecto React con bun, node o deno
vim.keymap.set("n", "<leader>re", function()
  local choice = vim.fn.input("Selecciona el ejecutor (bun/node/deno): ")
  local cmd = ""
  if choice == "bun" then
    cmd = "bun dev"
  elseif choice == "node" then
    cmd = "npm start"
  elseif choice == "deno" then
    cmd = "deno run --allow-net app.ts" -- Asegúrate de usar el archivo correcto si usas Deno
  else
    print("Ejecución no válida.")
    return
  end
  vim.cmd(":split | term " .. cmd) -- Ejecuta el comando en un terminal dividido
end, { noremap = true, silent = true })

--- Atajo para salir de la terminal
vim.keymap.set("n", "<leader>q", function()
  local buf = vim.fn.bufnr() -- Obtiene el número del búfer actual
  local filetype = vim.bo[buf].filetype -- Obtiene el tipo de archivo del búfer actual
  if filetype == "terminal" then
    vim.cmd("bd!" .. buf) -- Cierra el búfer de terminal
  else
    vim.cmd(":q") -- Cierra la ventana de Neovim si no es una terminal
  end
end, { noremap = true, silent = true })
