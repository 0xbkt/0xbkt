set number
set termguicolors
set signcolumn=yes
set smartindent
set autoindent
set hidden
set cursorline
set updatetime=100
set cmdheight=2
set shortmess+=c

let mapleader=','
let ayucolor='mirage'
" let &fcs='eob: '

let g:coc_global_extensions=['coc-tsserver', 'coc-json', 'coc-prettier', 'coc-pairs']

let g:airline#extensions#tabline#enabled=1

call plug#begin()
Plug 'ayu-theme/ayu-vim'
Plug 'airblade/vim-gitgutter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
call plug#end()

colorscheme ayu

autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 smarttab expandtab
" autocmd FileType javascript,json nnoremap <Leader>f :CocCommand prettier.formatFile<CR>

noremap  <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>ec :edit $MYVIMRC<CR>
nnoremap <Leader>f :call CocActionAsync('format')<CR>
nnoremap <Leader>b :ls<CR>:b<Space>
nnoremap <Leader>d :call CocActionAsync('doHover')<CR>

tnoremap <Esc> <C-\><C-n>

hi clear SignColumn
