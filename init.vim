set encoding=utf-8
syntax enable
set autoindent
set showcmd
set hlsearch
set cmdheight=1
set scrolloff=10
set title  " Muestra el nombre del archivo en la ventana de la terminal
set number  " Muestra los números de las líneas
set relativenumber
set mouse=a  " Permite la integración del mouse (seleccionar texto, mover el cursor

set nowrap  " No dividir la línea si es muy larga
set lazyredraw
set ignorecase
set smarttab
set ai
set si
set path+=**

set cursorline  " Resalta la línea actual

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Indentación a 2 espacios
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab  " Insertar espacios en lugar de <Tab>s

set hidden  " Permitir cambiar de buffers sin tener que guardarlos

set ignorecase  " Ignorar mayúsculas al hacer una búsqueda
set smartcase  " No ignorar mayúsculas si la palabra a buscar contiene mayúsculas

set spelllang=en,es  " Corregir palabras usando diccionarios en inglés y español

let g:mapleader = ' '  " Definir espacio como la tecla líder

nnoremap <leader>w :w<CR>  
nnoremap <leader>q :q<CR> 
:imap ii <Esc>
nnoremap <leader>ff <cmd>Telescope file_browser<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

call plug#begin()

Plug 'sheerun/vim-polyglot'

Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

Plug 'ntk148v/vim-horizon'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  "
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'hoob3rt/lualine.nvim'
Plug 'kristijanhusak/defx-git'
Plug 'kristijanhusak/defx-icons'
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'neovim/nvim-lspconfig'
Plug 'tami5/lspsaga.nvim', { 'branch': 'nvim51' }
Plug 'folke/lsp-colors.nvim'
Plug 'L3MON4D3/LuaSnip'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'kyazdani42/nvim-web-devicons'
Plug 'onsails/lspkind-nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'windwp/nvim-autopairs'

call plug#end()

set termguicolors

colorscheme horizon

let g:lightline = {'colorscheme' : 'horizon'}

