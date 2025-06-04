-- Clipboard
vim.opt.clipboard:append("unnamedplus")

-- UI y colores
vim.opt.termguicolors = true
vim.opt.colorcolumn = "80"

-- Indentación y formato
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

-- Búsqueda
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.hlsearch = false

-- Interfaz
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"

-- Archivo y buffers
vim.opt.hidden = true
vim.opt.path:append("**")
vim.opt.wrap = false
vim.opt.encoding = "UTF-8"

-- Swap y backups
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("cache") .. "/undo"

-- Folding
vim.opt.foldcolumn = "1"
vim.opt.foldmethod = "syntax"
vim.opt.foldlevel = 99
vim.opt.foldenable = true

-- Clipboard
vim.opt.clipboard:append("unnamedplus")

-- UI y colores
vim.opt.termguicolors = true
vim.opt.colorcolumn = "80"
vim.cmd("highlight ColorColumn ctermbg=0 guibg=lightgrey")

-- Indentación y formato
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

-- Búsqueda
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.hlsearch = false

-- Interfaz
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"

-- Archivo y buffers
vim.opt.hidden = true
vim.opt.path:append("**")
vim.opt.wrap = false
vim.opt.encoding = "UTF-8"

-- Swap y backups
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("cache") .. "/undo"

-- Folding
vim.opt.foldcolumn = "1"
vim.opt.foldlevel = 99
vim.opt.foldenable = true

-- Ecoding 
vim.opt.encoding= "utf-8"

-- Tab
vim.opt.showtabline=2

-- Global variant NETDTree

vim.g.NERDSpaceDelims = 1
vim.g.NERDCompactSexyComs = 1
vim.g.NERDDefaultAlign = "left"
vim.g.NERDAltDelims_java = 1
vim.g.NERDCustomDelimiters = { c = { left = "/**", right = "*/" } }
vim.g.NERDCommentEmptyLines = 1
vim.g.NERDTrimTrailingWhitespace = 1
vim.g.NERDToggleCheckAllLines = 1

-- Glboal variant Airline

vim.g["airline#extensions#tabline#enabled"] = 1
-- vim.g["airline#extensions#tabline#left_sep"] = ""
-- vim.g["airline#extensions#tabline#left_alt_sep"] = ""
-- vim.g["airline#extensions#tabline#right_sep"] = ""
-- vim.g["airline#extensions#tabline#right_alt_sep"] = ""

vim.g.airline_powerline_fonts = 1
-- vim.g.airline_left_sep = ""
-- vim.g.airline_right_sep = ""

-- Global variant Python

vim.g.loaded_python_provider = 1
vim.g.python3_host_prog = '/home/{usuario}/.local/share/virtualenvs/{nvim-999999}/bin/python'

vim.g.python_highlight_all = 1
vim.g.python_highlight_builtins = 1
vim.g.python_highlight_builtin_funcs_kwarg = 1
vim.g.python_highlight_exceptions = 1
vim.g.python_highlight_string_formatting = 1
vim.g.python_highlight_string_format = 1
vim.g.python_highlight_string_templates = 1
vim.g.python_highlight_indent_errors = 1
vim.g.python_highlight_space_errors = 1
vim.g.python_highlight_doctests = 1
vim.g.python_highlight_class_vars = 1
vim.g.python_highlight_file_headers_as_comments = 1
vim.g.python_highlight_operators = 1
vim.g.python_highlight_func_calls = 1

-- Global variant Fzf

vim.g.fzf_vim = {}
vim.g.fzf_history_dir = "~/.cache/fzf"

vim.g.fzf_layout = {
  window = {
    width = 0.89,
    height = 0.84
  }
}

vim.env.FZF_DEFAULT_OPTS = "--info=inline --preview-window=bottom:50% --prompt='> '"

