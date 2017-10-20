" Colors and such
colorscheme desert
syntax enable

" Tabs and such
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
nnoremap j gj       " Move vertically by visual line, not by actual line
nnoremap k gk
nnoremap B ^        " Move to beginning/end of line
nnoremap E $
inoremap jk <esc> " Remap "jk" to enter command mode
