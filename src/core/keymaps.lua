local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true, expr = true }
local silent_opts = { noremap = true, silent = true }

-- Codeium Accept
map("i", "<CR>", "v:lua.vim.fn['codeium#Accept']()", opts)

-- Tab para navegación en autocompletado de CoC
map("i", "<TAB>", "v:lua.vim.fn or v:lua.CheckBackspace() and '<Tab>' or v:lua.vim.fn['coc#refresh']()", opts)
map("i", "<S-TAB>", "v:lua.vim.fn or '<C-h>'", opts)

-- Aceptar autocompletado de CoC con Enter

vim.api.nvim_set_keymap("i", "<CR>", [[coc#pum#visible() ? coc#pum#confirm() : "<CR>"]], { noremap = true, silent = true, expr = true })
-- Renombrar símbolos
map("n", "<leader>rn", "<Plug>(coc-rename)", silent_opts)

-- Activar autocompletado manualmente
map("i", "<C-Space>", "v:lua.vim.fn['coc#refresh']()", opts)

-- Navegar errores
map("n", "[g", "<Plug>(coc-diagnostic-prev)", silent_opts)
map("n", "]g", "<Plug>(coc-diagnostic-next)", silent_opts)

-- Navegación en código
map("n", "gd", "<Plug>(coc-definition)", silent_opts)
map("n", "gy", "<Plug>(coc-type-definition)", silent_opts)
map("n", "gi", "<Plug>(coc-implementation)", silent_opts)
map("n", "gr", "<Plug>(coc-references)", silent_opts)

-- Formatear código
map("x", "<leader>f", "<Plug>(coc-format-selected)", silent_opts)
map("n", "<leader>f", "<Plug>(coc-format-selected)", silent_opts)

-- Acciones rápidas
map("x", "<leader>a", "<Plug>(coc-codeaction-selected)", silent_opts)
map("n", "<leader>a", "<Plug>(coc-codeaction-selected)", silent_opts)

-- Acciones rápidas avanzadas
map("n", "<leader>ac", "<Plug>(coc-codeaction-cursor)", silent_opts)
map("n", "<leader>as", "<Plug>(coc-codeaction-source)", silent_opts)
map("n", "<leader>qf", "<Plug>(coc-fix-current)", silent_opts)

-- Refactorización
map("n", "<leader>re", "<Plug>(coc-codeaction-refactor)", silent_opts)
map("x", "<leader>r", "<Plug>(coc-codeaction-refactor-selected)", silent_opts)
map("n", "<leader>r", "<Plug>(coc-codeaction-refactor-selected)", silent_opts)

-- Code Lens
map("n", "<leader>cl", "<Plug>(coc-codelens-action)", silent_opts)

-- Objetos de función y clase
map("x", "if", "<Plug>(coc-funcobj-i)", silent_opts)
map("o", "if", "<Plug>(coc-funcobj-i)", silent_opts)
map("x", "af", "<Plug>(coc-funcobj-a)", silent_opts)
map("o", "af", "<Plug>(coc-funcobj-a)", silent_opts)
map("x", "ic", "<Plug>(coc-classobj-i)", silent_opts)
map("o", "ic", "<Plug>(coc-classobj-i)", silent_opts)
map("x", "ac", "<Plug>(coc-classobj-a)", silent_opts)
map("o", "ac", "<Plug>(coc-classobj-a)", silent_opts)

-- Scroll en ventanas flotantes de CoC
map("n", "<C-f>", "v:lua.vim.fn or '<C-f>'", opts)
map("n", "<C-b>", "v:lua.vim.fn or '<C-b>'", opts)
map("i", "<C-f>", "v:lua.vim.fn<CR>' or '<Right>'", opts)
map("i", "<C-b>", "v:lua.vim.fn<CR>' or '<Left>'", opts)
map("x", "<C-f>", "v:lua.vim.fn or '<C-f>'", opts)
map("x", "<C-b>", "v:lua.vim.fn or '<C-b>'", opts)

-- Selección de rango en CoC
map("n", "<C-s>", "<Plug>(coc-range-select)", silent_opts)
map("x", "<C-s>", "<Plug>(coc-range-select)", silent_opts)

-- Listas de CoC
map("n", "<space>a", ":<C-u>CocList diagnostics<CR>", silent_opts)
map("n", "<space>e", ":<C-u>CocList extensions<CR>", silent_opts)
map("n", "<space>c", ":<C-u>CocList commands<CR>", silent_opts)
map("n", "<space>o", ":<C-u>CocList outline<CR>", silent_opts)
map("n", "<space>s", ":<C-u>CocList -I symbols<CR>", silent_opts)
map("n", "<space>j", ":<C-u>CocNext<CR>", silent_opts)
map("n", "<space>k", ":<C-u>CocPrev<CR>", silent_opts)
map("n", "<space>p", ":<C-u>CocListResume<CR>", silent_opts)

-- Mapeos de teclas para cambiar buffers y formatear
map("n", "<F2>", ":NERDTreeToggle<CR>", silent_opts)
map("n", "<F3>", ":bprevious<CR>", silent_opts)
map("n", "<F4>", ":bnext<CR>", silent_opts)
map("n", "<F5>", ":bdelete<CR>", silent_opts)
map("n", "<F1>", ":Neoformat<CR>", silent_opts)
