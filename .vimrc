syntax on
set regexpengine=0        " Syntax highlight shouldn't brick typescript

set number
set ruler                 " Show the line number and column in the status bar
set backspace=2           " Makes backspace behave like you'd expect
" set colorcolumn=80        " Highlight 80 character limit
set showmode              " Show the current mode on the open buffer
set title
set list                  " Show invisible characters
set listchars=tab:›\ ,eol:¬,trail:⋅ "Set the characters for the invisibles

set nobackup
set tabstop=2

set grepprg=rg\ --vimgrep

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

inoremap jk <Esc>
inoremap kj <Esc>
inoremap jj <Esc>
inoremap kk <Esc>
