let g:python3_host_prog ="/data/data/com.termux/files/usr/bin/python"
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup

set number
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a
set encoding=UTF-8
set smartindent

call plug#begin('~/.config/nvim/autoload')

  Plug 'vim-airline/vim-airline'
  Plug 'tpope/vim-surround'
  Plug 'majutsushi/tagbar'
  Plug 'scrooloose/nerdtree'
  Plug 'ryanoasis/vim-devicons'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'morhetz/gruvbox'
  Plug 'tpope/vim-commentary'
  "Plug 'tpope/vim-surround'
  Plug 'ap/vim-css-color'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'weirongxu/coc-explorer'
  Plug 'neoclide/coc-json'

  Plug 'terryma/vim-multiple-cursors'
  Plug 'jiangmiao/auto-pairs'
  Plug 'udalov/kotlin-vim'

call plug#end()

"tagbar keybindings
nmap <F8> :TagbarToggle<CR>

"nerdtree keybindings
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"Airline theme
let g:airline_theme='badwolf'
let g:airline_powerline_fonts = 1

"Gruvbox color scheme
let g:gruvbox_contrast_dark='hard'
autocmd vimenter * ++nested colorscheme gruvbox

"keymap to compile and run c code
nnoremap <F5> :w<CR>:!gcc % && ./a.out<CR>

"code completion keybinding
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

"coc-explorer
:nmap <space>e <Cmd>CocCommand explorer<CR>
