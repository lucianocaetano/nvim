-- Crear un grupo de autocomandos
local myGroup = vim.api.nvim_create_augroup("MyAutoCmds", { clear = true })

-- Mapear <Leader>u para insertar "use" en PHP
vim.api.nvim_create_autocmd("FileType", {
  pattern = "php",
  callback = function()
    vim.api.nvim_buf_set_keymap(0, "i", "<Leader>u", "<Esc>:call IPhpInsertUse()<CR>", { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(0, "n", "<Leader>u", ":call PhpInsertUse()<CR>", { noremap = true, silent = true })
  end,
  group = myGroup
})

-- Mapear <Leader>s para ordenar los "use" en PHP
vim.api.nvim_create_autocmd("FileType", {
  pattern = "php",
  callback = function()
    vim.api.nvim_buf_set_keymap(0, "i", "<Leader>s", "<Esc>:call PhpSortUse()<CR>", { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(0, "n", "<Leader>s", ":call PhpSortUse()<CR>", { noremap = true, silent = true })
  end,
  group = myGroup
})

-- Configurar la indentación en Vue, JS, TSX y JSX
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { "*.vue", "*.js", "*.tsx", "*.jsx" },
  command = "setlocal shiftwidth=2 softtabstop=2",
  group = myGroup
})

-- Configurar la indentación en PHP y Python
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { "*.php", "*.py" },
  command = "setlocal shiftwidth=4 softtabstop=4",
  group = myGroup
})

-- Resaltar símbolos en la posición del cursor con Coc.nvim
vim.api.nvim_create_autocmd("CursorHold", {
  pattern = "*",
  command = "silent call CocActionAsync('highlight')",
  group = myGroup
})
