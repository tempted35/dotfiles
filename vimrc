call pathogen#infect()
syntax on
filetype plugin indent on

set background=dark
set autoindent
set expandtab
set shiftwidth=2 
set tabstop=2
set number
set pastetoggle=<F2>
set hlsearch
hi search guibg=Yellow
set dictionary=/usr/share/dict/words

set colorcolumn=90 
highlight ColorColumn ctermbg=darkgray 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" autocmd
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>

autocmd Filetype java set makeprg=javac\ *.java
set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
map <F9> :make<Return>:copen<Return>
map <F7> :cprevious<Return>
map <F8> :cnext<Return>

"set colorcolumn=100
"highlight ColorColumn ctermbg=darkgray

syntax enable
"let g:solarized_termcolors=256
"set background=dark
colorscheme molokai


"Bundle 'jedi-vim'
let g:jedi#auto_vim_configuration = 1
let g:jedi#completions_enabled=1

let $PYTHONPATH = "/usr/bin/anaconda/pkges"

au BufReadPost *.twig colorscheme koehler 
au BufReadPost *.css colorscheme slate
au BufReadPost *.js colorscheme slate2
au BufReadPost *.py colorscheme molokaiyo
au BufReadPost *.html colorscheme monokai
au BufReadPost *.java colorscheme monokai
" au BufReadPost *.php colorscheme monokai

" Default line highlighting for unknown filetypes
hi String ctermfg=140
hi CursorLine ctermbg=235
hi CursorLine guibg=#D3D3D3 cterm=none

autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif
