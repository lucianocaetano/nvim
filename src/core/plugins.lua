-- Instala lazy.nvim automáticamente si no está instalado
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Cargar plugins con lazy.nvim
require("lazy").setup({
  -- Herramientas generales
  { "godlygeek/tabular" },
  { "preservim/vim-markdown" },
  { "David-Kunz/gen.nvim" },
  { "Exafunction/codeium.vim" },
  { "lukas-reineke/indent-blankline.nvim" },
  { "nvim-lua/plenary.nvim" },
  { "tpope/vim-fugitive" },
  { "mfussenegger/nvim-dap" },
  
  -- Temas / Colores
  { "Mofiqul/dracula.nvim" },
  { "morhetz/gruvbox" },
  { "catppuccin/nvim", name = "catppuccin" },
  { "olivercederborg/poimandres.nvim" },
  { "rose-pine/neovim", name = "rose-pine" },
  { "dgox16/oldworld.nvim" },
  { "sainnhe/sonokai" },
  { "folke/tokyonight.nvim", lazy = false, priority = 1000 },
  { "shaunsingh/nord.nvim" },
  { "folke/lsp-colors.nvim" },

  -- Soporte de sintaxis y lenguajes
  { "sheerun/vim-polyglot" },
  { "arnaud-lb/vim-php-namespace" },
  { "yaegassy/coc-htmldjango" },
  { "posva/vim-vue" },
  { "vim-python/python-syntax" },
  { "prisma/vim-prisma" },

  -- Plugins para completar código
  { "codota/tabnine-nvim", build = "./dl_binaries.sh" },
  { "neoclide/coc-snippets" },
  { "robhudson/snipmate_for_django" },
  { "neoclide/coc-java", build = "yarn install --frozen-lockfile" },
  { "neoclide/coc.nvim", branch = "release" },

  -- Formateadores y autoformato
  { 
    'sbdchd/neoformat',
    event = { "BufWritePre" }
  },

  -- Explorador de archivos y UI
  { "preservim/nerdtree" },
  { "ryanoasis/vim-devicons" },

  -- Herramientas de búsqueda y selección
  { "junegunn/fzf", build = function() vim.fn["fzf#install"]() end },
  { "junegunn/fzf.vim" },
  { "nvim-telescope/telescope.nvim", build = ":UpdateRemotePlugins" },
  { "nvim-telescope/telescope-ui-select.nvim" },

  -- Otras utilidades
  { "tpope/vim-surround" },
  { "vim-airline/vim-airline" },
  { "vim-airline/vim-airline-themes" },
  { "preservim/nerdcommenter" },
  -- nvim v0.7.2
  {
      "kdheepak/lazygit.nvim",
      -- optional for floating window border decoration
      requires = {
          "nvim-lua/plenary.nvim",
      },
  }
})

require("setup")
