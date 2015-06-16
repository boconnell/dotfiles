""""""""""""""
" Appearance "
""""""""""""""

" Turn on syntax highlighting - works better with gVim
syntax on

" Show absolute line number of the current line
set number

" Change font colors to be more bold
set background=dark

""""""""""""
" Behavior "
""""""""""""

" use the system clipboard for yank/put/delete/x
set clipboard+=unnamed,unnamedplus

" Highlight the 81st column
if exists('+colorcolumn')
  set colorcolumn=81
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>81v.\+', -1)
endif

""""""""""""""
" Formatting "
""""""""""""""

filetype plugin indent on
set expandtab shiftwidth=2 softtabstop=2 autoindent
set textwidth=80

" Remove trailing whitespace on save
function! <SID>RemoveTrailingWhitespace()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>RemoveTrailingWhitespace()

