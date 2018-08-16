set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

" User defined options

set number
set autoindent
set shiftwidth=2
set softtabstop=2
colorscheme koehler
set smartindent

" allow yanking of more than 50 lines
set viminfo='20,<5000,s10,h

set nolinebreak
set nolist " list disables linebreak
set wrapmargin=0
"set expandtab
set tabstop=4
set textwidth=80

" Prevent linebreaks while typing
set formatoptions+=1

" Display tabs with a ">" at the beginning and "-"'s for the rest of the
" tabwidth.
set list
set listchars=tab:>-

" Don't create *~ files
set nobackup
set nowritebackup

"autocmd FileType cpp setlocal shiftwidth=4 tabstop=4 textwidth=80
autocmd FileType f   setlocal shiftwidth=2 tabstop=2 softtabstop=2 textwidth=72
autocmd FileType f90 setlocal shiftwidth=4 tabstop=4 textwidth=80
