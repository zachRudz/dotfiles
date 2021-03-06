" Colors and such
colorscheme desert
syntax enable

" Tabs and such
set shiftwidth=4	" Width of tabs when indenting via >>, <<, or ==
set tabstop=4       " Number visual spaces per TAB
set softtabstop=4   " Number of visual spaces during editing
set autoindent 

" UI things
set number      " Show left-hand column of numbers
set showcmd     " Show last command in bottom right bar
set lazyredraw  " Only redraw the screen when neede3d
set showmatch   " Highlight matching braces

" Searching
set incsearch   " Search as characters are typed
set hlsearch    " Highlight all the searching

" Movement
" Move vertically by visual line, not by actual line
nnoremap j gj
nnoremap k gk
" Move to beginning/end of line
nnoremap B ^
nnoremap E $
" Remap "jk" to enter command mode
inoremap jk <esc>

" Paste toggle
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" Numbers toggle
noremap <F3> :set invnumber<CR>
inoremap <F3> <C-O>:set invnumber<CR>

nnoremap <F4> :nohl<CR>
