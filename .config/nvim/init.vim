call plug#begin('~/.vim/plugged')
Plug 'https://github.com/morhetz/gruvbox.git'
Plug 'https://github.com/cloudhead/neovim-fuzzy.git'
Plug 'https://github.com/octol/vim-cpp-enhanced-highlight.git'
"Plug 'neoclide/coc.nvim'
"Plug 'https://github.com/jiangmiao/auto-pairs.git'
Plug 'https://github.com/co1ncidence/gunmetal.vim.git'
Plug 'co1ncidence/bliss'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'arcticicestudio/nord-vim'
Plug 'https://github.com/cooper-anderson/glowbeam.nvim'
call plug#end()

set tabstop=4
set shiftwidth=4
set expandtab
"au VimEnter * vsplit

nnoremap <C-p> :FuzzyOpen<CR>
nnoremap <C-L> <C-W>w
nnoremap <C-s> :w<CR>
nmap <silent> gd <Plug>(coc-definition)

command Build :!make -C build
nnoremap <C-b> :Build<CR>

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1

set termguicolors
set relativenumber
set number
set cursorline

let g:airline_theme='base16'

colorscheme gruvbox

set guifont=Source\ Code\ Pro:h17
"set guifont=Inconsolata:h20

au BufNewFile,BufRead,BufReadPost *.asm set ft=nasm

nnoremap <C-b> :!./build.sh <CR>
nnoremap <C-x> :!./run.sh <CR>


