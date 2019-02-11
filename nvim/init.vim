""""" Pathogen
execute pathogen#infect()

""""""""""""""""""""
""""" Powerline Settings

set guifont=Anonymice\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set termencoding=utf-8

""""""""""""""""""""
""""" fzy
function! FzyCommand(choice_command, vim_command)
  try
    let output = system(a:choice_command . " | fzy ")
  catch /Vim:Interrupt/
    " Swallow errors from ^C, allow redraw! below
  endtry
  redraw!
  if v:shell_error == 0 && !empty(output)
    exec a:vim_command . ' ' . output
  endif
endfunction

nnoremap <leader>e :call FzyCommand("find -type f", ":e")<cr>
nnoremap <leader>v :call FzyCommand("find -type f", ":vs")<cr>
nnoremap <leader>s :call FzyCommand("find -type f", ":sp")<cr>

""""""""""""""""""""
""""" Generic

" colors
syntax enable
set background=dark
colorscheme solarized

" indents
filetype indent on
set ts=4 sw=4
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
"hi IndentGuidesOdd  ctermbg=1
"hi IndentGuidesEven ctermbg=0

set number
set ruler

set cursorline
set showmatch

" folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
nnoremap <space> za
set foldmethod=indent



